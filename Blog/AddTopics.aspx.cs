using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Blog
{
    public partial class AddTopics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTopic_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                string Name = txtTopicName.Text;
                string Description = txtDescription.Text;

                con.Open();
                string query = "Insert into tblTopics(Name,Description, CreatedDate) values('"+@Name+ "','" + @Description + "', GETDATE() )";
                SqlCommand cmd = new SqlCommand(query, con);
   
                if(cmd.ExecuteNonQuery() > 0)
                {
                    lblMessage.Text = "Data added successfully";

                    txtTopicName.Text="";
                    txtDescription.Text="";

                }

            }
        }
    }
}