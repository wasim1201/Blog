<%@ Page Title="Admin Section- Manage Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="Blog.ControlPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


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

                <h3 class="page-title">Manage Posts</h3>

                <table>

                    <thead>
                        <th>S No</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th colspan="3">Action</th>
                    </thead>

                    <tbody>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postis first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postis first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>


                        <tr>
                            <td>1</td>
                            <td>This is first postis first postis first postis is first postis first postis first postis first postfirst post</td>
                            <td>Ashraf</td>
                            <td class="edit"><a href="">Edit</a></td>
                            <td class="delete"><a href="">Delete</a></td>
                            <td class="publish"><a href="">Publish</a></td>
                        </tr>

                       


                    </tbody>


                </table>
            </div>

        </div>
        <%-- //Admin content --%>
    </div>






    <%-- // Admin Page Wrapper --%>
</asp:Content>
