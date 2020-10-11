<%-- 
    Document   : UpdateProfile
    Created on : 7 Oct, 2020, 8:55:08 PM
    Author     : alishashewale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="booking.html">Book Online</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="login.html">Login</a></li>
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

            <form action="#" class="p-5 bg-white">
                <h2 class="mb-4 site-section-heading" style="font-size:42px">Update Profile and Biller Information</h2>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="text-center">
                            <img src="http://lorempixel.com/200/200/people/9/" class="avatar img-circle img-thumbnail" alt="avatar">
                            <h6>Upload a different photo...</h6>
                            <input type="file" class="text-center center-block well well-sm">
                        </div>
                    </div>
                    <!-- edit form column -->
                    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">

                        <h3 style="font-size:30px; padding-left:14px">Personal information</h3>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">First name:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="Beth" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Last name:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Company:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="Beth Hairdresser" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="bethemail@gmail.com" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Time Zone:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select id="user_time_zone" class="form-control">
                                            <option value="Hawaii">(GMT-10:00) Australia</option>
                                            <option value="Alaska">(GMT-09:00) Alaska</option>
                                            <option value="Pacific Time (US & Canada)">(GMT-08:00) Pacific Time (US & Canada)</option>
                                            <option value="Arizona">(GMT-07:00) Arizona</option>
                                            <option value="Mountain Time (US & Canada)">(GMT-07:00) Mountain Time (US & Canada)</option>
                                            <option value="Central Time (US & Canada)" selected="selected">(GMT-06:00) Central Time (US & Canada)</option>
                                            <option value="Eastern Time (US & Canada)">(GMT-05:00) Eastern Time (US & Canada)</option>
                                            <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Home Address:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Contact no:</label>
                                <div class="col-lg-8">
                                    <input type="tel" id="phone" name="phone" class="form-control" placeholder="" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-3 control-label">Email:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="bethemail@gmail.com" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Initial Password:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="11111122333" type="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Confirm password:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="11111122333" type="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>

                                <div class="col-md-8">
                                    <input class="btn btn-primary" value="Save Changes" type="button">
                                    <span></span>
                                    <input class="btn btn-default" value="Cancel" type="reset">
                                </div>
                            </div> 
                            <br>
                            <h3 style="font-size:30px; padding-left:14px">Billing information</h3>
                            <!--
                                                    <form class="form-horizontal" role="form">
                                                        <label class="col-lg-3 control-label">Name on Invoice:</label>
                            
                                                         <form class="form-horizontal" role="form">-->
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Name on Invoice:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="" type="text">
                                </div>
                            </div>

                            <!--                        <div class="form-group">
                                                        <label class="col-lg-3 control-label">Company:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="Beth Hairdresser" type="text">
                                                        </div>
                                                    </div>-->

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="" type="text">
                                </div>
                            </div>
                            <!--                        <div class="form-group">
                                                        <label class="col-lg-3 control-label">Address:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="" type="text">
                                                        </div>
                                                    </div>
                                                             
                                                             
                                                             
                                                                     <div class="form-group">
                                                        <label class="col-lg-3 control-label">City:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-3 control-label">State:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-3 control-label">Country:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-3 control-label">Post Code:</label>
                                                        <div class="col-lg-8">
                                                            <input class="form-control" value="" type="text">
                                                        </div>
                                                    </div>-->

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Preferred mode of payment:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" value="" placeholder="Cash">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>

                                <div class="col-md-8">
                                    <input class="btn btn-primary" value="Save Changes" type="button">
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