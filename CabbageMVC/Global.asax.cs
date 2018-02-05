using System;
using System.Collections.Generic;
using CabbageMVC.Data;
using System.Data.Entity;
using System.Web.Mvc;
using System.Web.Routing;

namespace CabbageMVC
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            
        }
    }
}
