<%@ Page Title="Admin Section- Create Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="Blog.CreatePost" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/classic/ckeditor.js"></script>



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
                <li><a href="#">Manage Posts</a></li>
                <li><a href="#">Manage Users</a></li>
                <li><a href="#">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <a href="CreatePost.aspx" class="btn btn-primary">Add Post</a>
                <a href="ControlPanel.aspx" class="btn btn-primary">Manage Post</a>
            </div>

            <div class="content">

                <h3 class="page-title">Create Post</h3>

                  <form action="CreatePost.aspx" method="post">

                <div>

                    <label>Title</label>
                    <input type="text" name="Title" class="text-input" />
                </div><br />

                <div>
                    <label>Write Your Article </label>
                    <div id="editor"></div>
                </div><br />

                <div>
                    <label>Select Your Article Image</label>
                    <input type="File" name="image" class="text-input text-input-create-post"/>
                </div><br />

                <div>
                    <label>Select Topic</label>
                    <select name="topic" id="" class="text-input">
                        <option value="Maths">Maths</option>
                        <option value="Physics">Physics</option>
                        <option value="Physics">Chemistry</option>
                        <option value="Physics">History</option>
                        <option value="Physics">Politics</option>
                        <option value="Physics">Geography</option>
                        <option value="Physics">Data sciecnce</option>
                    </select>

                </div><br />

                      <button type="submit" class="btn btn-primary">Add Post</button>

                  </form>
            </div>

        </div>
        <%-- //Admin content --%>
    </div>


    <%-- // Admin Page Wrapper --%>

    <%-- CK Editor --%>



    <script>
        ClassicEditor
            .create(document.querySelector('#editor'))
            .catch(error => {
                console.error(error);
            });

        
    </script>


</asp:Content>
