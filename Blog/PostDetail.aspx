<%@ Page Title="Post Deatail Page" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="PostDetail.aspx.cs" Inherits="Blog.PostDetail" %>

<asp:content id="DefaultContent" contentplaceholderid="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />


    <%-- CONTENT --%>
    <div class="content clearfix">

        <%-- main content --%>
        <div style="min-height:800px; padding-bottom:20px;"  class="main-content single-post">
            <h1 id="PostTitle" runat="server" class="post-title"></h1>

            <br />
            <br />
      

            <div class="post-content">
              <p id="PostData" runat="server"/>

            </div>
        </div>
        <%-- sidebar  --%>
        <div class="sidebar single">

            <!-- Section -->
            <div class="section popular">

                <h2 class="section-title">Popular</h2>

                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="#" class="title">How to overcome your fears dont tell to books</a>
                </div>

                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="" class="title">How to overcome your fears dont tell to books</a>
                </div>


                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="" class="title">How to overcome your fears dont tell to books</a>
                </div>


                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="" class="title">How to overcome your fears dont tell to books</a>
                </div>

                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="" class="title">How to overcome your fears dont tell to books</a>
                </div>


                <div class="post clearfix">
                    <img src="images/pexels-moises-besada-7785028.jpg" alt="">
                    <a href="" class="title">How to overcome your fears dont tell to books</a>
                </div>

            </div>

            <div class="section topics">
                <h2 class="section-title">Topics</h2>
                <ul>
                    <li><a href="#">Poems</a></li>
                    <li><a href="#">Quotes</a></li>
                    <li><a href="#">Fiction</a></li>
                    <li><a href="#">Biography</a></li>
                    <li><a href="#">Motivation</a></li>
                    <li><a href="#">Inspiration</a></li>
                    <li><a href="#">Life Lessson</a></li>
                </ul>
            </div>

        </div>

    </div>


</asp:content>




