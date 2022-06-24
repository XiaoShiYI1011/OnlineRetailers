using OnlineRetailers.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class GoodsMangerController : ApiController
    {
        /// <summary>
        /// 查询店家所属所有商品信息
        /// </summary>
        /// <param name="BusinessID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetGoodsList(int BusinessID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID,GoodsImg,GoodsPrice,GoodsTitle,StoreName,Goods.TypeId,TypeName,GoodsSales,GoodsStock,BusinessName
                                         from Goods, Business, ProductType, Store
                                         where Goods.TypeId = ProductType.TypeId
                                         and Goods.StoreID = Store.StoreID
                                         and Store.BusinessID = Business.BusinessID
                                         and Business.BusinessID = {0}", BusinessID);

                List<goods> list = db.Database.SqlQuery<goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }
        /// <summary>
        /// 查询出指定商品信息
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetGoods(int GoodsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID,GoodsImg,GoodsPrice,GoodsTitle,StoreName,Goods.TypeId,TypeName,GoodsSales,GoodsStatu,GoodsStock,BusinessName,GoodsAttribute,GoodsKeyWord
                                         from Goods, Business, ProductType, Store
                                         where Goods.TypeId = ProductType.TypeId
                                         and Goods.StoreID = Store.StoreID
                                         and Store.BusinessID = Business.BusinessID
                                         and Goods.GoodsID = {0}", GoodsID);
                List<goods> list = db.Database.SqlQuery<goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list[0]);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 添加商品
        /// </summary>
        /// <param name="Goods"></param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage AddGoods(dynamic Goods)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"insert into Goods(GoodsImg,GoodsKeyWord,GoodsPrice,GoodsTitle,StoreID,TypeId,GoodsStock,GoodsAttribute,GoodsSales)
                                                        values('{0}','{1}',{2},'{3}',{4},{5},{6},'{7}',0)",
                                                        Goods.GoodsImg, Goods.GoodsKeyWord, Goods.GoodsPrice, Goods.GoodsTitle, Goods.StoreID, Goods.TypeId
                                                        , Goods.GoodsStock, Goods.GoodsAttribute);
                    db.Database.ExecuteSqlCommand(sql);
                    string JOSN = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JOSN = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
            }
        }

        /// <summary>
        /// 修改商品
        /// </summary>
        /// <param name="Goods"></param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage UpdateGoods(dynamic Goods)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"update Goods set GoodsImg='{0}',GoodsKeyWord='{1}',GoodsPrice={2}
                                                 ,GoodsTitle='{3}',TypeId={4},GoodsStock={5},GoodsAttribute='{6}'where GoodsID={7}",
                                                        Goods.GoodsImg, Goods.GoodsKeyWord, Goods.GoodsPrice, Goods.GoodsTitle, Goods.TypeId
                                                        , Goods.GoodsStock, Goods.GoodsAttribute, Goods.GoodsID);
                    db.Database.ExecuteSqlCommand(sql);
                    string JOSN = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JOSN = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
            }
        }

        /// <summary>
        /// 查询商品类别
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetTypeList()
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = "select * from ProductType";
                List<ProductType> list = db.Database.SqlQuery<ProductType>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 删除指定商品
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage DeleteGoods(int GoodsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format("delete Comment where Comment.GoodsID={0}", GoodsID);
                    string sql1 = string.Format("delete Goods where GoodsID={0}", GoodsID);
                    db.Database.ExecuteSqlCommand(sql);
                    db.Database.ExecuteSqlCommand(sql1);
                    string JOSN = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JOSN = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
            }
        }
        /// <summary>
        /// 条件查询筛选
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetGoodsList(int BusinessID,int TypeId,string GoodsName)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID,GoodsImg,GoodsPrice,GoodsTitle,StoreName,Goods.TypeId,TypeName,GoodsSales,GoodsStatu,GoodsStock,BusinessName
                                         from Goods, Business, ProductType, Store
                                         where Goods.TypeId = ProductType.TypeId
                                         and Goods.StoreID = Store.StoreID
                                         and Store.BusinessID = Business.BusinessID
                                         and Business.BusinessID = {0}
										 and Goods.TypeId={1}
										 and GoodsTitle like '%{2}%'", BusinessID, TypeId, GoodsName);
                List<goods> list = db.Database.SqlQuery<goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 条件查询筛选
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetGoodsList(int BusinessID, int TypeId)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID,GoodsImg,GoodsPrice,GoodsTitle,StoreName,Goods.TypeId,TypeName,GoodsSales,GoodsStatu,GoodsStock,BusinessName
                                         from Goods, Business, ProductType, Store
                                         where Goods.TypeId = ProductType.TypeId
                                         and Goods.StoreID = Store.StoreID
                                         and Store.BusinessID = Business.BusinessID
                                         and Business.BusinessID = {0}
										 and Goods.TypeId={1}", BusinessID, TypeId);
                List<goods> list = db.Database.SqlQuery<goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 条件查询筛选
        /// </summary>
        /// <param name="GooodsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetGoodsList(int BusinessID, string GoodsName)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID,GoodsImg,GoodsPrice,GoodsTitle,StoreName,Goods.TypeId,TypeName,GoodsSales,GoodsStatu,GoodsStock,BusinessName
                                         from Goods, Business, ProductType, Store
                                         where Goods.TypeId = ProductType.TypeId
                                         and Goods.StoreID = Store.StoreID
                                         and Store.BusinessID = Business.BusinessID
                                         and Business.BusinessID = {0}
										 and GoodsTitle like '%{1}%'", BusinessID, GoodsName);
                List<goods> list = db.Database.SqlQuery<goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }


        /// <summary>
        /// 查询出店铺列表
        /// </summary>
        /// <param name="BusinessID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage StoreList(int BusinessID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select StoreName,StoreID
                                         from Business, Store
                                         where Store.BusinessID = Business.BusinessID
                                         and Business.BusinessID = {0}", BusinessID);
                List<temp> list = db.Database.SqlQuery<temp>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        class temp
        {
            public string StoreName { get; set; }
            public int StoreID { get; set; }
        }
        class goods
        {
            public int TypeId { get; set; }
            public int GoodsID { get; set; }
            public string GoodsAttribute { get; set; }
            public string GoodsKeyWord { get; set; }
            public string BusinessName { get; set; }
            public string GoodsImg { get; set; }
            public decimal GoodsPrice { get; set; }
            public string GoodsTitle { get; set; }
            public string StoreName { get; set; }
            public string TypeName { get; set; }
            public int GoodsSales { get; set; }
            public int GoodsStock { get; set; }
        }
    }
}