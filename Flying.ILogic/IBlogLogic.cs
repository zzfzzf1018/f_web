using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Flying.Entity;

namespace Flying.ILogic
{
    public interface IBlogLogic
    {
        Blog GetBlogById(int blogId);
        string GetBlogNameById(int blogId);
        Blog GetFirstBlog();
        Blog GetBlogByName(string blogName);

        IList<Article> GetArticlesByUserId(int userId);
        Article GetArticleById(int articleId);
        IList<ArticleComment> GetCommentsByArticleId(int articleId);
    }
}
