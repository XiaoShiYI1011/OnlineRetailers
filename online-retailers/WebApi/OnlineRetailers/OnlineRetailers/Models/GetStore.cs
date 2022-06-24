namespace OnlineRetailers.Models
{
    public class GetStore
    {
        public int StoreID { get; set; }
        public string StoreName { get; set; }
        public string StoreImg { get; set; }
        public double? StoreScore { get; set; }
        public string StoreRegion { get; set; }
    }
}