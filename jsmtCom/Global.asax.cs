using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Optimization;
using System.Web.Security;
using System.Web.SessionState;
using jsmtCom;

namespace jsmtcom
{
    public class Global : HttpApplication
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/myjavascript").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/bootstrap.js",
                "~/Scripts/myscript.js"));

            bundles.Add(new StyleBundle("~/bundles/mystyles").Include(
                "~/Content/css/jsm33t.css",
                "~/Content/css/theme.min.css"));
            BundleTable.EnableOptimizations = true;
        }

        void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("Default"        , ""                          , "~/Pages/Default.aspx");
            RouteTable.Routes.MapPageRoute("Site"           , "site"                      , "~/Pages/Site/Default.aspx");
            RouteTable.Routes.MapPageRoute("Site.prsnlize"  , "site/personalize"          , "~/Pages/Site/Personalize.aspx");
            RouteTable.Routes.MapPageRoute("Music"          , "music"                     , "~/Pages/Music/Default.aspx");      
            RouteTable.Routes.MapPageRoute("Gallery"        , "gallery"                   , "~/Pages/Gallery/Default.aspx");
            RouteTable.Routes.MapPageRoute("Acc"            , "account"                   , "~/Pages/Account/Profile.aspx");
            RouteTable.Routes.MapPageRoute("Acc/Login"      , "account/login"             , "~/Pages/Account/Login.aspx");
            RouteTable.Routes.MapPageRoute("BlogHome"       , "blog"                      , "~/Pages/Blog/Home.aspx");
            RouteTable.Routes.MapPageRoute("BlogCategory"   , "blog/category/{category}"  , "~/Pages/Blog/Category.aspx");
            RouteTable.Routes.MapPageRoute("BlogYear"       , "blog/year/{year}"          , "~/Pages/Blog/Year.aspx");
            RouteTable.Routes.MapPageRoute("BlogContent"    , "blog/{blog-url}"           , "~/Pages/Blog/Default.aspx");

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

    }
}