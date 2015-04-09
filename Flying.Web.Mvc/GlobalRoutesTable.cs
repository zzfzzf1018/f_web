using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System.Web.Routing;

namespace Flying.Web.Mvc
{
    public static class GlobalRoutesTable
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
               "Login",
               "Login",
               new { controller = "Manage", action = "Index" },
               new string[] { "Flying.Web.Controller" }
           );
            //default   routes
            routes.MapRoute(
                "Default",
                "{controller}/{action}/{id}",
                new { controller = "Blog", action = "Index", id = UrlParameter.Optional },
                new string[] { "Flying.Web.Controller" }
            );
        }
    }
}
