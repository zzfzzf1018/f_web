using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    [Table("fly_message")]
    public class Message
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int msg_id { get; set; }
        [MaxLength(100)]
        public string msg_title { get; set; }
        [MaxLength(2000)]
        public string msg_content { get; set; }
        public int msg_to_userid { get; set; }
        public int msg_from_userid { get; set; }
        [MaxLength(50)]
        public string msg_from_nickname { get; set; }
        public DateTime send_time { get; set; }
        public bool has_read { get; set; }
    }
}
