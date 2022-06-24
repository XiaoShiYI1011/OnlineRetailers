using OnlineRetailers.Models;
using OnlineRetailers.Utils;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class MerchantsController : ApiController
    {

        public static string saveDataPath;
        /// <summary>
        /// 商家登录接口
        /// </summary>
        /// <param name="Merchants.UserName">用户名或者手机号</param>
        /// <param name="Merchants.UserPwd">密码</param>
        /// <returns>成功（返回用户所有的信息）|| 失败（返回 false）</returns>
        [HttpPost]
        public HttpResponseMessage MerchantsLogin(dynamic Merchants)
        {
            string JOSN = "";
            string passWord = Merchants.MerchantsPwd;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string MerchantsNameSQL = string.Format(@"select * from Business where (BusinessAccount='{0}' or BusinessPhone='{0}')", Merchants.MerchantsName);
                List<Business> MerchantsNameList = db.Database.SqlQuery<Business>(MerchantsNameSQL).ToList();
                if (MerchantsNameList.Count > 0)
                {
                    string[] MerchantsPwdArr = MerchantsNameList[0].BusinessPwd.Split('。');
                    MD5Utli mD5Utli = new MD5Utli();
                    string PwdDecrypt = mD5Utli.MD5Decrypt(MerchantsPwdArr[1], MerchantsPwdArr[0]);
                    if (passWord.Equals(PwdDecrypt))
                    {
                        JOSN = new JavaScriptSerializer().Serialize(MerchantsNameList[0]);
                    }
                    else
                    {
                        JOSN = new JavaScriptSerializer().Serialize(false);
                    }
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 商家注册接口
        /// </summary>
        /// <param name="Merchants.UserName">用户名</param>
        /// <param name="Merchants.UserPwd">密码</param>
        /// <param name="Merchants.UserPhone">手机号</param>
        /// <returns>注册成功或者失败</returns>
        [HttpPost]
        public HttpResponseMessage MerchantsRegister(dynamic Merchants)
        {
            string JOSN = "";
            string pwd = Merchants.MerchantsPwd;
            MD5Utli mD5Utli = new MD5Utli();
            string key = mD5Utli.GenerateKey();
            string passWord = mD5Utli.MD5Encrypt(pwd, key);
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format("insert into Business(BusinessAccount,BusinessPwd,BusinessPhone,BusinessImg,BusinessCreateTime) values('{0}','{1}','{2}','{3}','{4}')"
                                           , Merchants.MerchantsName, key + "。" + passWord, Merchants.MerchantsPhone, "/Images/UserImages/Default.png", DateTime.Now);
                try
                {
                    int i = db.Database.ExecuteSqlCommand(sql);
                    if (i > 0)
                    {
                        JOSN = new JavaScriptSerializer().Serialize(true);
                    }
                    else
                    {
                        JOSN = new JavaScriptSerializer().Serialize(false);
                    }
                }
                catch (Exception)
                {
                    JOSN = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 商家信息查询
        /// </summary>
        /// <param name="MerchantsID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage Merchants(int MerchantsID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format("select * from Business where BusinessID={0}", MerchantsID);
                List<Business> list = db.Database.SqlQuery<Business>(sql).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list[0]);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 查询手机号是否存在
        /// </summary>
        /// <param name="user.UserPhone">用户手机号</param>
        /// <returns>存在（true）|| 不存在（false）</returns>
        [HttpPost]
        public HttpResponseMessage CheckUserPhone(dynamic user)
        {
            string JSON = "";
            string phone = user.UserPhone;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.Business.FirstOrDefault(n => n.BusinessPhone == phone);
                if (data != null)
                {
                    if (data.BusinessPhone.Equals(phone))
                    {
                        JSON = new JavaScriptSerializer().Serialize(true);
                    }
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="user.UserPhone">用户手机号</param>
        /// <param name="user.UserPwd">修改的密码</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpDateUserPwd(dynamic user)
        {
            string JSON = "";
            string phone = user.UserPhone;
            string pwd = user.UserPwd;
            MD5Utli mD5Utli = new MD5Utli();
            string key = mD5Utli.GenerateKey();
            string passWord = mD5Utli.MD5Encrypt(pwd, key);
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.Business.FirstOrDefault(u => u.BusinessPhone == phone);
                data.BusinessPwd = key + "。" + passWord;
                if (db.SaveChanges() > 0)
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
        [HttpPost]
        public HttpResponseMessage UpdateMerchants(dynamic Merchants)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                try
                {
                    string sql = string.Format(@"update Business set 
                                           BusinessAccount='{1}',BusinessPhone='{2}',
                                           BusinessName='{3}',BusinessIDCard='{4}' where BusinessID={0}"
                                             , Merchants.BusinessID, Merchants.BusinessAccount,
                                             Merchants.BusinessPhone, Merchants.BusinessName, Merchants.BusinessIDCard);
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
                /// 商家头像保存
                /// </summary>
                /// <param name="file.img">图片base64字符串</param>
                /// <param name="file.userID">用户ID</param>
                /// <returns>成功（true）|| 失败（false）</returns>
                [HttpPost]
        public HttpResponseMessage UpLoadHeadPortrait(dynamic file)
        {
            string JSON = "";
            string base64 = Convert.ToString(file.img).Replace("[", "").Replace("]", "").Replace("{", "").Replace("}", "").Replace("\"", "");
            int BusinessID = Convert.ToInt32(file.MerchantsID);
            if (Base64ToImage(base64))
            {
                using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
                {
                    var data = db.Business.FirstOrDefault(u => u.BusinessID == BusinessID);
                    data.BusinessImg = saveDataPath;
                    if (db.SaveChanges() > 0)
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

        /// <summary>
        /// base64解析为图片并保存
        /// </summary>
        /// <param name="base64Str">base64字符串</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        private bool Base64ToImage(string base64Str)
        {
            base64Str = base64Str.Replace("data:image/png;base64,", "").Replace("data:image/jgp;base64,", "").Replace("data:image/jpg;base64,", "").Replace("data:image/jpeg;base64,", "");  // 将base64头部信息替换
            // 去掉特殊符号
            string dummyData = base64Str.Trim().Replace("%", "").Replace(",", "").Replace(" ", "+");
            if (dummyData.Length % 4 > 0)
            {
                dummyData = base64Str.PadRight(dummyData.Length + 4 - dummyData.Length % 4, '=');
            }
            try
            {
                string inputStr = dummyData;
                byte[] arr = Convert.FromBase64String(inputStr);
                MemoryStream ms = new MemoryStream(arr);
                Bitmap bmp = new Bitmap(ms);  // GDI 位图
                string path = HttpContext.Current.Server.MapPath("~/Images/UserImages/");
                string imgName = DateTime.Now.ToString("yyMMddhhmmssfff");
                string file = path + imgName + ".jpg";  // 图片路径包括名字后缀
                bmp.Save(file, System.Drawing.Imaging.ImageFormat.Jpeg);  // 保存到文件夹
                ms.Close();  // 关闭流
                saveDataPath = "/Images/UserImages/" + imgName + ".jpg";  // 保存到数据库的路径
            }
            catch (Exception e)
            {
                string error = e.Message;
                return false;
            }
            return true;
        }
    }
}