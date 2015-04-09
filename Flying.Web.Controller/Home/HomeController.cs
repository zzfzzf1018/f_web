using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Flying.Entity;

namespace Flying.Web.Controllers
{
    public class HomeController : Controller
    {
        public ViewResult Index()
        {
            using (var db = new BlogContext())
            {
                var a = from p in db.Users
                        select p.phone;
                var aaa = a.SingleOrDefault();
            }
            return View();
        }
    }
}
