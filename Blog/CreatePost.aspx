<%@ Page Title="Admin Section- Create Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="Blog.CreatePost" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>



    <%-- Remove footer from control panel --%>
    <style type="text/css">
        .footer {
            display: none;
        }
    </style>


    <%-- Admin Page Wrapper--%>
    <div class="admin-wrapper control-panel ">


        <%-- Left sidebar --%>

        <div class="left-sidebar">

            <ul>
                <li><a href="ControlPanel">Manage Posts</a></li>
                <li><a href="ManageUsers">Manage Users</a></li>
                <li><a href="ManageTopics">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <%--<a href="CreatePost.aspx" class="btn btn-primary">Add Post</a>--%>
                <a href="ControlPanel.aspx" class="btn btn-primary">Manage Post</a>
            </div>

            <div class="content">

                <h3 class="page-title">Create Post</h3>

                <form action="CreatePost.aspx" method="post">

                    <div>

                        <label>Title</label>
                        <asp:TextBox runat="server" ID="txtPostTitle" type="text" name="Title" class="text-input" />

                        <asp:RequiredFieldValidator  runat="server" Style="color: red;"
                            ErrorMessage="Please enter the Title"
                            ControlToValidate="txtPostTitle"></asp:RequiredFieldValidator>
                    </div>
                    <br />



                    <div>
                        <label>Select Your Article Image</label>
                        <asp:FileUpload runat="server" ID="PostedFile" name="uploadedImage" class="text-input text-input-create-post" />

                          <asp:RequiredFieldValidator  runat="server" Style="color: red;"
                            ErrorMessage="Upload an Image"
                            ControlToValidate="PostedFile"></asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div>
                        <label>Select Topic</label>
                        <asp:DropDownList ID="topicList" runat="server" AutoPostBack="false" name="topic" class="text-input">
                        </asp:DropDownList>

                        <asp:RequiredFieldValidator  id="ddTopics" runat="server" Style="color: red;"
                            ErrorMessage="Select a Topic"
                            ControlToValidate="topicList"></asp:RequiredFieldValidator>


                    </div>
                    <br />

                    <div>
                        <label>Write Your Article </label>
                         
                    </div>

                    <div>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtPostcontent" name="textEditor" Columns="130" Rows="20" style="white-space: pre-wrap;"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator  runat="server" Style="color: red;"
                            ErrorMessage="Please write an Article"
                            ControlToValidate="txtPostcontent"></asp:RequiredFieldValidator>
                    </div>

                    <br />
                    <br />


                    <asp:Button Text="Submit Post" runat="server" type="submit" class="btn btn-primary" OnClick="btnCreatePost_Click" />

                </form>

                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblUploadMessage" runat="server"></asp:Label>



            </div>

        </div>
        <%-- //Admin content --%>
    </div>


    <%-- // Admin Page Wrapper --%>

    <%-- CK Editor --%>
</asp:Content>
