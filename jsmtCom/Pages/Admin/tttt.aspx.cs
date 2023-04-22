using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsmtcom.Pages.Admin
{
    public partial class tttt : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //important sheet
        [WebMethod]
        public static string SaveData(string name, int age)
        {
            return "data is " + name + " and " +age;
        }
        //important sheet ends

        public class Person
        {
            public string Name { get; set; }
            public int Age { get; set; }
            public string Email { get; set; }
        }
        [WebMethod]
        public static string GetData()
        {
            Person person = new Person()
            {
                Name = "John Smith",
                Age = 30,
                Email = "john.smith@example.com"
            };

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            return serializer.Serialize(person);
        }
    }
}