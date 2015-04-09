using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    /// <summary>
    /// 文章表
    /// </summary>
    [Table("fly_article")]
    public class Article
    {
        [Key,DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int article_id { get; set; }
        [MaxLength(200)]
        public string article_title { get; set; }
        [Column(TypeName = "text")]
        public string article_content { get; set; }
        public DateTime create_time { get; set; }
        public DateTime last_update_time { get; set; }
        public int user_id { get; set; }
        [MaxLength(50)]
        public string user_name { get; set; }
        public int article_type_id { get; set; }
        [MaxLength(1000)]
        public string article_label { get; set; }
        [MaxLength(100)]
        public string article_little_title { get; set; }
        [NotMapped]
        public string article_type_name { get; set; }
    }
}
