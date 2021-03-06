//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineRetailers.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int OrderID { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> CartID { get; set; }
        public decimal OrderMoney { get; set; }
        public Nullable<int> RegionID { get; set; }
        public Nullable<int> OrderStatus { get; set; }
        public Nullable<int> PaymentStatus { get; set; }
        public string ReasonForCancellation { get; set; }
        public Nullable<int> IsCancellation { get; set; }
        public Nullable<System.DateTime> DeliverGoodsTime { get; set; }
        public Nullable<System.DateTime> ReceivingTime { get; set; }
        public Nullable<System.DateTime> CancelTime { get; set; }
        public Nullable<System.DateTime> OrderTime { get; set; }
    
        public virtual ShoppingCart ShoppingCart { get; set; }
        public virtual UserRegion UserRegion { get; set; }
        public virtual UserInfo UserInfo { get; set; }
    }
}
