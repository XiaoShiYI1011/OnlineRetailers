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
    
    public partial class Messages
    {
        public int MessagesID { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> BusinessID { get; set; }
        public string MessagesDetails { get; set; }
        public Nullable<int> Stuate { get; set; }
        public string Type { get; set; }
        public Nullable<System.DateTime> MessagesTime { get; set; }
    
        public virtual Business Business { get; set; }
        public virtual UserInfo UserInfo { get; set; }
    }
}
