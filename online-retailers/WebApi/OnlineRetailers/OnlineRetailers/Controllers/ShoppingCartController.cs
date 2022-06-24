using OnlineRetailers.Models;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class ShoppingCartController : ApiController
    {
        /// <summary>
        /// 获取购物车列表
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <returns>成功：返回购物车列表；失败：返回 false</returns>
        [HttpGet]
        public HttpResponseMessage GetShoppingCartInfo(int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select CartID, ShoppingCart.GoodsID, GoodsTitle, SelectAttributes, GoodsImg, GoodsPrice, ProductNum, IsSelect, GoodsStock from ShoppingCart left join Goods on ShoppingCart.GoodsID = Goods.GoodsID where UserID = {0} and IsOrder = 1 order by AddTime desc", UserID);
                List<GetShoppingCartInfo> list = db.Database.SqlQuery<GetShoppingCartInfo>(sql).ToList();
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
        /// 更改购物车商品是否选中状态
        /// </summary>
        /// <param name="para.cartID"></param>
        /// <param name="para.isSelect"></param>
        /// <param name="para.userID"></param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpdateIsSelect(dynamic para)
        {
            string JSON = null;
            string cartID = para.cartID;
            int isSelect = para.isSelect == true ? 1 : 0;
            string userID = para.userID;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string UpDate = string.Format(@"update ShoppingCart set IsSelect = {0} where CartID = {1} and UserID = {2} and IsOrder = 1", isSelect, cartID, userID);
                if (db.Database.ExecuteSqlCommand(UpDate) > 0)
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
        /// 是否全选
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.IsSelectAll">选择状态</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage SelectAll(dynamic para)
        {
            string JSON = null;
            string userID = para.userID;
            int isSelect = para.IsSelectAll == true ? 1 : 0;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"update ShoppingCart set IsSelect = {0} where UserID = {1} and IsOrder = 1", isSelect, userID);
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
        /// 购物车商品数量修改
        /// </summary>
        /// <param name="para.cartID">购物车ID</param>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.productNum">商品数量</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpdateProductNum(dynamic para)
        {
            string JSON = null;
            string cartID = para.cartID;
            string userID = para.userID;
            string productNum = para.productNum;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"update ShoppingCart set ProductNum = {0} where UserID = {1} and CartID = {2} and IsOrder = 1", productNum, userID, cartID);
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
        /// 删除购物车中的某个商品
        /// </summary>
        /// <param name="CartID">购物车ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpGet]
        public HttpResponseMessage Delete(int CartID)
        {
            string JSON = null;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"delete ShoppingCart where CartID = {0}", CartID);
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