using System;

namespace OnlineRetailers.Models
{
    public class GetGoodsBaseInfo
    {
        public int GoodsID { get; set; }
        public string GoodsTitle { get; set; }
        public string GoodsImg { get; set; }
        public Decimal GoodsPrice { get; set; }
        public int GoodsStock { get; set; }
        public int GoodsSales { get; set; }
        public string TypeName { get; set; }
    }
}