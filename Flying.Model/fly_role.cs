using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    [Table("fly_role")]
    public class Role
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int role_id { get; set; }
        [MaxLength(50)]
        [Required]
        public string role_name { get; set; }
        [MaxLength(100)]
        public string role_remark { get; set; }
    }
}
