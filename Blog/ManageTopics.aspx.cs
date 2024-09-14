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
    public partial class ManageTopics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("spGetManageTopicList", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();


                    if(topicDataList != null)
                    {
                        topicDataList.DataSource = cmd.ExecuteReader();
                        topicDataList.DataBind();

                    }




                }


            }
        }
    }
}