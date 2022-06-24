using System;

namespace OnlineRetailers.Models
{
    public class GetOrderInfo
    {
        public int GoodsID { get; set; }
        public int OrderID { get; set; }
        public string GoodsImg { get; set; }
        public string GoodsTitle { get; set; }
        public string SelectAttributes { get; set; }
        public int ProductNum { get; set; }
        public int OrderStatus { get; set; }
        public Decimal OrderMoney { get; set; }
        public DateTime? OrderTime { get; set; }
        public DateTime? DeliverGoodsTime { get; set; }
        public DateTime? ReceivingTime { get; set; }
        public DateTime? CancelTime { get; set; }
        public int? IsCancellation { get; set; }
    }
}