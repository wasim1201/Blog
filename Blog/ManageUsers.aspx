<%@ Page Title="Admin Section- Manage Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Blog.ManageUsers" %>

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
                <li><a href="ControlPanel">Manage Posts</a></li>
                <li><a href="ManageUsers">Manage Users</a></li>
                <li><a href="ManageTopics">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <asp:Button runat="server" ID="AddUser" OnClick="AddUser_Click" CssClass="btn btn-primary" Text="Add User"/>
                <%--<a href="ControlPanel.aspx" class="btn btn-primary">Manage Post</a>--%>
            </div>

            <div class="content">

                <h3 class="page-title">Manage Users</h3>

                <table>

                    <thead>
                        <th>S No</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th colspan="3">Action</th>
                    </thead>

                    <tbody>

                   



                    </tbody>


                </table>
            </div>

        </div>
        <%-- //Admin content --%>
    </div>



    <%-- // Admin Page Wrapper --%>
</asp:Content>
