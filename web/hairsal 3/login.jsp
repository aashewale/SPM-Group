<%-- 
    Document   : login
    Created on : 7 Oct, 2020, 9:00:37 PM
    Author     : alishashewale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Beth HairDresser &mdash; Beth.com</title>
        <!-- Meta-Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">


        <link rel="stylesheet" href="css/aos.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Key Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">

        <!-- //Meta-Tags -->
        <!-- Index-Page-CSS -->
        <link rel="stylesheet" href="css/style1.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/custom.css" type="text/css" media="all">
        <!-- //Custom-Stylesheet-Links -->
        <!--fonts -->
        <!-- //fonts -->
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">
        <!-- //Font-Awesome-File-Links -->

        <!-- Google fonts -->
        <link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
        <!-- Google fonts -->

    </head>
    <body>
        <div class="site-wrap">

            <div class="site-mobile-menu">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>

            <header class="site-navbar py-1" role="banner">

                <div class="container-fluid">
                    <div class="row align-items-center">

                        <div class="col-6 col-xl-2" data-aos="fade-down">

                            <h1 class="mb-0"><a href="index.html" class="text-black h2 mb-0">Beth HairDresser</a></h1>
                        </div>
                        <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
                            <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

                                <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                                    <li class="has-children active">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="services.jsp">Services</a></li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <c:choose>
                                        <c:when test="${user.isAdmin()}">
                                            <li><a href="admin/home.jsp">Admin Panel</a></li>
                                            <li><a href="logoutServlet">Log Out</a></li>
                                        </c:when>
                                        <c:when test="${user.loggedIn()}">
                                            <li><a href="booking.jsp">Book Appointment</a></li>
                                            <li><a href="UpdateProfile.jsp">Update Profile</a></li>
                                            <li><a href="logoutServlet">Log Out</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="login.jsp">Login</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </nav>
                        </div>

                        <div class="col-6 col-xl-2 text-right" data-aos="fade-down">
                            <div class="d-none d-xl-inline-block">
                                <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
                                    <li>
                                        <a href="#" class="pl-0 pr-3 text-black"><span class="icon-facebook"></span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="pl-3 pr-3 text-black"><span class="icon-twitter"></span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="pl-3 pr-3 text-black"><span class="icon-instagram"></span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="pl-3 pr-3 text-black"><span class="icon-youtube-play"></span></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                        </div>

                    </div>
                </div>

            </header>


            <section class="main">
                <div class="layer">

                    <div class="bottom-grid">
                    </div>  

                    <div class="container">
                        <div class="row align-items-center justify-content-center text-center">

                            <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                                <h2 class="text-black font-weight-light mb-2 display-1">Login</h2>

                                <div class="site-">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <form action="loginServlet" method="post" class="p-5" style=" background: rgba(0,0,0,0.5);">

                                                    <div class="row form">
                                                        <div class="col-md-12">                                                           
                                                            <input type="text" name="email" class="form-control float-ct" placeholder="Email ID" required>
                                                        </div>
                                                    </div>

                                                    <br>


                                                    <div>
                                                        <div class="row form-group">
                                                            <div class="col-md-12">                                                          
                                                                <span class="fa fa-lock" aria-hidden="true"></span>

                                                                <input name="password" id="myInput" type="Password" placeholder="Password" class="form-control">

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        ${message}
                                                    </div>    
                                                    
                                                    <div class="row form">
                                                        <div class="col-md-12"><br>
                                                            <input type="submit" value="Login" class="btn btn-primary py-2 px-4 text-white">
                                                        </div>
                                                    </div>


                                                    <ul class="list-login">
                                                        <li>
                                                            <!--                                                                <a href="#" class="text-right">forgot password?</a>-->
                                                        </li>
                                                        <li class="clearfix"></li>
                                                    </ul>
                                                    <ul class="list-login-bottom">
                                                        <li class="">
                                                            <a href="register.jsp">Create New Account</a>
                                                        </li>
                                                        <li class="list-login-bottom">
                                                        <li class="">
                                                            <!--                                                                <a href="#">Need Help?</a>-->
                                                        </li>
                                                        <!--                                                            <li class="clearfix"></li>-->
                                                    </ul>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="bottom-grid1">

                                        </div>
                                    </div>

                                    </section>


                                    <script src="js/jquery-3.3.1.min.js"></script>
                                    <script src="js/jquery-migrate-3.0.1.min.js"></script>
                                    <script src="js/jquery-ui.js"></script>
                                    <script src="js/popper.min.js"></script>
                                    <script src="js/bootstrap.min.js"></script>
                                    <script src="js/owl.carousel.min.js"></script>
                                    <script src="js/jquery.stellar.min.js"></script>
                                    <script src="js/jquery.countdown.min.js"></script>
                                    <script src="js/jquery.magnific-popup.min.js"></script>
                                    <script src="js/bootstrap-datepicker.min.js"></script>
                                    <script src="js/aos.js"></script>

                                    <script src="js/main.js"></script>
        </div>
    </body>
</html>
