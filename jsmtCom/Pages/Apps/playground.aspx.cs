using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsmtcom.Pages.Apps
{
    public partial class playground : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitClick(object sender, EventArgs e)
        {
            decimal pp = (decimal.Parse(place1.Value) * 6486548654654)/68465465454;
            place2.Value = pp.ToString();
        }
    }
}