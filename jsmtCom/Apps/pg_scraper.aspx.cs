using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;

namespace jsmtcom.Apps
{
    public partial class pg_scraper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            stat.Text = "initialized";
        }
        protected void TaskClick(object sender, EventArgs e)
        {
         
            var url = @"https://www.confirmtkt.com/pnr-status/8846706559/";
            HtmlWeb web = new HtmlWeb();
            var htmlDoc = web.Load(url);
            //var node = htmlDoc.DocumentNode.SelectSingleNode("//script[last()]");
            var nodes = htmlDoc.DocumentNode.SelectNodes("//script");
            stat.Text = nodes[0].InnerHtml;
        }
    }
}