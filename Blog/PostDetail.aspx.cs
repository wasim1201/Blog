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
                LoadPost();
                LoadPosts();
                LoadTopics();
            }




        }

        private void LoadPost(int Id = 0, string Title = null, bool IsPopularPost = false)
        {
            if (IsPopularPost)
            {
                ExecLoadPostSP(Id, Title);
            }
            else
            {
                Id = Convert.ToInt32(Request.QueryString["Id"]);
                Title = Request.QueryString["Title"];
                ExecLoadPostSP(Id, Title);
            }


        }


        private void ExecLoadPostSP(int Id, string Title)
        {
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

        private void LoadTopics()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetAllTopics", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                if (PostTopicsDataList != null)
                {
                    PostTopicsDataList.DataSource = cmd.ExecuteReader();
                    PostTopicsDataList.DataBind();

                }

            }
        }

        private void LoadPosts(int TopicId = 0)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetPostList", con);
                cmd.CommandType = CommandType.StoredProcedure;


                SqlParameter paramTopicName = new SqlParameter()
                {
                    ParameterName = "@Topic",
                    Value = TopicId
                };

                cmd.Parameters.Add(paramTopicName);


                con.Open();

                if (PostSuggestionDataList != null)
                {
                    //Label.Text = "";
                    PostSuggestionDataList.DataSource = cmd.ExecuteReader();
                    PostSuggestionDataList.DataBind();

                }


            }

        }

        protected void PoplularPostDetail_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            switch (btn.CommandName)
            {
                case "PoplularPostDetail":
                    string[] PoplularPostDetail = btn.CommandArgument.ToString().Split(';');
                    int Id = Convert.ToInt32(PoplularPostDetail[0]);
                    string Title = PoplularPostDetail[1];
                    LoadPost(Id, Title, true);
                    break;

            }
        }
    }
}
