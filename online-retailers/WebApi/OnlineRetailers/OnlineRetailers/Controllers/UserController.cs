using OnlineRetailers.Models;
using OnlineRetailers.Utils;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class UserController : ApiController
    {
        public static string saveDataPath;

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="user.UserName">用户名或者手机号</param>
        /// <param name="user.UserPwd">密码</param>
        /// <returns>成功（返回用户所有的信息）|| 失败（返回 false）</returns>
        [HttpPost]
        public HttpResponseMessage UserLogin(dynamic user)
        {
            string JSON = "";
            string passWord = user.UserPwd;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string userNameSQL = string.Format(@"select * from UserInfo where (UserAccount='{0}' or UserPhone='{0}')", user.UserName);
                List<UserInfo> userNameList = db.Database.SqlQuery<UserInfo>(userNameSQL).ToList();
                if (userNameList.Count > 0)
                {
                    string[] userPwdArr = userNameList[0].UserPwd.Split('。');
                    MD5Utli mD5Utli = new MD5Utli();
                    string PwdDecrypt = mD5Utli.MD5Decrypt(userPwdArr[1], userPwdArr[0]);
                    if (passWord.Equals(PwdDecrypt))
                    {
                        JSON = new JavaScriptSerializer().Serialize(userNameList[0]);
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
        /// 用户注册
        /// </summary>
        /// <param name="user.UserName">用户名</param>
        /// <param name="user.UserPwd">密码</param>
        /// <param name="user.UserPhone">手机号</param>
        /// <returns>注册成功或者失败</returns>
        [HttpPost]
        public HttpResponseMessage UserRegister(dynamic user)
        {
            string JSON = "";
            string pwd = user.UserPwd;
            MD5Utli mD5Utli = new MD5Utli();
            string key = mD5Utli.GenerateKey();
            string passWord = mD5Utli.MD5Encrypt(pwd, key);
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format("insert into UserInfo(UserAccount, UserPwd, UserPhone, UserImg, UserCreateTime) values('{0}','{1}','{2}','{3}','{4}')", user.UserName, key + "。" + passWord, user.UserPhone, "/Images/UserImages/Default.png", DateTime.Now);
                try
                {
                    int i = db.Database.ExecuteSqlCommand(sql);
                    if (i > 0)
                    {
                        JSON = new JavaScriptSerializer().Serialize(true);
                    }
                    else
                    {
                        JSON = new JavaScriptSerializer().Serialize(false);
                    }
                }
                catch (Exception)
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
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
                var data = db.UserInfo.FirstOrDefault(u => u.UserPhone == phone);
                if (data != null)
                {
                    if (data.UserPhone.Equals(phone))
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
                var data = db.UserInfo.FirstOrDefault(u => u.UserPhone == phone);
                data.UserPwd = key + "。" + passWord;
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

        /// <summary>
        /// 获取用户头像路径
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <returns>路径字符串</returns>
        [HttpGet]
        public HttpResponseMessage GetUserImg(int UserID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format("select UserImg from UserInfo where UserID = {0}", UserID);
                List<GetUserImg> data = db.Database.SqlQuery<GetUserImg>(sql).ToList();
                string JSON = new JavaScriptSerializer().Serialize(data[0].UserImg);
                return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
            }
        }

        /// <summary>
        /// 用户信息查询
        /// </summary>
        /// <param name="user.UserID">用户ID</param>
        /// <returns>返回用户基本信息</returns>
        [HttpPost]
        public HttpResponseMessage GetUserInfo(dynamic user)
        {
            string JSON = null;
            int UserID = user.UserID;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format("select UserAccount, UserIDCard, UserPhone, UserBirthday, UserImg, UserLikeWork, CityName,ProvinceName from(UserInfo left join City on UserInfo.UserCity = City.CityID) left join Province on UserInfo.userProvince = Province.ProvinceID where UserID = {0}", UserID);
                List<UserBaseInfo> data = db.Database.SqlQuery<UserBaseInfo>(sql).ToList();
                JSON = new JavaScriptSerializer().Serialize(data);
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 用户信息修改
        /// </summary>
        /// <param name="user.userID">用户ID</param>
        /// <param name="user.userName">用户账号</param>
        /// <param name="user.userPhone">用户手机号</param>
        /// <param name="user.userIDCard">用户身份证号</param>
        /// <param name="user.userBirthday">用户生日</param>
        /// <param name="user.userCity">用户省ID</param>
        /// <param name="user.userProvince">用户市ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpDateUserInfo(dynamic user)
        {
            string JSON = null;
            int userID = user.userID;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.UserInfo.FirstOrDefault(u => u.UserID == userID);
                data.UserAccount = user.userName;
                data.UserPhone = user.userPhone;
                data.UserIDCard = user.userIDCard;
                data.UserBirthday = Convert.ToDateTime(user.userBirthday);
                data.UserCity = user.userCity;
                data.userProvince = user.userProvince;
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

        /// <summary>
        /// 用户头像保存
        /// </summary>
        /// <param name="file.img">图片base64字符串</param>
        /// <param name="file.userID">用户ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpLoadHeadPortrait(dynamic file)
        {
            string JSON = "";
            string base64 = Convert.ToString(file.img).Replace("[", "").Replace("]", "").Replace("{", "").Replace("}", "").Replace("\"", "");
            int userID = Convert.ToInt32(file.userID);
            if (Base64ToImage(base64))
            {
                using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
                {
                    var data = db.UserInfo.FirstOrDefault(u => u.UserID == userID);
                    data.UserImg = saveDataPath;
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

        /// <summary>
        /// 获取用户喜好关键词
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetKeyWork(string userID)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select KeyWork from RecommendType where UserID = {0}", userID);
                List<GetKeyWord> keyWordList = db.Database.SqlQuery<GetKeyWord>(sql).ToList();
                if (keyWordList.Count > 0)
                {
                    string keyWords = keyWordList[0].KeyWork;
                    keyWords = keyWords.Substring(0, keyWords.Length - 1);
                    string[] keyWordArr = keyWords.Split('，');
                    keyWordArr = keyWordArr.OrderBy(p => Guid.NewGuid().ToString()).ToArray();
                    keyWordArr = keyWordArr.Distinct().ToArray();
                    string[] type = new string[] { "", "success", "info", "warning", "danger" };
                    List<KeyWord> list = new List<KeyWord>();
                    Random random = new Random();
                    for (int i = 0; i < keyWordArr.Length; i++)
                    {
                        KeyWord keyWord = new KeyWord();
                        int x = random.Next(0, type.Length);
                        keyWord.name = keyWordArr[i];
                        keyWord.type = type[x];
                        list.Add(keyWord);
                    }
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
        /// 删除用户喜好关键词
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.tagName">关键词</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage DeleteKeyWork(dynamic para)
        {
            string JSON = "";
            string name = para.tagName;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select KeyWork from RecommendType where UserID = {0}", para.userID);
                List<GetKeyWord> keyWordList = db.Database.SqlQuery<GetKeyWord>(sql).ToList();
                if (keyWordList.Count > 0)
                {
                    string keyWords = keyWordList[0].KeyWork;
                    keyWords = keyWords.Substring(0, keyWords.Length - 1);
                    string[] keyWordArr = keyWords.Split('，');
                    string[] newKeyWord = new string[keyWordArr.Length];
                    string newKeyWordStr = "";
                    for (int i = 0; i < newKeyWord.Length; i++)
                    {
                        if (keyWordArr[i] != name)
                        {
                            newKeyWord[i] = keyWordArr[i];
                        }
                    }
                    for (int i = 0; i < newKeyWord.Length; i++)
                    {
                        if (newKeyWord[i] != null)
                        {
                            newKeyWordStr += newKeyWord[i] + "，";
                        }
                        if (keyWordArr.Length == 1)
                        {
                            newKeyWordStr = keyWordArr[0];
                        }
                    }
                    newKeyWordStr = newKeyWordStr.Substring(0, newKeyWordStr.Length - 1);
                    string upDateKeyWord = string.Format(@"update RecommendType set KeyWork = '{0}' where UserID = {1}", newKeyWordStr, para.userID);
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

        /// <summary>
        /// 用户收货地址查询
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <returns>用户收货地址信息列表</returns>
        [HttpGet]
        public HttpResponseMessage SelectUserRegion(int UserID)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select RegionID, UserAccount, Province, City, DetailedAddress, Phone, IsDefault from UserRegion left join UserInfo on UserRegion.UserID = UserInfo.UserID where UserRegion.UserID = {0}", UserID);
                List<GetUserRegion> list = db.Database.SqlQuery<GetUserRegion>(sql).ToList();
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
        /// 删除用户收货地址
        /// </summary>
        /// <param name="RegionID">收货地址ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpGet]
        public HttpResponseMessage DeleteUserRegion(int RegionID)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                var data = db.UserRegion.FirstOrDefault(r => r.RegionID == RegionID);
                db.UserRegion.Remove(data);
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

        /// <summary>
        /// 用户收货地址是否为默认状态修改
        /// </summary>
        /// <param name="para.userID"></param>
        /// <param name="para.IsDefault">是否默认</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UnDefault(dynamic para)
        {
            string JSON = "";
            int isDefault = para.IsDefault == false ? 1 : 0;
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string updateForID = string.Format(@"update UserRegion set IsDefault = {0} where RegionID = {1} and UserID = {2}", isDefault, para.regionID, para.userID);
                if (db.Database.ExecuteSqlCommand(updateForID) > 0)
                {
                    string sql = "";
                    if (isDefault == 0)
                    {
                        sql = string.Format(@"update UserRegion set IsDefault = {0} where RegionID != {1}", isDefault == 1 ? 0 : 1, para.regionID);
                    }
                    else
                    {
                        sql = string.Format(@"update UserRegion set IsDefault = {0} where RegionID != {1}", isDefault == 0 ? 0 : 1, para.regionID);
                    }
                    if (db.Database.ExecuteSqlCommand(sql) > 0)
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
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 用户收货地址添加
        /// </summary>
        /// <param name="para.userID">用户ID</param>
        /// <param name="para.province">省</param>
        /// <param name="para.city">市</param>
        /// <param name="para.detailedAddress">详细地址</param>
        /// <param name="para.userPhone">用户手机号</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage InsertUserRegion(dynamic para)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"INSERT INTO UserRegion (UserID, Province, City, DetailedAddress, Phone, IsDefault) VALUES ({0}, '{1}', '{2}', '{3}', '{4}', 1)", para.userID, para.province, para.city, para.detailedAddress, para.userPhone);
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
        /// 根据收货表ID查询用户收货地址
        /// </summary>
        /// <param name="regionID">收货表ID</param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetUserRegionForID(string regionID)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string sql = string.Format(@"select DetailedAddress, Phone from UserRegion where RegionID = {0}", regionID);
                List<UserRegionForID> list = db.Database.SqlQuery<UserRegionForID>(sql).ToList();
                if (list.Count > 0)
                {
                    JSON = new JavaScriptSerializer().Serialize(list[0]);
                }
                else
                {
                    JSON = new JavaScriptSerializer().Serialize(false);
                }
            }
            return new HttpResponseMessage { Content = new StringContent(JSON, Encoding.UTF8, "application/json") };
        }

        /// <summary>
        /// 修改用户收货地址
        /// </summary>
        /// <param name="para.province">省</param>
        /// <param name="para.city">市</param>
        /// <param name="para.detailedAddress">详细地址</param>
        /// <param name="para.userPhone">手机号</param>
        /// <param name="para.regionID">收货地址ID</param>
        /// <returns>成功（true）|| 失败（false）</returns>
        [HttpPost]
        public HttpResponseMessage UpdateUserRegion(dynamic para)
        {
            string JSON = "";
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                string upDateUserRegion = string.Format(@"update UserRegion set Province = '{0}', City = '{1}', DetailedAddress = '{2}', Phone = '{3}' where RegionID = {4}", para.province, para.city, para.detailedAddress, para.userPhone, para.regionID);
                if (db.Database.ExecuteSqlCommand(upDateUserRegion) > 0)
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

    public class KeyWord
    {
        public string name { get; set; }
        public string type { get; set; }
    }
}