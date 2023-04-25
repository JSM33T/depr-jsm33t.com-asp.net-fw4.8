using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Script.Serialization;

namespace jsmtcom.Handlers
{
    public class SearchKeys
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

    }

    public class LiveSearchHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string keyword = context.Request.QueryString["keyword"];
            string connectionString = ConfigurationManager.ConnectionStrings["jsm33t_db"].ConnectionString;
            string query = "SELECT * FROM SearchMaster WHERE title LIKE '%" + keyword + "%' or description LIKE '%" + keyword + "%' ";
            
            List<SearchKeys> myList = new List<SearchKeys>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        SearchKeys obj = new SearchKeys
                        {
                            Id = reader.GetInt32(0),
                            Title = reader.GetString(1),
                            Description = reader.GetString(2)
                        };
                        myList.Add(obj);
                    }
                }
            }

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string json = serializer.Serialize(myList);

            context.Response.ContentType = "application/json";
            context.Response.Write(json);
        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}
