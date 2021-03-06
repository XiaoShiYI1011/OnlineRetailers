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
    
    public partial class Business
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Business()
        {
            this.CustomerService = new HashSet<CustomerService>();
            this.Messages = new HashSet<Messages>();
            this.RobotService = new HashSet<RobotService>();
            this.Store = new HashSet<Store>();
        }
    
        public int BusinessID { get; set; }
        public string BusinessName { get; set; }
        public string BusinessIDCard { get; set; }
        public string BusinessPhone { get; set; }
        public string BusinessAccount { get; set; }
        public string BusinessPwd { get; set; }
        public string BusinessImg { get; set; }
        public Nullable<int> BusinessReview { get; set; }
        public Nullable<int> IsOnline { get; set; }
        public Nullable<System.DateTime> BusinessCreateTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CustomerService> CustomerService { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Messages> Messages { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RobotService> RobotService { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Store> Store { get; set; }
    }
}
