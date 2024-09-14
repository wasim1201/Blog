using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Blog
{
    public partial class CreatePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("spGetTopics", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                DataSet ds = new DataSet();
                da.Fill(ds);

                //topicList.DataTextField = "Select Topic";
                //topicList.DataValueField = "-1";
                if(!IsPostBack){
                    topicList.DataTextField = ds.Tables[0].Columns["Name"].ToString();
                    topicList.DataValueField = ds.Tables[0].Columns["Id"].ToString();

                    topicList.DataSource = ds;
                    if (!HasRecords(ds)){
                        ddTopics.ErrorMessage = "Please add Topic First";
                    }

                    topicList.DataBind();
                }


            }
        }

        bool HasRecords(DataSet dataSet)
        {
            foreach (DataTable dt in dataSet.Tables) if (dt.Rows.Count > 0) return true;
            return false;
        }




        protected void btnCreatePost_Click(object sender, EventArgs e)
        {



            //File Upload

            HttpPostedFile postedFile = PostedFile.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;
            int UploadedImageId;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" ||
                fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes(Convert.ToInt32(stream.Length));

                using (SqlConnection conFile = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("spImageUpload", conFile);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramName = new SqlParameter()
                    {
                        ParameterName = "@Name",
                        Value = fileName

                    };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@Size",
                        Value = fileSize

                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes

                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output

                    };
                    cmd.Parameters.Add(paramNewId);

                    conFile.Open();

                    if(cmd.ExecuteNonQuery() == 0)
                    {
                        lblUploadMessage.Text = "invalid file format, File upload failed";
                        lblUploadMessage.ForeColor = System.Drawing.Color.Red;
                        return;
                    }

                    UploadedImageId =(int) cmd.Parameters["@NewId"].Value;


                    conFile.Close();

                    lblUploadMessage.Text = "File Uploaded Successfully";
                    lblUploadMessage.ForeColor = System.Drawing.Color.Green;

                }
            }
            else
            {
                
                lblUploadMessage.Text = "File upload failed, invalid file format, .jpg, .jpeg, .bmp, .png and  .gif are allowed only";
                lblUploadMessage.ForeColor = System.Drawing.Color.Red;

                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Post add failed, something went wrong";

                return;
            }

            // Add Post
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BLOGDB"].ConnectionString))
            {
                string Name = txtPostTitle.Text;
                string Content = txtPostcontent.Text;
                int Topic = Convert.ToInt32(topicList.SelectedItem.Value);
                int UserId=(int)Session["UserId"];
                

                
                SqlCommand cmd = new SqlCommand("spCreatePost", con);
                cmd.CommandType = CommandType.StoredProcedure;


                //--prepare sql parameter


                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = "@Name",
                    Value = Name
                };
                cmd.Parameters.Add(paramName);

                SqlParameter paramImageId = new SqlParameter()
                {
                    ParameterName = Convert.ToString("@UploadedImageId"),
                    Value = UploadedImageId
                };
                cmd.Parameters.Add(paramImageId);


                SqlParameter paramContent = new SqlParameter()
                {
                    ParameterName = Convert.ToString("@Content"),
                    Value = Content
                };
                cmd.Parameters.Add(paramContent);

                SqlParameter paramTopic = new SqlParameter()
                {
                    ParameterName = Convert.ToString("@Topic"),
                    Value = Topic
                };
                cmd.Parameters.Add(paramTopic);

                SqlParameter paramUserId = new SqlParameter()
                {
                    ParameterName = Convert.ToString("@UserId"),
                    Value = UserId
                };
                cmd.Parameters.Add(paramUserId);





                con.Open();


                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Post added successfully";
                    txtPostTitle.Text = "";
                    txtPostcontent.Text = "";
                    topicList.SelectedItem.Value = "";
                }
                else
                {
                    lblMessage.Text = "Post couldn't added, Something went wrong";
                }
                

            }

        }
    }
}