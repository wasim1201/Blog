<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog._Default" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />

    

    <div class="page-wrapper home">

        <!-- Post Slider -->

        <div class="post-slider">

            <%-- <div class="prev">Prev</div>
            <div class="next">Next</div>--%>

            <img class="prev" src="images/arrow_back_ios_FILL0_wght400_GRAD0_opsz24.png" />
            <img class="next" src="images\arrow_forward_ios_FILL0_wght400_GRAD0_opsz24.png" />

            <%--<span class="material-symbols-outlined next">arrow_forward_ios</span>
            <span class="material-symbols-outlined prev">arrow_back_ios
            </span>--%>


            <h1 class="slider-title">Trending posts</h1>

            <div class="post-wrapper">

                <div class="post">
                    <img src="images/img-book.jpg" class="slider-image" />
                    <div class="post-info">
                        <h4><a href="Login.aspx">One day your life will flash before your eyes</a></h4>
                        Wasim Akhtar
                        &nbsp;
                        March 08, 2019
                    </div>
                </div>

                <div class="post">
                    <img src="images/book-graphic.jpg" class="slider-image" />
                    <div class="post-info">
                        <h4><a href="Login.aspx">One day your life will flash before your eyes</a></h4>
                        Wasim Akhtar
                        &nbsp;
                        March 08, 2019
                    </div>
                </div>

                <div class="post">
                    <img src="images/pexels-moises-besada-7785028.jpg" class="slider-image" />
                    <div class="post-info">
                        <h4><a href="Login.aspx">One day your life will flash before your eyes</a></h4>
                        Wasim Akhtar
                        &nbsp;
                        March 08, 2019
                    </div>
                </div>

                <div class="post">
                    <img src="images/pexels-moises-besada-7785028.jpg" class="slider-image" />
                    <div class="post-info">
                        <h4><a href="Login.aspx">One day your life will flash before your eyes</a></h4>
                        Wasim Akhtar
                        &nbsp;
                        March 08, 2019
                    </div>
                </div>


                <div class="post">
                    <img src="images/img-book.jpg" class="slider-image" />
                    <div class="post-info">
                        <h4><a href="Login.aspx">One day your life will flash before your eyes</a></h4>
                        Wasim Akhtar
                        &nbsp;
                        March 08, 2019
                    </div>
                </div>

            </div>


        </div>
    </div>




    <%-- CONTENT --%>
    <div class="content clearfix">

        <%-- main content --%>
        <div class="main-content">
            <h1 class="recent-post-title">Recent Posts</h1>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="post.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>

            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>

            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>

            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


            <div class="post">
                <img class="post-image" src="Images/pexels-moises-besada-7785028.jpg">
                <div class="post-preview">

                    <h2 class="post-title"><a href="#">This is post preview</a></h2>
                    <i class="fa-regular fa-user"></i>&nbsp;&nbsp;Awa Melvin
                   &nbsp;
                   &nbsp;

                    <i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;20-03-2024
                 
                  <br />
                    <br />

                    <p class="preview-test">Lorem ipsum dolor sit amet, lectus, voluptatum magni quisquam placeat adipisci doloremque voluptatem numquam nulla nesciunt tempore autem. Eligendi porro fugiat mollitia voluptatibus? Beatae ab quidem non assumenda reiciendis quisquam quaerat.</p>
                    <a href="login.aspx" class="btn btn-default read-more ">Read More</a>
                </div>

            </div>


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

 <%-- Slick caraousel --%>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</asp:Content>

 


