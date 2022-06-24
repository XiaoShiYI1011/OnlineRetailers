using System;

namespace OnlineRetailers.Models
{
    public class GetIsSelectGoods
    {
        public int CartID { get; set; }
        public int GoodsID { get; set; }
        public string GoodsTitle { get; set; }
        public string GoodsImg { get; set; }
        public Decimal GoodsPrice { get; set; }
        public string SelectAttributes { get; set; }
        public int ProductNum { get; set; }
    }
}