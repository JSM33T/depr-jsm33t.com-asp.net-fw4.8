using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace jsmtcom.Handlers
{
    /// <summary>
    /// Summary description for MailHandler
    /// </summary>
    public class MailHandler : IHttpHandler
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