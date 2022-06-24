using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineRetailers.Models
{
    public class GetMaxSalesGoods
    {
        public int? GoodsID { get; set; }
        public string GoodsImg { get; set; }
        public Decimal? GoodsPrice { get; set; }
        public int? GoodsSales { get; set; }
    }
}