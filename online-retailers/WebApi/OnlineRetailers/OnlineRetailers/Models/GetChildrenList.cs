using System;

namespace OnlineRetailers.Models
{
    public class GetChildrenList
    {
        public int CommentUserID { get; set; }
        public string ReviewUserAccount { get; set; }
        public string ReviewUserImg { get; set; }
        public string ReviewContent { get; set; }
        public DateTime ReviewCommentTime { get; set; }
        public int UserID { get; set; }
        public string UserAccount { get; set; }
        public string UserImg { get; set; }
        public int CommentID { get; set; }
    }
}