<%@ Page Title="Post Deatail Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostDetail.aspx.cs" Inherits="Blog.PostDetail" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />


    <%-- CONTENT --%>
    <div class="content clearfix">

        <%-- main content --%>
        <div style="min-height: 800px; padding-bottom: 20px;" class="main-content single-post">
            <h1 id="PostTitle" runat="server" class="post-title"></h1>

            <br />
            <br />


            <div class="post-content">
                <p id="PostData" runat="server" />

            </div>
        </div>
        <%-- sidebar  --%>
        <div class="sidebar single">

            <!-- Section -->
            <div class="section popular">

                <h2 class="section-title">Popular Posts</h2>

                <asp:DataList runat="server" ID="PostSuggestionDataList">

                    <ItemTemplate>
                        <div class="post clearfix">
                            <img src='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' alt="">
                            <asp:LinkButton runat="server" ID="PoplularPost" CssClass="popular-link"
                                OnClick="PoplularPostDetail_Click" CommandName="PoplularPostDetail"
                                CommandArgument='<%#Eval("Id")+";"+Eval("Title") %>'> <%#Eval("Title") %></asp:LinkButton>
                        </div>
                    </ItemTemplate>

                </asp:DataList>



            </div>

            <div class="section topics">
                <h2 class="section-title">Topics</h2>
                <ul id="PostTopic">

                    <asp:DataList ID="PostTopicsDataList" runat="server">
                        <ItemTemplate>
                            <div  id="PostDetailTopicDiv">
                                <li>
                                <asp:HyperLink runat="server" CssClass="PostDetailTopicLink" NavigateUrl='<%# "Default.aspx?Id="+Eval("Id")+"&FromPostPage=Yes&Topic="+Eval("Name") %>' ID="TopicsItem"><%# Eval("Name") %></asp:HyperLink>
                            </li>
                            </div>
                            
                        </ItemTemplate>


                    </asp:DataList>

                </ul>
            </div>

        </div>

    </div>


</asp:Content>




