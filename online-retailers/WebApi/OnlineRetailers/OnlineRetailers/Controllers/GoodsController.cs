using OnlineRetailers.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class GoodsController : ApiController
    {
        /// <summary>
        /// 首页商品推荐
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns>如果用户购物车中没有商品，则返回的商品列表完全随机，反之根据购物车中的商品标题或者关键词查询商品，并随机打乱顺序</returns>
        [HttpGet]
        public HttpResponseMessage GoodsRecommend(string userID)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string SelectKeyWork = string.Format(@"select KeyWork from RecommendType where UserID = {0}", userID);
                List<GetKeyWord> GetKeyWordList = db.Database.SqlQuery<GetKeyWord>(SelectKeyWork).ToList();
                if (GetKeyWordList.Count > 0)
                {
                    string keyWords = GetKeyWordList[0].KeyWork;
                    keyWords = keyWords.Substring(0, keyWords.Length - 1);
                    string[] keyWordArr = keyWords.Split('，');
                    keyWordArr = keyWordArr.OrderBy(p => Guid.NewGuid().ToString()).ToArray();
                    List<GetGoodsDetails> list = new List<GetGoodsDetails>();
                    for (int i = 0; i < keyWordArr.Length; i++)
                    {
                        string sql = string.Format(@"select GoodsID, GoodsTitle, GoodsKeyWord, TypeId, Store.StoreID, StoreName, StoreRegion, GoodsAttribute, GoodsImg, GoodsPrice, GoodsStock, GoodsSales from Goods left join Store on Goods.StoreID = Store.StoreID where (GoodsTitle like '%{0}%' or GoodsKeyWord like '%{1}%')", keyWordArr[i], keyWordArr[i]);
                        var data = db.Database.SqlQuery<GetGoodsDetails>(sql).ToList();
                        if (data == null)
                        {
                            continue;
                        }
                        else
                        {
                            foreach (var item in data)
                            {
                                list.Add(item);
                            }
                        }
                    }
                    list = list.Where((x, i) => list.FindIndex(z => z.GoodsID == x.GoodsID) == i).ToList();
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    string selectAll = @"select GoodsID, GoodsTitle, GoodsKeyWord, TypeId, Store.StoreID, StoreName, StoreRegion, GoodsAttribute, GoodsImg, GoodsPrice, GoodsStock, GoodsSales from Goods left join Store on Goods.StoreID = Store.StoreID";
                    List<GetGoodsDetails> list = db.Database.SqlQuery<GetGoodsDetails>(selectAll).ToList();
                    list = list.OrderBy(p => Guid.NewGuid().ToString()).ToList();
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 根据商品类别 ID 查询商品基本信息
        /// </summary>
        /// <param name="TypeID">商品类别ID</param>
        /// <returns>返回商品基本信息</returns>
        [HttpGet]
        public HttpResponseMessage GetGoodsBase(int TypeID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID, GoodsTitle, GoodsImg, GoodsPrice, GoodsStock, GoodsSales, TypeName from Goods left join ProductType on Goods.TypeId = ProductType.TypeId where Goods.TypeId = {0} order by ProductCreateTime desc", TypeID);
                List<GetGoodsBaseInfo> list = db.Database.SqlQuery<GetGoodsBaseInfo>(sql).ToList();
                return new HttpResponseMessage { Content = new StringContent(new JavaScriptSerializer().Serialize(list), Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 获取购物车中商品的最大库存量
        /// </summary>
        /// <param name="GoodsID">商品ID</param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage SelectGoodsStock(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select sum(ProductNum) as ProductNum from ShoppingCart where GoodsID = {0} and UserID = {1}", para.GoodsID, para.userID);
                List<GetGoodsStock> list = db.Database.SqlQuery<GetGoodsStock>(sql).ToList();
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 加入购物车
        /// </summary>
        /// <param name="Goods.goodsID">商品ID</param>
        /// <param name="Goods.selectAttributes">商品属性</param>
        /// <param name="Goods.productNum">添加数量</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage AddCart(dynamic Goods)
        {
            string JSON = "";
            int goodsID = Goods.goodsID;
            int userID = Goods.userID;
            string selectAttributes = Goods.selectAttributes;
            int productNum = Goods.productNum;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.ShoppingCart.FirstOrDefault(s => s.GoodsID == goodsID);
                if (data != null)
                {
                    if (data.SelectAttributes == selectAttributes)
                    {
                        string sql = string.Format(@"update ShoppingCart set ProductNum = (select top 1 ProductNum from ShoppingCart where GoodsID = {0}) + {1} where GoodsID = {2} and UserID = {3}", Goods.goodsID, Goods.productNum, Goods.goodsID, Goods.userID);
                        if (db.Database.ExecuteSqlCommand(sql) > 0)
                        {
                            JSON = new JavaScriptSerializer().Serialize(true);
                        }
                        else
                        {
                            JSON = new JavaScriptSerializer().Serialize(false);
                        }
                    }
                    else
                    {
                        string sql = string.Format(@"insert into ShoppingCart(UserID, GoodsID, SelectAttributes, IsSelect, ProductNum, AddTime) values({0}, {1}, '{2}', 0, {3}, getdate())", Goods.userID, Goods.goodsID, Goods.selectAttributes, Goods.productNum);
                        if (db.Database.ExecuteSqlCommand(sql) > 0)
                        {
                            JSON = new JavaScriptSerializer().Serialize(true);
                        }
                        else
                        {
                            JSON = new JavaScriptSerializer().Serialize(false);
                        }
                    }
                }
                else
                {
                    string sql = string.Format(@"insert into ShoppingCart(UserID, GoodsID, SelectAttributes, IsSelect, ProductNum, AddTime) values({0}, {1}, '{2}', 0, {3}, getdate())", Goods.userID, Goods.goodsID, Goods.selectAttributes, Goods.productNum);
                    if (db.Database.ExecuteSqlCommand(sql) > 0)
                    {
                        JSON = new JavaScriptSerializer().Serialize(true);
                    }
                    else
                    {
                        JSON = new JavaScriptSerializer().Serialize(false);
                    }
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 添加用户足迹
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.goodsID">商品ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage AddFootprint(dynamic para)
        {
            string JSON = "";
            int goodsID = para.goodsID;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.BrowseRecords.FirstOrDefault(b => b.GoodsID == goodsID);
                if (data != null)
                {
                    JSON = new JavaScriptSerializer().Serialize(true);
                }
                else
                {
                    string sql = string.Format(@"insert into BrowseRecords(UserID, GoodsID) values({0}, {1})", para.userID, para.goodsID);
                    if (db.Database.ExecuteSqlCommand(sql) > 0)
                    {
                        JSON = new JavaScriptSerializer().Serialize(true);
                    }
                    else
                    {
                        JSON = new JavaScriptSerializer().Serialize(false);
                    }
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 商品查询
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage SelectGoods(string name)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID, GoodsTitle, GoodsImg, GoodsPrice, GoodsStock, GoodsSales, TypeName 
                                            from Goods left join ProductType on Goods.TypeId = ProductType.TypeId
                                            where GoodsTitle like '%{0}%' or GoodsKeyWord like '%{0}%' or
                                            Goods.TypeId=(select TypeId from ProductType where TypeName like '%{0}%')", name);
                List<GetGoodsBaseInfo> list = db.Database.SqlQuery<GetGoodsBaseInfo>(sql).ToList();
                return new HttpResponseMessage { Content = new StringContent(new JavaScriptSerializer().Serialize(list), Encoding.UTF8, "application/json") };
            }
        }
    }

    public class GetGoodsStock
    {
        public int? ProductNum { get; set; }
    }
}