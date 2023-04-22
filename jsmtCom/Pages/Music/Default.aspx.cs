using System;
using System.Web.UI.HtmlControls;

namespace jsmtcom.Music
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Master.FindControl("nav_music") is HtmlAnchor nava)
            {
                nava.Attributes["class"] = "dropdown-item active";
            }
            if (Master.FindControl("nav_music_pages") is HtmlAnchor navc)
            {
                navc.Attributes["class"] = "dropdown-item dropdown-toggle active";
            }
            if (Master.FindControl("nav_music_home") is HtmlAnchor navb)
            {
                navb.Attributes["class"] = "dropdown-item active";
            }
        }
    }
}