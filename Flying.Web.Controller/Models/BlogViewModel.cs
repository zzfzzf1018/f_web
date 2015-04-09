using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Flying.Entity;

namespace Flying.Web.Models
{
    public class BlogViewModel
    {
        public Blog blog { get; set; }
        public IList<Article> lstArticle { get; set; }
    }
}