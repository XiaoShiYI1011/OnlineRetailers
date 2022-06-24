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
    public class MessagesController : ApiController
    {
        class Merchants {
            public int BusinessID { get; set; }
            public string BusinessImg { get; set; }
            public string BusinessAccount { get; set; }
        }
        class User
        {
            public int UserID { get; set; }
            public string UserImg { get; set; }
            public string UserAccount { get; set; }
        }
        //请求商家信息
        [HttpGet]
        public HttpResponseMessage GetMerchants(int StoreID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select Business.BusinessID BusinessID,BusinessImg,BusinessAccount from Business
                                           where Business.BusinessID=(select BusinessID from Store where StoreID={0})", StoreID);
                    var list = db.Database.SqlQuery<Merchants>(sql).ToList();
                    string JSON = new JavaScriptSerializer().Serialize(list[0]);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                
            }
        }


        //请求全部商家信息
        [HttpGet]
        public HttpResponseMessage GetMerchantsInfo(int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select Business.BusinessID BusinessID,BusinessImg,BusinessAccount
from Business where BusinessID=ANY(select DISTINCT BusinessID from Messages where UserID={0})", UserID);
                    var list = db.Database.SqlQuery<Merchants>(sql).ToList();
                    string JSON = new JavaScriptSerializer().Serialize(list);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }

            }
        }

        //请求全部用户信息
        [HttpGet]
        public HttpResponseMessage GetUsersInfo(int MerchantsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select UserID,UserAccount,UserImg from UserInfo
where UserID = ANY(select DISTINCT UserID from Messages where BusinessID={0})", MerchantsID);
                    var list = db.Database.SqlQuery<User>(sql).ToList();
                    string JSON = new JavaScriptSerializer().Serialize(list);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }

            }
        }

        //用户查询聊天记录
        [HttpGet]
        public HttpResponseMessage GetMessages(int StoreID,int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select * from Messages 
                                            where UserID={0} and BusinessID={1}", UserID, StoreID);
                    var list = db.Database.SqlQuery<Messages>(sql).ToList();
                    string JSON = new JavaScriptSerializer().Serialize(list);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
            }
        }


        //商家查询聊天记录
        [HttpGet]
        public HttpResponseMessage GetMessage(int BusinessID, int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select * from Messages where UserID={0} and BusinessID={1}", UserID, BusinessID);
                    var list = db.Database.SqlQuery<Messages>(sql).ToList();
                    string JSON = new JavaScriptSerializer().Serialize(list);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
            }
        }


        [HttpPost]
        public HttpResponseMessage AddMessages(dynamic Message)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format("select BusinessID from Store where StoreID={0}", Message.StoreID);
                    var BusinessID = db.Database.SqlQuery<int>(sql).ToList()[0];
                    string Sql = null;
                    if (Message.type == "text") {
                         Sql = string.Format("insert into Messages(UserID,BusinessID,MessagesDetails,Stuate,[Type]) values({0},{1},'{2}',{3},'{4}')"
                                                    , Message.UserID, BusinessID, Message.MessagesDetails, Message.Stuate, "text");
                    }
                    else if(Message.type == "image")
                    {
                         Sql = string.Format("insert into Messages(UserID,BusinessID,MessagesDetails,Stuate,[Type]) values({0},{1},'{2}',{3},'{4}')"
                                                                            , Message.UserID, BusinessID, Message.MessagesDetails, Message.Stuate, "image");
                    }
                    
                    db.Database.ExecuteSqlCommand(Sql);
                    string JSON = new JavaScriptSerializer().Serialize(true);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                catch (Exception)
                {
                    string JSON = new JavaScriptSerializer().Serialize(false);
                    return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
                }
                
            }
        }
    }
}