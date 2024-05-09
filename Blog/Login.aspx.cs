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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {

                string Username = txtUsername.Text;
                string Password = txtPassword.Text;
                con.Open();
                string query = "Select Username from tblUser where Username='"+@Username+"' and Password='"+@Password+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                
                SqlDataReader sdr= cmd.ExecuteReader();
               

                if (sdr.Read())
                {
                    txtLabel.ForeColor=System.Drawing.Color.Green;
                    txtLabel.Text = "Login success!";
                    Session["username"] = Username;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    txtLabel.ForeColor = System.Drawing.Color.Red;           
                    txtLabel.Text = "Username or Password is incorrect! Try Again.";
                }
                

            }
        }
    }
}