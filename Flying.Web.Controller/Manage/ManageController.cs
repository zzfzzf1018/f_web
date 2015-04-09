using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System.Web.Security;
using Microsoft.Web.WebPages.OAuth;
using Ninject;
using Flying.Entity;
using Flying.Common;
using Flying.ILogic;

namespace Flying.Web.Controllers
{
    [Authorize]
    public class ManageController : Controller
    {
        [Inject]
        private IManageLogic manageLogic { get; set; }
        [AllowAnonymous]
        public ViewResult Index()
        {
            return View("Login");
        }
        [AllowAnonymous]
        public ViewResult Login()
        {
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(User user)
        {
            user.pwd = user.pwd.FlyToString().Trim().FlyToMd5();
            user.username = user.username.FlyToString().Trim();
            if (ModelState.IsValid)
            {
                var strMsg = manageLogic.LoginCheck(user);
                if (strMsg.FlyIsNullOrEmpty())
                {
                    FormsAuthentication.SetAuthCookie(user.username, false);
                    Session["username"] = user.username;
                    var strBlogName = manageLogic.GetBlogNameByUserName(user.username);
                    Session["blogname"] = strBlogName;
                    return RedirectToAction("Index", "Blog", new { blogname = strBlogName });
                }
                ModelState.AddModelError("", strMsg);
            }
            return View(user);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LoginOff()
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Blog");
        }
    }
}
