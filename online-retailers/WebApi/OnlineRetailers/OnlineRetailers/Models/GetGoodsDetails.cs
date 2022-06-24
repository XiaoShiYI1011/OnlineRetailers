using System;

namespace OnlineRetailers.Models
{
    public class GetGoodsDetails
    {
        public int GoodsID { get; set; }
        public string GoodsTitle { get; set; }
        public string GoodsKeyWord { get; set; }
        public int TypeId { get; set; }
        public int StoreID { get; set; }
        public string StoreName { get; set; }
        public string StoreRegion { get; set; }
        public string GoodsAttribute { get; set; }
        public string GoodsImg { get; set; }
        public Decimal GoodsPrice { get; set; }
        public int GoodsStock { get; set; }
        public int GoodsSales { get; set; }
    }
}