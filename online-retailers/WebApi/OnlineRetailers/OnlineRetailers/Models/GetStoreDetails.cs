namespace OnlineRetailers.Models
{
    public class GetStoreDetails
    {
        public int StoreID { get; set; }
        public string StoreName { get; set; }
        public string StoreDetails { get; set; }
        public string StoreImg { get; set; }
        public string StoreRegion { get; set; }
        public double? StoreScore { get; set; }
    }
}