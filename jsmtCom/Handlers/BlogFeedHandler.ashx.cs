using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace jsmtcom.Handlers
{
    /// <summary>
    /// Summary description for BlogFeedHandler
    /// </summary>
    public class BlogFeedHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}