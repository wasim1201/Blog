<%@ Page Title="Admin Section- Add Topics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTopics.aspx.cs" Inherits="Blog.AddTopics" %>

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
                <%--<a href="AddTopics.aspx" class="btn btn-primary">Add Topic</a>--%>
                <a href="ManageTopics.aspx" class="btn btn-primary">Manage Topics</a>
            </div>

            <div class="content">

                <h3 class="page-title">Add Topics</h3>

                <form action="AddTopics.aspx" method="post">



                    <div>

                        <label>Name</label>
                        <asp:TextBox Columns="130" type="text" ID="txtTopicName" CssClass="text-input" 
                            runat="server" placeholder="Enter Topic" ToolTip="Enter Topic Name" />

                         <asp:RequiredFieldValidator  id="TopicName" runat="server" Style="color: red;"
                            ErrorMessage="Select a Topic Name"
                            ControlToValidate="txtTopicName"></asp:RequiredFieldValidator>

                    </div>
                    <br />



                    <div>
                        <label>Description</label>
                    </div>

                    <div>
                        <asp:TextBox runat="server"  Rows="10" Columns="130" TextMode="MultiLine" ID="txtDescription" 
                            name="textEditor" CssClass="text-input"></asp:TextBox>

                        <asp:RequiredFieldValidator  id="RequiredFieldValidator1" runat="server" Style="color: red;"
                            ErrorMessage="Select a Topic Description"
                            ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                    </div>

                    <br />
                    <br />


                    <asp:Button Text="Add" runat="server" ID="btnAddTopic" type="submit" class="btn btn-primary" OnClick="btnAddTopic_Click" />

                </form>
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" ></asp:Label>

            </div>

        </div>


        <%-- //Admin content --%>
    </div>


    <%-- // Admin Page Wrapper --%>

    <%-- CK Editor --%>



    <script>

        var editor = CKEDITOR.replace("editor");
    </script>



</asp:Content>
