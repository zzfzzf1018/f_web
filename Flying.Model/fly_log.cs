using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    /// <summary>
    /// 访问记录
    /// </summary>
    [Table("fly_log")]
    public class Log
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int log_id { get; set; }
        [MaxLength(100)]
        public string log_name { get; set; }
        [MaxLength(500)]
        public string from_url { get; set; }
        [MaxLength(500)]
        public string to_url { get; set; }
        public DateTime visit_time { get; set; }
        public int to_userid { get; set; }
        public int from_userid { get; set; }
    }
}
