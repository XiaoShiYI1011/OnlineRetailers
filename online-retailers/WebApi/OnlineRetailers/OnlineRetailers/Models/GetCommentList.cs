using System;

namespace OnlineRetailers.Models
{
    public class GetCommentList
    {
        public int? UserID { get; set; }
        public string UserAccount { get; set; }
        public string UserImg { get; set; }
        public string Content { get; set; }
        public DateTime? CommentTime { get; set; }
        public int? CommentUserID { get; set; }
        public int CommentID { get; set; }
    }
}