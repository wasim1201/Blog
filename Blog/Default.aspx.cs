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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

            if (!IsPostBack)
            {
               

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("spGetTrendingPostList", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    con.Open();

                    if (TrendsDataList != null)
                    {
                        TrendsDataList.DataSource = cmd.ExecuteReader();
                        TrendsDataList.DataBind();
                    }

                    con.Close();

                }

                int Topic = 0;
                PopulatePost(Topic);

                

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("spGetAllTopics", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();

                    if (TopicDataList != null)
                    {
                        TopicDataList.DataSource = cmd.ExecuteReader();
                        TopicDataList.DataBind();

                    }

                }

            }

           

        }

        private void PopulatePost(int Topic)
        {
            

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetPostList", con);
                cmd.CommandType = CommandType.StoredProcedure;


                SqlParameter paramTopicName = new SqlParameter()
                {
                    ParameterName = "@Topic",
                    Value = Topic
                };

                cmd.Parameters.Add(paramTopicName);


                con.Open();

                if (postDataList != null)
                {
                    postDataList.DataSource = cmd.ExecuteReader();
                    postDataList.DataBind();
                   
                }


            }
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "MoveToRecent();", true);
        }

        protected void SearchTopic_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            switch (btn.CommandName)
            {
                case "TopicId":
                    String[] TopicIdName = btn.CommandArgument.ToString().Split(';');
                    int Id = Convert.ToInt32(TopicIdName[0]);
                    string Topic = TopicIdName[1];

                    RecentPost.InnerText = "Search results for topic " + Topic.ToUpper() + " posts only";
                    PopulatePost(Id);

                    break;

            }

        }
    }

}
