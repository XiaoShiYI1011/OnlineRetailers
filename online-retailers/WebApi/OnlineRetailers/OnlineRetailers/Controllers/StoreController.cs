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
    public class StoreController : ApiController
    {
        /// <summary>
        /// 添加店铺
        /// </summary>
        /// <param name="store"></param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage AddStote(dynamic store)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string JOSN = "";
                try
                {
                    string sql = string.Format("insert into Store(StoreName,StoreDetails,StoreImg,StoreRegion,BusinessID,StoreScore) values('{0}','{1}','{2}','{3}',{4},5)",
                                         store.StoreName, store.StoreDetails,store.StoreImg, store.StoreRegion, store.BusinessID);
                    db.Database.ExecuteSqlCommand(sql);
                    JOSN = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    JOSN = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
            }
        }

        /// <summary>
        /// 查询所有店铺
        /// </summary>
        /// <param name="BusinessID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage StoteList(int BusinessID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                List<Store> list = db.Database.SqlQuery<Store>(string.Format("select * from Store where BusinessID={0}", BusinessID)).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 查询单个店铺
        /// </summary>
        /// <param name="StoreID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetStote(int StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                List<Store> list = db.Database.SqlQuery<Store>(string.Format("select * from Store where StoreID={0}", StoreID)).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list[0]);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 删除店铺
        /// </summary>
        /// <param name="StoreID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage DeleteStote(int StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    db.Database.ExecuteSqlCommand("delete Goods where StoreID={0}", StoreID);
                    db.Database.ExecuteSqlCommand("delete Store where StoreID={0}", StoreID);
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
        /// 修改店铺信息
        /// </summary>
        /// <param name="store"></param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage UpDateStote(dynamic store)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string JOSN = "";
                try
                {
                    string sql = string.Format("update Store set StoreName='{0}',StoreDetails='{1}',StoreImg='{2}',StoreRegion='{3}' where StoreID={4}",
                                         store.StoreName, store.StoreDetails, store.StoreImg, store.StoreRegion, store.StoreID);
                    db.Database.ExecuteSqlCommand(sql);
                    JOSN = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    JOSN = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
                }
            }
        }
    }
}