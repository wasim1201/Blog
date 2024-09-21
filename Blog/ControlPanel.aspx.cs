using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class ControlPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("spGetManagePostList", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();

                    if (ManagePostDataList != null)
                    {
                        ManagePostDataList.DataSource = cmd.ExecuteReader();
                        ///ManagePostDataList.DataBind();

                    }

                }

                
            }
        }

     
    }
}