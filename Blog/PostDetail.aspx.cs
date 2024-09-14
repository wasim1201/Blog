using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Blog
{
    public partial class PostDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int Id = Convert.ToInt32(Request.QueryString["Id"]);
                string Title = Request.QueryString["Title"];

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {

                    SqlCommand cmd = new SqlCommand("spGetPostTextById", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramId = new SqlParameter()
                    {
                        ParameterName = "@Id",
                        Value = Id
                    };

                    cmd.Parameters.Add(paramId);

                    con.Open();

                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        String text = rdr[0].ToString();
                       
                        PostData.InnerHtml = text;
                        PostTitle.InnerText = Title;
                    }




                }

            }
          

            

        }
    }
}