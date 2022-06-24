namespace OnlineRetailers.Models
{
    public class GetDistribution
    {
        public int RegionID { get; set; }
        public string UserAccount { get; set; }
        public string Phone { get; set; }
        public string DetailedAddress { get; set; }
        public int IsDefault { get; set; }
    }
}