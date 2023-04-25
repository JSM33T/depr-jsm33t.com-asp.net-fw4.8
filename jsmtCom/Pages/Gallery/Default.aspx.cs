using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace jsmtcom.Pages.Gallery
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  
            //added bg-light for main nav
            HtmlControl headermode = Master.FindControl("masterHeader") as HtmlControl;
            headermode.Attributes["class"] = "navbar navbar-expand-lg fixed-top bg-light";

            HtmlAnchor navgal = Master.FindControl("nav_gallery") as HtmlAnchor;
            if (navgal != null)
            {
                navgal.Attributes["class"] = "dropdown-item active";
            }



        }
    }
}