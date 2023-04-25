using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace jsmtcom
{
    public partial class Default : Page
    {

        public static string constr = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
        public SqlConnection con = new SqlConnection(constr);
        public SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.WrapperThemeControl = "dark-mode";
            this.Master.BodyClassControl = "";

            if (Master.FindControl("nav_home") is HtmlAnchor nava)
            {
                nava.Attributes["class"] = "dropdown-item active";
            }


        }
        protected void SubmitClick(object sender, EventArgs e)
        {
            string elem;
            string message, type;
            string path = HttpContext.Current.Request.Url.AbsolutePath.Trim();

            if (path.Length >= 100)
            {
                path = path.Remove(0, 100);
            }
            if (userEmail.Value.Trim() == "")
            {
                message = "Email can't be empty";
                type = "error";
            }
            else
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select count(*) from MailingList where Email='" + userEmail.Value + "'";
                    con.Open();
                    if (cmd.ExecuteScalar() == DBNull.Value)
                    { elem = "0"; }
                    else
                    { elem = cmd.ExecuteScalar().ToString(); }
                    if (elem == "0")
                    {
                            cmd.CommandText = "insert into MailingList(email,origin) Values('" + userEmail.Value.Trim() + "','" + path + "' )";
                            cmd.ExecuteNonQuery();
                            message = "Email Submitted";
                            type = "success";
                    }
                    else
                    {
                        message = "This email has already been submitted!!";
                        type = "error";
                    }
                    con.Close();
                }
            }

            stat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
        }
    }
}