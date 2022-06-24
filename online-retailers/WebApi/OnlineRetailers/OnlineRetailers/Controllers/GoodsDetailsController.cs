using OnlineRetailers.Models;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class GoodsDetailsController : ApiController
    {
        /// <summary>
        /// 查询单个商品详细信息
        /// </summary>
        /// <param name="GoodsID">商品ID</param>
        /// <returns>返回商品详细信息</returns>
        public HttpResponseMessage GetGoodsDetails(int GoodsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select GoodsID, GoodsTitle, Goods.GoodsKeyWord, TypeId, Store.StoreID, StoreName, StoreRegion, GoodsAttribute, GoodsImg, GoodsPrice, GoodsStock, GoodsSales from Goods left join Store on Goods.StoreID = Store.StoreID where Goods.GoodsID = {0}", GoodsID);
                List<GetGoodsDetails> list = db.Database.SqlQuery<GetGoodsDetails>(sql).ToList();
                return new HttpResponseMessage { Content = new StringContent(new JavaScriptSerializer().Serialize(list[0]), Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 获取用户配送地
        /// </summary>
        /// <param name="UserID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetUserRegion(int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select RegionID, Province, City from UserRegion where UserID = {0} order by IsDefault desc", UserID);
                List<UserDistribution> list = db.Database.SqlQuery<UserDistribution>(sql).ToList();
                return new HttpResponseMessage { Content = new StringContent(new JavaScriptSerializer().Serialize(list), Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 添加用户喜好关键词
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.keyWord">关键词</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage InsertUserKeyWord(dynamic para)
        {
            string JSON = "";
            string userID = para.userID;
            string keyWord = para.keyWord;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string keyWords = "";
                string getKeyWord = string.Format(@"select KeyWork from RecommendType where UserID = {0}", userID);
                List<GetKeyWord> keyWordList = db.Database.SqlQuery<GetKeyWord>(getKeyWord).ToList();
                if (keyWordList.Count == 0)
                {
                    string insertKeyWord = string.Format(@"insert into RecommendType(UserID, KeyWork) values({0}, '{1}')", userID, keyWord + "，");
                    if (db.Database.ExecuteSqlCommand(insertKeyWord) > 0)
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
                    keyWords = keyWordList[0].KeyWork + keyWord + "，";
                    string upDateKeyWord = string.Format(@"update RecommendType set KeyWork = '{0}' where UserID = {1}", keyWords, userID);
                    if (db.Database.ExecuteSqlCommand(upDateKeyWord) > 0)
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
    }
}