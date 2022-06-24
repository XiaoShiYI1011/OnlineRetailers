using System;

namespace OnlineRetailers.Models
{
    public class GetFootprintItem
    {
        public int RecordsID { get; set; }
        public int GoodsID { get; set; }
        public string GoodsTitle { get; set; }
        public Decimal? GoodsPrice { get; set; }
        public string GoodsImg { get; set; }
    }
}