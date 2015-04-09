using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Flying.Entity;

namespace Flying.Web.Models
{
    public class ArticleViewModel
    {
        public Article article { get; set; }
        public IList<ArticleComment> lstComment { get; set; }
    }
}
