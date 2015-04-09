using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    [Table("fly_article_type")]
    public class ArticleType
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int article_type_id { get; set; }
        [MaxLength(50)]
        public string article_type_name { get; set; }
        public int article_parent_type_id { get; set; }
        public int article_type_depth { get; set; }
        [MaxLength(100)]
        public string article_type_remark { get; set; }
        public int userid { get; set; }
    }
}
