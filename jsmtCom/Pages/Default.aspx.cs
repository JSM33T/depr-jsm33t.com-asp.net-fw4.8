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
                    
                    con.Close();
                }

                if (elem == "0")
                {
                    try
                    {
                        InsertMail();
                        message = "Email Submitted";
                        type = "success";
                    }
                    catch
                    {
                        message = "something went wrong" ;
                        type = "error";
                    }

                }
                else
                {
                    message = "This email has already been submitted!!";
                    type = "error";
                }
            }

            stat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
        }
        protected void InsertMail()
        {

            string path = HttpContext.Current.Request.Url.AbsolutePath.Trim();

            if (path.Length >= 100)
            {
                path = path.Remove(0, 100);
            }

            using (SqlConnection con = new SqlConnection(constr))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into MailingList(email,origin) Values('" + userEmail.Value.Trim() + "','" + path + "' )";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}