using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.Web.WebPages.OAuth;
using Flying.Common;
using Flying.Entity;
using Flying.ILogic;
using Flying.Web.Models;

namespace Flying.Web.Controllers
{
    public class BlogController : Controller
    {
        [Ninject.Inject]
        private IBlogLogic blogLogic { get; set; }

        [AllowAnonymous]
        public ViewResult Index(string blogname)
        {
            BlogViewModel blogViewModel = new BlogViewModel();
            if (blogname.FlyIsNullOrEmpty())
            {
                blogViewModel.blog = blogLogic.GetFirstBlog();
            }
            else
            {
                blogViewModel.blog = blogLogic.GetBlogByName(blogname);
            }
            blogViewModel.lstArticle = blogLogic.GetArticlesByUserId(blogViewModel.blog.userid);
            Session["blogname"] = blogViewModel.blog.blog_name;
            Session["blogtitle"] = blogViewModel.blog.blog_title;
            Session["blogsubtitle"] = blogViewModel.blog.blog_sub_title;
            BindData();
            return View(blogViewModel);
        }
        public ActionResult ViewArticle(int articleid)
        {
            var articleViewModel = new ArticleViewModel();
            articleViewModel.article = blogLogic.GetArticleById(articleid);
            articleViewModel.lstComment = blogLogic.GetCommentsByArticleId(articleid);
            ViewBag.Title = (articleViewModel.article ?? new Article()).article_title;
            BindData();
            return View("ArticleDetail",articleViewModel);
        }

        private void BindData()
        {
            ViewBag.blogtitle = Session["blogtitle"];
            ViewBag.blogsubtitle = Session["blogsubtitle"];
        }
    }
}
