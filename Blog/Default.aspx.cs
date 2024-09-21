using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

                
                string FromPostPage = Request.QueryString["FromPostPage"];
                if (FromPostPage!=null && FromPostPage.Equals("Yes")){
                    int TopicId = Convert.ToInt32(Request.QueryString["Id"]);
                    string TopicName =Request.QueryString["TopicName"];
                    PopulatePost(TopicId);
                   //Todo
                   
                    RecentPost.InnerText = "Search results for topic '" + TopicName.ToLower() + "' posts only";
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey2", "MoveToRecent();", true);



                }
                else
                {
                    int Topic = 0;
                    PopulatePost(Topic);

                }



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
                    LabelPost.Text = "";
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        postDataList.DataSource = reader;
                        postDataList.DataBind();

                    }
                    else
                    {
                        LabelPost.Text = "No posts found";
                        postDataList.DataBind();
                    }

                }
              


            }


        }

        protected void SearchTopic_Click(object sender, EventArgs e)
        {
            //FocusTopic();

            LinkButton btn = (LinkButton)sender;
            switch (btn.CommandName)
            {
                case "TopicId":
                    String[] TopicIdName = btn.CommandArgument.ToString().Split(';');
                    int Id = Convert.ToInt32(TopicIdName[0]);
                    string Topic = TopicIdName[1];

                    RecentPost.InnerText = "Search results for topic '" + Topic.ToLower() + "' posts only";
                    PopulatePost(Id);
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey2", "MoveToRecent();", true);


                    break;

            }


        }

        

        protected void Search_TextChanged(object sender, EventArgs e)
        {

            string text = Search.Text.Trim();
            if (text != "")
            {
                FilterPosts(text);
                RecentPost.InnerText = "Search results for topic '" + text.ToLower() + "' posts only";
            }
            else
            {
              //  ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey3", "MoveToRecent();", true);

            }

        }

        private void FilterPosts(string text)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spSearch", con);
                cmd.CommandType = CommandType.StoredProcedure;


                SqlParameter paramKeyword = new SqlParameter()
                {
                    ParameterName = "@Keyword",
                    Value = text
                };

                cmd.Parameters.Add(paramKeyword);


                con.Open();


                if (postDataList != null)
                {

                    SqlDataReader sdr= cmd.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        LabelPost.Text = "";
                        postDataList.DataSource = sdr;
                        postDataList.DataBind();
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey3", "MoveToRecent();", true);
                    }
                    else
                    {
                        LabelPost.Text = "No posts found !";
                        postDataList.DataBind();
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey3", "MoveToRecent();", true);


                    }




                }


            }

         
           

        }
    }
}


