using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace jsmtcom.Account
{
    public partial class Login : System.Web.UI.Page
    {
        public static string constr = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
        public SqlConnection con = new SqlConnection(constr);
        public SqlCommand cmd = new SqlCommand();
        public DataSet ds = new DataSet();
        public DataRow dr;
        public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["user_id"] != null)
            { Response.Redirect("/"); }
        }
        protected void LoginClick(object sender, EventArgs e)
        {

            //userEmail.Value;
            string elem,RedirectTo="/";
            try
            {
                if (Request.QueryString["red"] != null)
                {
                    RedirectTo = Request.QueryString["red"].ToString();
                }
            }
            catch { RedirectTo = "/"; }
           
            string message, type;
            if (user_id.Value.Trim() == "")
            {
                message = "userid can't be empty";
                type = "error";
                loginstat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
                return;
            }
            else if (password.Value.Trim() == "")
            {
                message = "Enter the password";
                type = "error";
                loginstat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
            }
            else
            {
              
                using (SqlConnection con = new SqlConnection(constr))
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select count(*) from UserProfiles where user_id='" + user_id.Value + "' and password='" + password.Value + "' ";
                    con.Open();
                    elem = cmd.ExecuteScalar().ToString();
                    con.Close();
                }

                if (elem == "1")
                {
                    try
                    {
                        SetSession();
                        try
                        {
                                Response.Redirect(RedirectTo);
                            
                        }
                        catch{
                            
                            Response.Redirect("/");
                        }
                        
                    }
                    catch (Exception ex)
                    {
                        message = "something went wrong" + ex.Message;
                        type = "error";
                        loginstat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
                    }
                }
                else
                {
                    message = "Invalid Credentials";
                    type = "error";
                    loginstat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
                }
            }
        }
        protected void SetSession()
        {
            string avatar_id = "";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserProfiles where user_id='" + user_id.Value + "' and password='" + password.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dr = dt.Rows[0];
                Session["user_id"] = dr["user_id"].ToString();
                Session["first_name"] = dr["first_name"].ToString();
                Session["role"] = dr["role"].ToString();
                avatar_id = dr["avatar_id"].ToString();
            }
            else
            {
            }
            con.Close();
            Session["avatar"] = Modules.CustomStringBuilder.AvatarImageUrl(avatar_id).ToString();
        }
    }
}