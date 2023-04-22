using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Services;
using System.Web.UI.WebControls;

namespace jsmtcom.Pages.Admin
{
    public partial class xhr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string MyWebMethod(string parameter1, string parameter2)
        {
            // your code here
            return "Result is" + parameter1 + "and" + parameter2;
        }
    }
}