using System;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.Optimization;

namespace jsmtcom
{
    public partial class SiteMaster : MasterPage
    {
        private string avatarimage,userrole;
        public string Avtimage
        {
            get { return avatarimage; }
        }
        public string Role
        {
            get { return userrole; }
        }
        public string WrapperThemeControl
        {
            get { return WrapperTheme.Text; }
            set { WrapperTheme.Text = value; }
        }
        public string BodyClassControl
        {
            get { return BodyClass.Text; }
            set { BodyClass.Text = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["user_id"] != null)
            {
                userrole = Session["role"].ToString();
                avatarimage = Session["avatar"].ToString();
            }
            else
            {
                avatarimage = "default";
                userrole = "guest";
            }

            avatarmaster.Attributes.Add( "src", "/Content/images/avatars/default/" + avatarimage + ".png");
            avtmobilemaster.Attributes.Add("src","/Content/images/avatars/default/" + avatarimage + ".png");
            
            string redurl = "/account/login?red=" + HttpContext.Current.Request.Url.AbsolutePath.ToString();
            nav_login.Attributes.Add("href", redurl);
            og_desc.Attributes.Add("Content", Page.MetaDescription.ToString());
            og_title.Attributes.Add("Content", Page.Title.ToString());
            og_url.Attributes.Add("Content", Request.Url.ToString());

            mainbody.Attributes.Add("class", BodyClass.Text);
            wrapper_theme.Attributes.Add("class", WrapperTheme.Text);

            Menustate();
        }

        protected void LogOutClick(object sender, EventArgs e)
        {
            Session.Abandon();
            fname.Text = "guest";
            Response.Redirect(HttpContext.Current.Request.Url.ToString());
        }

        protected void Menustate()
        {
            if (System.Web.HttpContext.Current.Session["user_id"] != null)
            {
                fname.Text = Session["first_name"].ToString();
                fname_mobile.Text = Session["first_name"].ToString();

                nav_login.Visible = false;
                mobile_nav_login.Visible = false;

                nav_profile.Attributes.Add("class", "dropdown-item");
                mobile_nav_profile.Attributes.Add("class", "dropdown-item");

                //nav_favourites.Attributes.Add("class", "dropdown-item");
                //mobile_nav_favourites.Attributes.Add("class", "dropdown-item");

                nav_logout.Visible = true;
                mobile_nav_logout.Visible = true;

                if (Session["role"].ToString() == "admin")
                {
                    nav_admin.Visible = true;
                    mobile_nav_admin.Visible = true;
                }
                else
                {
                    nav_admin.Visible = false;
                    mobile_nav_admin.Visible = false;
                }
            }
            else
            {
                fname.Text = "guest";
                fname_mobile.Text = "guest";

                nav_login.Visible = true;
                mobile_nav_login.Visible = true;

                nav_logout.Visible = false;
                mobile_nav_logout.Visible = false;

                nav_profile.Visible = false;
                mobile_nav_profile.Visible = false;

                nav_admin.Visible = false;
                mobile_nav_admin.Visible = false;
            }
        }
    }
}
