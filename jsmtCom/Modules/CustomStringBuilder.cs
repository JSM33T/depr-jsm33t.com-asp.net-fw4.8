using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace jsmtcom.Modules
{
    public class CustomStringBuilder
    {
        public static string constr = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
        
        public static SqlCommand cmd = new SqlCommand();
        public static string AlertMessage(string message, string type)
        {
            string AlertString = "<div class=\"subscription-status mx-auto status-"+ type +"\">"+ message +"</div>";
            return AlertString;
        }

        public static string AvatarImageUrl(string avatar_id)
        {
            string avatar_url;
            using (SqlConnection con = new SqlConnection(constr))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select image from AvatarMaster where id = '" + avatar_id + "' ";
                con.Open();
                try { avatar_url = cmd.ExecuteScalar().ToString(); }
                catch { avatar_url = "default"; }
                con.Close();
            }
            return avatar_url;
        }
    }
}