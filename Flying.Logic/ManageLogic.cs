using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Flying.Entity;
using Flying.ILogic;

namespace Flying.Logic
{
    /// <summary>
    /// 后台管理
    /// </summary>
    public class ManageLogic:IManageLogic
    {
        public string LoginCheck(User user)
        {
            using (var db = new BlogContext())
            {
                var query = from u in db.Users
                            where u.username == user.username
                            select u;
                var userFromDb = query.SingleOrDefault();
                if (userFromDb == null)
                    return "用户不存在";
                if (userFromDb.pwd != user.pwd)
                    return "密码不正确";
                user.userid = userFromDb.userid;
            }
            return null;
        }

        public string GetBlogNameByUserName(string strUserName)
        {
            using (var db = new BlogContext())
            {
                var query = from p in db.Users
                            from m in db.Blogs
                            where p.username == strUserName & p.userid == m.blog_id
                            select m.blog_name;
                var blogName = query.SingleOrDefault();
                return blogName;
            }
        }
    }
}
