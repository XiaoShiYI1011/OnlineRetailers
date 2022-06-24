namespace OnlineRetailers.Models
{
    public class GetUserRegion
    {
        public int RegionID { get; set; }
        public string UserAccount { get; set; }
        public string Province { get; set; }
        public string City { get; set; }
        public string DetailedAddress { get; set; }
        public string Phone { get; set; }
        public int IsDefault { get; set; }
    }
}