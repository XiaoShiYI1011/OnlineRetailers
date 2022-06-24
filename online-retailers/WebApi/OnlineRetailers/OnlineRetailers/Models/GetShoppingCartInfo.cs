using System;

namespace OnlineRetailers.Models
{
    public class GetShoppingCartInfo
    {
        public int CartID { get; set; }
        public int GoodsID { get; set; }
        public string GoodsTitle { get; set; }
        public string SelectAttributes { get; set; }
        public string GoodsImg { get; set; }
        public Decimal GoodsPrice { get; set; }
        public int ProductNum { get; set; }
        public int IsSelect { get; set; }
        public int GoodsStock { get; set; }
    }
}