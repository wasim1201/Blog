<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog._Default" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />
    <link rel="stylesheet" type="text/css" href="Site.css" />

    

    <div class="page-wrapper home">

        <!-- Post Slider -->

        <div runat="server" id="TrendsDiv"  class="post-slider">

            <%-- <div class="prev">Prev</div>
            <div class="next">Next</div>--%>

            <img class="prev" src="images/arrow_back_ios_FILL0_wght400_GRAD0_opsz24.png" />
            <img class="next" src="images\arrow_forward_ios_FILL0_wght400_GRAD0_opsz24.png" />

            <%--<span class="material-symbols-outlined next">arrow_forward_ios</span>
            <span class="material-symbols-outlined prev">arrow_back_ios
            </span>--%>


            <h1 id="Trends" runat="server" class="slider-title">Trending posts</h1>

            <div class="post-wrapper">

                <asp:DataList runat="server" ID="TrendsDataList" RepeatDirection="Horizontal" RepeatColumns="5">
                    <ItemTemplate>

                        <div class="post">
                            <img class="slider-image" src='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                            <div class="post-info">
                                <h4>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# "~/PostDetail.aspx?Id="+Eval("Id") +"&Title="+Eval("Title") %>'><%#Eval("Title") %> </asp:HyperLink></h4>
                                <%# Eval("Name") %> 
                        &nbsp;
                        <%# Eval("CreatedAt") %>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:DataList>

            </div>


        </div>
    </div>




    <%-- CONTENT --%>
    <div class="content clearfix">

        <%-- main content --%>
        <div class="main-content">
            <h1 runat="server" id="RecentPost" class="recent-post-title">Recent Posts</h1>

            <asp:DataList runat="server" ID="postDataList" CssClass="postDataList">
                <ItemTemplate>
                    <div class="post" runat="server">
                        <div id="div-post-image">
                            <img runat="server" id="image" class="post-image" src='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                        </div>

                        <div class="post-preview">

                            <h2 class="post-title">
                                <asp:HyperLink NavigateUrl='<%# "~/PostDetail.aspx?Id="+Eval("Id")+"&Title="+ Eval("Title") %>' runat="server"><%#Eval("Title")%></asp:HyperLink></h2>
                            <i class="fa-regular fa-user"></i>&nbsp;&nbsp <%#Eval("Name")%>
                               &nbsp;
                               &nbsp;

                            <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;<%#Eval("CreatedAt")%>

                            <br />
                            <br />

                            <p class="preview-test"><%#Eval("Body")%></p>



                        </div>


                    </div>


                </ItemTemplate>
            </asp:DataList>
        </div>
        <%-- sidebar  --%>
        <div class="sidebar home">

            <!-- Section -->
            <div class="section search">

                <h2 class="section-title">Search</h2>
                <input type="text" name="search-term" class="text-input" placeholder="serach...">
            </div>

            <div class="section topics">
                <h2 class="section-title">Topics</h2>

                <asp:DataList runat="server" ID="TopicDataList" CssClass="DataList">
                    <ItemTemplate>

                        <ul>
                            <li>
                                <asp:LinkButton runat="server" ID="SearchTopic" OnClick="SearchTopic_Click" CommandName="TopicId" CommandArgument='<%#Eval("Id")+";"+ Eval("Name") %>'><%# Eval("Name")%></asp:LinkButton></li>

                        </ul>


                    </ItemTemplate>
                </asp:DataList>

            </div>

        </div>

    </div>

   

</asp:Content>




