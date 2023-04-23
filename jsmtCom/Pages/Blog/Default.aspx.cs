using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace jsmtcom.Blogs
{
    public partial class Default : System.Web.UI.Page
    {
        public static string constr = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
        public SqlConnection con = new SqlConnection(constr);
        public SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Master.FindControl("masterheader") is HtmlControl headerclass)
            {
                headerclass.Attributes["class"] = "navbar navbar-expand-lg fixed-top bg-light";
            }
        }
        protected void LoadB_click(object sender, EventArgs e)
        {
            LoadPosts();
        }

        protected void LoadPosts()
        {
            StringBuilder sb = new StringBuilder();
            string result = "";
            using (SqlConnection conn = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM blog_master", conn);
                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    sb.Append("<article class=\"masonry-grid-item\"><div class=\"card border-0 bg-secondary\">");
                    sb.Append("<a href=\"blog-single-v2.html\">");
                    sb.Append("<img class=\"card-img-top\" src=\"/Content/img/blog/grid/01.jpg\" alt=\"Post image\"/>");
                    sb.Append("</a> <div class=\"card-body pb-4\"><div class=\"d-flex align-items-center mb-4 mt-n1\">");
                    sb.Append("<span class=\"fs-sm text-muted\">12 hours ago</span>");
                    sb.Append("<span class=\"fs-xs opacity-20 mx-3\">|</span><a class=\"badge text-nav fs-xs border\" href=\"#\">Books</a></div> ");
                    sb.Append("<h3 class=\"h4 card-title\"><a href=\"blog-single-v2.html\">" + dr["title"].ToString() + "</a></h3>");
                    sb.Append(" <p class=\"card-text\">" + dr["desc"].ToString() + "</p></div>   <div class=\"card-footer pt-3\">");
                    sb.Append("<a class=\"d-flex align-items-center text-decoration-none pb-2\" href=\"#\">");
                    sb.Append(" <img class=\"rounded-circle\" src=\"/Content/img/avatar/06.jpg\" width=\"48\" alt=\"Post author\"/><h6 class=\"ps-3 mb-0\">Pretty Dino</h6>        </a>  </div>        </div>          </article>");
                }
                result += sb.ToString();
                dr.Close();
            }
            Literal blogSpace = new Literal
            {
                Text = result.ToString()
            };
            blogholder.Controls.Add(blogSpace);
        }

    }
}