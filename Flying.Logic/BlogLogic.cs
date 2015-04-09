using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Flying.ILogic;
using Flying.Entity;

namespace Flying.Logic
{
    public class BlogLogic : IBlogLogic
    {
        public Blog GetBlogById(int blogId)
        {
            using (var db = new BlogContext())
            {
                return db.Blogs.Where(x => x.blog_id == blogId).SingleOrDefault();
            }
        }

        public string GetBlogNameById(int blogId)
        {
            using (var db = new BlogContext())
            {
                return db.Blogs.Where(x => x.blog_id == blogId).Select(x => x.blog_name).SingleOrDefault();
            }
        }

        public Blog GetFirstBlog()
        {
            using (var db = new BlogContext())
            {
                return db.Blogs.FirstOrDefault();
            }
        }

        public Blog GetBlogByName(string blogName)
        {
            using (var db = new BlogContext())
            {
                return db.Blogs.Where(x => x.blog_name == blogName).SingleOrDefault();
            }
        }


        public IList<Article> GetArticlesByUserId(int userId)
        {
            using (var db = new BlogContext())
            {
                return db.Articles.Where(x => x.user_id == userId).ToList();
            }
        }


        public Article GetArticleById(int articleId)
        {
            using (var db = new BlogContext())
            {
                return db.Articles.Where(x => x.article_id == articleId).SingleOrDefault();
            }
        }


        public IList<ArticleComment> GetCommentsByArticleId(int articleId)
        {
            using (var db = new BlogContext())
            {
                return db.ArticleComments.Where(x => x.article_id == articleId).ToList();
            }
        }
    }
}
