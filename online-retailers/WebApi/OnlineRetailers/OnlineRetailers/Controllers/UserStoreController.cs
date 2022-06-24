using OnlineRetailers.Models;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class UserStoreController : ApiController
    {
        /// <summary>
        /// 获取店铺列表
        /// </summary>
        /// <returns>成功：返回店铺列表 || 失败（false）</returns>
        [HttpGet]
        public HttpResponseMessage GetStore()
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = "select StoreID, StoreName, StoreImg, StoreScore, StoreRegion from Store";
                List<GetStore> list = db.Database.SqlQuery<GetStore>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 获取销量最高的七个商品
        /// </summary>
        /// <param name="StoreID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage MaxSalesGoods(string StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select top 7 GoodsID, GoodsImg, GoodsPrice, GoodsSales from Store left join Goods on Goods.StoreID = Store.StoreID where Store.StoreID = {0} order by GoodsSales desc", StoreID);
                List<GetMaxSalesGoods> list = db.Database.SqlQuery<GetMaxSalesGoods>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 根据店铺ID，获取店铺详情
        /// </summary>
        /// <param name="StoreID">店铺ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage StoreDetails(string StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select StoreID, StoreName, StoreDetails, StoreImg, StoreRegion, StoreScore from Store where StoreID = {0}", StoreID);
                List<GetStoreDetails> list = db.Database.SqlQuery<GetStoreDetails>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 获取店铺商品的类型
        /// </summary>
        /// <param name="StoreID">店铺ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetTypeName(string StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select Goods.TypeId, TypeName from Goods left join ProductType on Goods.TypeId = ProductType.TypeId where StoreID = {0} group by TypeName, Goods.TypeId", StoreID);
                List<GetTypeName> list = db.Database.SqlQuery<GetTypeName>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 获取店铺销量最高的商品
        /// </summary>
        /// <param name="StoreID">店铺ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GoodsMax(string StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID, GoodsImg, GoodsTitle, GoodsPrice, GoodsSales, GoodsStock from Store left join Goods on Goods.StoreID = Store.StoreID where Store.StoreID = {0} order by GoodsSales desc", StoreID);
                List<GetGoodsMax> list = db.Database.SqlQuery<GetGoodsMax>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 根据类型ID获取商品
        /// </summary>
        /// <param name="para.storeID">店铺ID</param>
        /// <param name="para.typeId">类型ID</param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage GoodsForTypeId(dynamic para)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID, GoodsImg, GoodsTitle, GoodsPrice, GoodsSales, GoodsStock from Store left join Goods on Goods.StoreID = Store.StoreID where Store.StoreID = {0} and Goods.TypeId = {1} order by GoodsSales desc", para.storeID, para.typeId);
                List<GetGoodsMax> list = db.Database.SqlQuery<GetGoodsMax>(sql).ToList();
                string JSON;
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 修改店铺评分
        /// </summary>
        /// <param name="para.score">评分</param>
        /// <param name="para.storeID">店铺ID</param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage UpdateScore(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"update Store set StoreScore = {0} where StoreID = {1}", para.score, para.storeID);
                if (db.Database.ExecuteSqlCommand(sql) > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(true);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }
    }

    public class GetTypeName
    {
        public int TypeId { get; set; }
        public string TypeName { get; set; }
    }
}