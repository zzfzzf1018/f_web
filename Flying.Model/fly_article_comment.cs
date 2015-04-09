using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    /// <summary>
    /// 文章评论表
    /// </summary>
    [Table("fly_article_comment")]
    public class ArticleComment
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int comment_id { get; set; }
        [MaxLength(100)]
        public string comment_title { get; set; }
        [MaxLength(4000)]
        public string comment_content { get; set; }
        public int userid { get; set; }
        [MaxLength(50)]
        public string nickname { get; set; }
        public int article_id { get; set; }
    }
}
