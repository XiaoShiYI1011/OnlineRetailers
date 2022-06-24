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
    public class UserOrderController : ApiController
    {
        /// <summary>
        /// 获取购物车中已选中的商品
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage IsSelectGoods(string UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select CartID, ShoppingCart.GoodsID, GoodsTitle, GoodsImg, GoodsPrice, SelectAttributes, ProductNum from ShoppingCart left join Goods on ShoppingCart.GoodsID = Goods.GoodsID where UserID = {0} and IsSelect = 1 and IsOrder = 1", UserID);
                List<GetIsSelectGoods> list = db.Database.SqlQuery<GetIsSelectGoods>(sql).ToList();
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
        /// 获取配送地址
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage Distribution(string UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select RegionID, UserAccount, Phone, DetailedAddress, IsDefault from UserRegion left join UserInfo on UserRegion.UserID = UserInfo.UserID where UserRegion.UserID = {0} order by IsDefault asc", UserID);
                List<GetDistribution> list = db.Database.SqlQuery<GetDistribution>(sql).ToList();
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
        /// 结算购物车商品
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.cartID">购物车ID</param>
        /// <param name="para.goodsID">商品ID</param>
        /// <param name="para.price">总价</param>
        /// <param name="para.productNum">数量</param>
        /// <param name="para.distribution">配送地ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage PlaceOrder(dynamic para)
        {
            string JSON = null;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var tran = db.Database.BeginTransaction();  // 开启事物
                try
                {
                    string insertOrder = string.Format(@"insert into [Order](UserID, CartID, OrderMoney, RegionID, OrderStatus, PaymentStatus) values({0}, {1}, {2}, {3}, 0, 1)", para.userID, para.cartID, para.price, para.distribution);
                    if (db.Database.ExecuteSqlCommand(insertOrder) > 0)
                    {
                        string updateIsOrder = string.Format(@"update ShoppingCart set IsOrder = 0 where CartID = {0}", para.cartID);
                        if (db.Database.ExecuteSqlCommand(updateIsOrder) > 0)
                        {
                            string upDateGoodsSales = string.Format(@"update Goods set GoodsSales = (select GoodsSales from Goods where GoodsID = {0}) + 1, GoodsStock = (select GoodsStock from Goods where GoodsID = {1}) - {2} where GoodsID = {3}", para.goodsID, para.goodsID, para.productNum, para.goodsID);
                            if (db.Database.ExecuteSqlCommand(upDateGoodsSales) > 0)
                            {
                                JSON = new JavaScriptSerializer().Serialize(true);
                                tran.Commit();  // 提交事物
                            }
                            else
                            {
                                JSON = new JavaScriptSerializer().Serialize(false);
                                tran.Rollback();  // 回滚事物
                            }
                        }
                        else
                        {
                            JSON = new JavaScriptSerializer().Serialize(false);
                            tran.Rollback();  // 回滚事物
                        }
                    }
                    else
                    {
                        JSON = new JavaScriptSerializer().Serialize(false);
                        tran.Rollback();  // 回滚事物
                    }
                }
                catch (Exception e)
                {
                    string error = e.Message;
                    JSON = new JavaScriptSerializer().Serialize(false);
                    tran.Rollback();  // 回滚事物
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 获取用户头像和名字
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage UserInfo(string userID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select UserAccount, UserImg from UserInfo where UserID = {0}", userID);
                List<UserBaseInfo> list = db.Database.SqlQuery<UserBaseInfo>(sql).ToList();
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
        /// 获取用户订单信息
        /// </summary>
        /// <param name="para.statusCode">订单状态码</param>
        /// <param name="para.userID">用户ID</param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage OrderInfo(dynamic para)
        {
            int statusCode = para.statusCode;
            string sql = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                if (statusCode == 0)
                {
                    sql = string.Format(@"select Goods.GoodsID, OrderID, GoodsImg, GoodsTitle, SelectAttributes, ProductNum, OrderStatus, OrderMoney, OrderTime, IsCancellation from [Order], ShoppingCart, Goods where [Order].CartID = ShoppingCart.CartID and Goods.GoodsID = ShoppingCart.GoodsID and OrderStatus = 0 and [Order].UserID = {0}", para.userID);
                }
                else if (statusCode == 1)
                {
                    sql = string.Format(@"select Goods.GoodsID, OrderID, GoodsImg, GoodsTitle, SelectAttributes, ProductNum, OrderStatus, OrderMoney, DeliverGoodsTime, IsCancellation from [Order], ShoppingCart, Goods where [Order].CartID = ShoppingCart.CartID and Goods.GoodsID = ShoppingCart.GoodsID and OrderStatus = 1 and [Order].UserID = {0}", para.userID);
                }
                else if (statusCode == 2)
                {
                    sql = string.Format(@"select Goods.GoodsID, OrderID, GoodsImg, GoodsTitle, SelectAttributes, ProductNum, OrderStatus, OrderMoney, ReceivingTime, IsCancellation from [Order], ShoppingCart, Goods where [Order].CartID = ShoppingCart.CartID and Goods.GoodsID = ShoppingCart.GoodsID and OrderStatus = 2 and [Order].UserID = {0}", para.userID);
                }
                else if (statusCode == 3)
                {
                    sql = string.Format(@"select Goods.GoodsID, OrderID, GoodsImg, GoodsTitle, SelectAttributes, ProductNum, OrderStatus, OrderMoney, CancelTime, IsCancellation from [Order], ShoppingCart, Goods where [Order].CartID = ShoppingCart.CartID and Goods.GoodsID = ShoppingCart.GoodsID and (OrderStatus = 3 or OrderStatus = 4) and [Order].UserID = {0}", para.userID);
                }
                List<GetOrderInfo> list = db.Database.SqlQuery<GetOrderInfo>(sql).ToList();
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
        /// 提交退款申请
        /// </summary>
        /// <param name="para.reasonForCancellation">退款原因</param>
        /// <param name="para.orderID">订单ID</param>
        /// <param name="para.userID">用户ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage SubmitReturnsInfo(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"update [Order] set OrderStatus = 3, ReasonForCancellation = '{0}', IsCancellation = 0 where OrderID = {1} and UserID = {2}", para.reasonForCancellation, para.orderID, para.userID);
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

        /// <summary>
        /// 用户确认收货
        /// </summary>
        /// <param name="para.orderID">订单ID</param>
        /// <param name="para.userID">用户ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage ConfirmReceipt(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string date = DateTime.Now.ToString();
                string sql = string.Format(@"update [Order] set OrderStatus = 2, ReceivingTime = '{0}' where OrderID = {1} and UserID = {2}", date, para.orderID, para.userID);
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

        /// <summary>
        /// 提交退货申请
        /// </summary>
        /// <param name="para.reasonForCancellation">退货理由</param>
        /// <param name="para.orderID">订单ID</param>
        /// <param name="para.userID">用户ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage ReturnGoods(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"update [Order] set OrderStatus = 4, ReasonForCancellation = '{0}', IsCancellation = 0 where OrderID = {1} and UserID = {2}", para.reasonForCancellation, para.orderID, para.userID);
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
}