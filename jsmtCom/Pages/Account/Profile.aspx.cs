using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Reflection.Emit;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Drawing;

namespace jsmtcom.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        public static string constr = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
        public SqlConnection con = new SqlConnection(constr);
        public SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("/");
            }
            else
            {
                this.Master.BodyClassControl = "bg-secondary";
                if (!IsPostBack)
                {
                    LoadProfile();
                    LoadAvatarsList();
                }
            }
        }
        [WebMethod] // POST
        public static string Save(string name)
        {
           
            return name;

        }
        protected void LiveAvatarUpdate(object sender, EventArgs e)
        {
            avatar_placeholder.Attributes.Add("style", "width: 80px; height: 80px; background-image: url(/Content/images/avatars/default/" +  Modules.Fetcher.AvatarImageUrl(avatars.SelectedItem.Value.ToString()) + ".png);");
            profstat.Text = "";

          
            //SiteMaster master = this.Master as SiteMaster;

            //// Find the UpdatePanel control in the Site Master
            //UpdatePanel masterUpdatePanel = master.FindControl("fnamemasterpanel") as UpdatePanel;

            //// If the UpdatePanel control was found, update it
            //if (masterUpdatePanel != null)
            //{
            //    masterUpdatePanel.Update();
            //}
        }
        protected void SaveProfileClick(object sender, EventArgs e)
        {

            string message, type;
            string gen="";
            if (male.Checked == true)
            { 
                gen = "m"; 
            }
            else if (female.Checked == true)
            {
                gen = "f"; 
            }
            else if (other.Checked == true)
            {
                gen = "o"; 
            }
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "UPDATE UserProfiles SET email = '" + email.Value + "',phone_no = '"+ phone.Value +"',first_name = '" + fname.Value + "',last_name = '" + lname.Value + "',gender = '"+ gen +"',avatar_id= '"+avatars.SelectedValue.ToString()+"' WHERE user_id='" + Session["user_id"].ToString() + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                  
                }
                Session["avatar"] = Modules.CustomStringBuilder.AvatarImageUrl(avatars.SelectedValue).ToString();
                Session["first_name"] = fname.Value;
                profilename.Text = fname.Value + "&nbsp" + lname.Value;

                if (Master.FindControl("avatarmaster") is HtmlImage avtmaster)
                {
                    avtmaster.Attributes["src"] = "/Content/images/avatars/default/" + Session["avatar"].ToString() + ".png";
                }
                Literal test = Master.FindControl("fname") as Literal;
                test.Text = fname.Value.ToString();


                if (Master.FindControl("avtmobilemaster") is HtmlImage avtmaster2)
                {
                    avtmaster2.Attributes["src"] = "/Content/images/avatars/default/" + Session["avatar"].ToString() + ".png";
                }
                Literal test2 = Master.FindControl("fname_mobile") as Literal;
                test2.Text = fname.Value.ToString();

                message = "Profile Saved!!";
                 type = "success";
            }
            catch(Exception ex){
                message = "something went wrong" + ex.Message.ToString() ;
                 type = "error";

            }
            profstat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
        }
        protected void SavePasswordClick(object sender, EventArgs e)
        {
            string message = "", type = "";
            if (new_pass.Value == "")
            {
                message = "Password can't be blank";
                type = "error";
                new_pass.Focus();
            }
            else if (new_pass.Value.Length < 6 || new_pass.Value.Length > 20)
            {
                message = "Password needs to be between 6 and 20 digits";
                type = "error";
                new_pass.Focus();
            }
            else if (new_pass.Value != confirm_pass.Value)
            {
                message = "both passwords don't match";
                type = "error";
                confirm_pass.Focus();
            }
            else
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "UPDATE UserProfiles SET password = '"+new_pass.Value.ToString()+"' WHERE user_id =  '" + Session["user_id"] + "'";
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        message = "Password Changed!!";
                        type = "success";
                    }
                }
                catch
                {
                    message = "Something went wrong!!";
                    type = "error";
                }
            }
            PassStat.Text = Modules.CustomStringBuilder.AlertMessage(message, type);
        }
        protected void LoadProfile()
        {
            userRole.Text = Session["role"].ToString();
            string gender = "";
            using (SqlConnection con = new SqlConnection(constr))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from UserProfiles where user_id = '" + Session["user_id"] + "'";
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    profilename.Text = dr["first_name"].ToString() + "&nbsp" + dr["last_name"].ToString();
                    fname.Value = dr["first_name"].ToString();
                    lname.Value = dr["last_name"].ToString();
                    email.Value = dr["email"].ToString();
                    //current_pass.Value = dr["password"].ToString();
                    //txtPassword.Text = dr["password"].ToString();
                    phone.Value = dr["phone_no"].ToString();
                    gender = dr["gender"].ToString();
                    avatars.SelectedValue = dr["avatar_id"].ToString();
                }
                else
                {
                    Response.Redirect("/");
                }
                con.Close();

            }
            switch (gender)
            {
                case "m":
                    male.Checked = true;
                    break;
                case "f":
                    female.Checked = true;
                    break;
                case "o":
                    other.Checked = true;
                    break;
                default:

                    break;
            }
            avatar_placeholder.Attributes.Add("style", "width: 80px; height: 80px; background-image: url(/Content/images/avatars/default/" + Session["avatar"].ToString() + ".png);");
        }
        protected void LoadAvatarsList()
        {
            if (!IsPostBack)
            {
                using (SqlCommand cmd = new SqlCommand("Select * From AvatarMaster where active='1' order by Id "))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    avatars.DataSource = cmd.ExecuteReader();
                    avatars.DataTextField = "name";
                    avatars.DataValueField = "Id";
                    avatars.DataBind();
                    con.Close();

                }
            }
        }
        //protected void SaveProfile()
        //{
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        cmd.Connection = con;
        //        cmd.CommandType = CommandType.Text;
        //        cmd.CommandText = "insert intouu MailingList(Email,Origin) Values('abcd','efgh' ";
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //    }
        //}
    }
}