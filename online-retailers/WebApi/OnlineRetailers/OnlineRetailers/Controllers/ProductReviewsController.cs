using OnlineRetailers.Models;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class ProductReviewsController : ApiController
    {
        /// <summary>
        /// 获取商品评论列表
        /// </summary>
        /// <param name="GoodsID">商品ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage CommentList(string GoodsID)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select distinct Comment.UserID, UserAccount, UserImg, Content, CommentTime, CommentUserID, Comment.CommentID from ((Comment left join CommentReview on Comment.UserID = CommentReview.CommentID) left join UserInfo on Comment.UserID = UserInfo.UserID) where GoodsID = {0} order by CommentTime asc", GoodsID);
                List<GetCommentList> commentList = db.Database.SqlQuery<GetCommentList>(sql).ToList();
                if (commentList.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(commentList);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 获取商品评论回复列表
        /// </summary>
        /// <param name="para.userID">被回复的用户ID</param>
        /// <param name="para.commentID">被回复的评论ID</param>
        /// <param name="para.goodsID">商品ID</param>
        /// <returns></returns>
        [HttpPost]
        public HttpResponseMessage ChildrenList(dynamic para)
        {
            string JSON;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select distinct CommentUserID, UserAccount as ReviewUserAccount, UserImg as ReviewUserImg, ReviewContent, ReviewCommentTime, Comment.UserID, (select UserAccount from UserInfo where UserID = {0}) as UserAccount, (select UserImg from UserInfo where UserID = {0}) as UserImg, CommentReview.CommentID from UserInfo, Comment, CommentReview where GoodsID = {1} and Comment.UserID = {0} and CommentReview.CommentID = {2} and Comment.CommentID = CommentReview.CommentID and UserInfo.UserID = CommentReview.CommentUserID", para.userID, para.goodsID, para.commentID);
                List<GetChildrenList> list = db.Database.SqlQuery<GetChildrenList>(sql).ToList();
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
        /// 添加评论
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.goodsID">商品ID</param>
        /// <param name="para.Content">内容</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage DoSend(dynamic para)
        {
            string JSON;
            string userID = para.userID;
            string goodsID = para.goodsID;
            string Content = para.Content;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = @"insert into Comment(UserID, GoodsID, Content) values(@UserID, @GoodsID, @Content)";
                SqlParameter[] sqlPara = {
                    new SqlParameter("@UserID", userID),
                    new SqlParameter("@GoodsID", goodsID),
                    new SqlParameter("@Content", Content)
                };
                if (db.Database.ExecuteSqlCommand(sql, sqlPara) > 0)
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
        /// 回复评论
        /// </summary>
        /// <param name="para.commentID">回复的评论ID</param>
        /// <param name="para.commentUserID">回复的用户</param>
        /// <param name="para.reviewContent">回复的内容</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage DoChildSend(dynamic para)
        {
            string JSON = "";
            string commentID = para.commentID;
            string commentUserID = para.commentUserID;
            string reviewContent = para.reviewContent;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = @"insert into CommentReview(CommentID, CommentUserID, ReviewContent) values(@CommentID, @CommentUserID, @ReviewContent)";
                SqlParameter[] sqlPara = {
                    new SqlParameter("@CommentID", commentID),
                    new SqlParameter("@CommentUserID", commentUserID),
                    new SqlParameter("@ReviewContent", reviewContent)
                };
                if (db.Database.ExecuteSqlCommand(sql, sqlPara) > 0)
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