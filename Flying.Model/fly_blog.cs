using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    [Table("fly_blog")]
    public class Blog
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int blog_id { get; set; }
        [Required]
        [MaxLength(100)]
        public string blog_name { get; set; }
        /// <summary>
        /// 显示的标题
        /// </summary>
        [MaxLength(50)]
        public string blog_title { get; set; }
        /// <summary>
        /// 子标题
        /// </summary>
        [MaxLength(200)]
        public string blog_sub_title { get; set; }
        [Required]
        public int userid { get; set; }
        public DateTime create_time { get; set; }
    }
}
