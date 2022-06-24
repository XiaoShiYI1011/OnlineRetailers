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
    public class OrderMangeController : ApiController
    {
        class Orders
        {
            public int OrderID { get; set; } //收货人ID
            public string UserAccount { get; set; } //购买者姓名
            public int GoodsID { get; set; } //收货人ID
            public int StoreID { get; set; } //店铺ID
            public int? IsCancellation { get; set; }//退货审核
            public string ReasonForCancellation { get; set; }//退货理由
            public string StoreName { get; set; } //店铺名
            public string GoodsTitle { get; set; } //商品标题
            public string GoodsImg { get; set; } //商品图片
            public string SelectAttributes { get; set; } //商品属性
            public string Phone { get; set; } //收货人电话
            public DateTime AddTime { get; set; } //订单创建时间
            public DateTime OrderTime { get; set; } //订单结算时间
            public DateTime? DeliverGoodsTime { get; set; }//发货时间
            public int OrderStatus { get; set; } //订单状态
            public string DetailedAddress { get; set; }//收货人地址
        }

        /// <summary>
        /// 查询订单信息
        /// </summary>
        /// <param name="BusinessID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetOrderList(int BusinessID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"select UserAccount,Goods.GoodsID,GoodsImg,ShoppingCart.SelectAttributes
                                            ,Phone,AddTime,OrderTime,[Order].OrderStatus,Store.StoreID,Store.StoreName
                                            ,GoodsTitle,DetailedAddress,OrderID,DeliverGoodsTime,IsCancellation,ReasonForCancellation
                                            from ShoppingCart,[Order],UserInfo,Goods,UserRegion,Store
                                            where ShoppingCart.GoodsID=any(select GoodsID from Goods where StoreID = any(select StoreID from Store where BusinessID={0}))
                                            and [Order].CartID = ShoppingCart.CartID
                                            and UserInfo.UserID = [Order].UserID
                                            and ShoppingCart.GoodsID=Goods.GoodsID
                                            and UserRegion.RegionID = [Order].RegionID
                                            and Store.StoreID=Goods.StoreID", BusinessID);

                    List<Orders> list = db.Database.SqlQuery<Orders>(sql).ToList();
                    string JOSN = new JavaScriptSerializer().Serialize(list);
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
        /// 发货
        /// </summary>
        /// <param name="Order"></param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage UpdateOrder(dynamic Order)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format("update [Order] set OrderStatus={1},DeliverGoodsTime='{2}' where OrderID={0}", Order.OrderID , Order.OrderStatus,DateTime.Now);
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
        /// 退货审核
        /// </summary>
        /// <param name="Order"></param>
        /// <returns></returns>
            [HttpPost]
        public HttpResponseMessage UpdateOrders(dynamic Order)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format("update [Order] set IsCancellation={1} where OrderID={0}", Order.OrderID, Order.IsCancellation);
                    string Sql = string.Format("update Goods set GoodsStock = GoodsStock+(select * from [Order],ShoppingCart where OrderID={0} and ShoppingCart.CartID=[Order].CartID )", Order.OrderID);
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
    }
}