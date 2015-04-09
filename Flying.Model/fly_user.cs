using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flying.Entity
{
    /// <summary>
    /// 用户表
    /// </summary>
    [Table("fly_user")]
    public class User
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int userid { get; set; }
        [Required(ErrorMessage = "用户名不能为空")]
        [Display(Name = "用户名")]
        [MaxLength(50)]
        public string username { get; set; }
        [Required(ErrorMessage = "密码不能为空")]
        [Display(Name = "密码")]
        [MaxLength(100)]
        public string pwd { get; set; }
        public DateTime create_time { get; set; }
        public int role_id { get; set; }
        [MaxLength(50)]
        public string email { get; set; }
        [MaxLength(11)]
        public string phone { get; set; }
        [MaxLength(20)]
        public string qq { get; set; }
        public DateTime last_update_time { get; set; }
        [MaxLength(50)]
        public string nickname { get; set; }
        [MaxLength(500)]
        public string portrait_img_url { get; set; }
    }
}
