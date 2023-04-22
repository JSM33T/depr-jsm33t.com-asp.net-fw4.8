using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace jsmtcom.Account
{
    public partial class Personalize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.BodyClassControl = "bg-secondary";

            HtmlAnchor nava = Master.FindControl("nav_personalize") as HtmlAnchor;
            if (nava != null)
            {
                nava.Attributes["class"] = "dropdown-item active";
            }
        }
    }
}
