using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using MySql.Data.Entity;

namespace Flying.Entity
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class BlogContext : DbContext
    {
        public static string connectionString = "BlogConneciontString";
        public BlogContext()
            : base(connectionString)
        {
            //删除数据库重建
            //Database.SetInitializer(new DropCreateDatabaseIfModelChanges<BlogContext>());

            //Database.SetInitializer<BlogContext>(null);
        }
        public DbSet<User> Users { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Message> Messages { get; set; }
        public DbSet<Log> Logs { get; set; }
        public DbSet<Article> Articles { get; set; }
        public DbSet<ArticleComment> ArticleComments { get; set; }
        public DbSet<ArticleType> ArticleTypes { get; set; }
        public DbSet<Blog> Blogs { get; set; }
    }
}
