using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;
using OnlineRetailers.Models;
namespace OnlineRetailers.Controllers
{
    public class GoodsManagementController : ApiController
    {
        [HttpGet]
        public HttpResponseMessage GetGoods(int BusinessID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select StoreName,GoodsImg,GoodsTitle,GoodsPrice,GoodsID,GoodsStock,GoodsStatu
                                        from Goods,ProductType,Store,Business
                                        where Goods.TypeId=ProductType.TypeId
                                        and Goods.StoreID=Store.StoreID
                                        and Store.BusinessID=Business.BusinessID
                                        and Business.BusinessID={0}", BusinessID);
                List<Goods> list = db.Database.SqlQuery<Goods>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage
                {
                    Content = new StringContent(JOSN, Encoding.UTF8, "application/json")
                };
            }
        }
        [HttpGet]
        public HttpResponseMessage DeleteGoods(int GooodsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format("delete Comment where Comment.GoodsID={0}", GooodsID);
                    string sql1 = string.Format("delete Goods where GoodsID={0}", GooodsID);
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

        class Goods
        {
            public string StoreName { get; set; }
            public string GoodsImg { get; set; }
            public string GoodsTitle { get; set; }
            public decimal GoodsPrice { get; set; }
            public int GoodsID { get; set; }
            public int GoodsStock { get; set; }
            public int GoodsStatu { get; set; }
        }
    }
}