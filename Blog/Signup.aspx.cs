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
    public partial class Signup : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                
               
                SqlCommand cmd = new SqlCommand("insert into tblUser(Username, Name, Email, Password, CreatedDate) Values(@username, @name, @email, @password, @createdDate)", con);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@createdDate", DateTime.Today);

                con.Open();

                cmd.ExecuteNonQuery();
                Session["username"]=txtUsername.Text;
                Response.Redirect("Default.aspx");

            }

        }
    }
}