<%-- 
    Document   : UpdateProfile
    Created on : 7 Oct, 2020, 8:55:08 PM
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
            
                <h2 class="mb-4 site-section-heading" style="font-size:42px">Update Profile and Biller Information</h2>
                <div class="row">
                    <!-- edit form column -->
                    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">

                        <h3 style="font-size:30px; padding-left:14px">Personal information - Only fill in fields to be changed</h3>
                        <p> ${message1} </p>
                        <form class="form-horizontal" method ="post" action="ProfileServlet">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Full name:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="client_name" value="" type="text">
                                </div>
                            </div>
                                                       
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Home Address:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="address" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Contact no:</label>
                                <div class="col-lg-8">
                                    <input type="tel" id="phone" name="phone" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Email:</label>
                                <div class="col-md-8">
                                    <input class="form-control" name="email" type="text">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-md-3 control-label">Password:</label>
                                <div class="col-md-8">
                                    <input class="form-control" name="password" type="password">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-md-3 control-label">Extra Information:</label>
                                <div class="col-md-8">
                                    <input class="form-control" name="related_information" type="text">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>

                                <div class="col-md-8">
                                    <input class="btn btn-primary" name="Save Changes" type="submit">
                                    <span></span>
                                    <input class="btn btn-default" value="Cancel" type="reset">
                                </div>
                            </div> 
                            <br>
                        </form>
                        
                        <h3 style="font-size:30px; padding-left:14px">Billing information</h3>
                        <p> ${message2} </p>
                        <form class="form-horizontal" role="form" method ="post" action="BillingServlet">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Name on Invoice:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="name" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label"> Biller Email Address:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="email" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>

                                <div class="col-md-8">
                                    <input class="btn btn-primary" value="Save Changes" type="submit">
                                    <span></span>
                                    <input class="btn btn-default" value="Cancel" type="reset">
                                </div>
                            </div> 


                        </form>
                    </div>
                </div>
        </div>
    </body>
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
</html>
