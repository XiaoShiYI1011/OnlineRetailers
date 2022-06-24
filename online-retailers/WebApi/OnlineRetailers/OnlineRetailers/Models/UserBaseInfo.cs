using System;

namespace OnlineRetailers.Models
{
    public class UserBaseInfo
    {
        public string UserAccount { get; set; }
        public string UserIDCard { get; set; }
        public string UserPhone { get; set; }
        public DateTime? UserBirthday { get; set; }
        public string UserImg { get; set; }
        public string UserLikeWork { get; set; }
        public string CityName { get; set; }
        public string ProvinceName { get; set; }
    }
}