<%@ Page Title="Post Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTopics.aspx.cs" Inherits="Blog.ManageTopics" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />


    <div class="page-wrapper-topics">

        
    <%-- Admin Page Wrapper--%>
    <div class="admin-wrapper control-panel ">


        <%-- Left sidebar --%>

        <div class="left-sidebar">

            <ul>
                <li><a href="ControlPanel">Manage Posts</a></li>
                <li><a href="ManageUsers">Manage Users</a></li>
                <li><a href="ManageTopics.aspx">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <a href="AddTopics.aspx" class="btn btn-primary">Add Topic</a>
                <%--<a href="Topics.aspx" class="btn btn-primary">Manage Topics</a>--%>
            </div>

            <div class="content">

                <h3 class="page-title">Manage Topics</h3>

                <table>

                    <thead>
                        <th>S No</th>
                        <th>Title</th>
                        <th colspan="3">Action</th>
                    </thead>

                    <tbody>

                         <asp:DataList runat="server" id="topicDataList">
                            <ItemTemplate>
                                <tr>
                                    <td><asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                    <td><%# Eval("Name") %></td>
                                    <td class="edit"><a href="#">Edit</a></td>
                                    <td class="delete"><a href="#">Delete</a></td>
                                    <td class="publish"><a href="#">Publish</a></td>
                                </tr>
                            </ItemTemplate>

                        </asp:DataList>

                    </tbody>


                </table>
            </div>

        </div>
        <%-- //Admin content --%>
    </div>


    </div>

</asp:Content>
