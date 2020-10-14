<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Beth HairDresser &mdash; Beth.com</title>
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

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style1.css">

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
                                        <c:when test="${user.loggedIn()}">
                                            <li><a href="logoutServlet">Log Out</a></li>
                                            <li><a href="booking.jsp">Book Appointment</a></li>
                                            <li><a href="UpdateProfile.jsp">Update Profile</a></li>
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





            <div class="slide-one-item home-slider owl-carousel">

                <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_4.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                    <div class="container">
                        <div class="row align-items-center justify-content-center text-center">

                            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                                <h2 class="text-white font-weight-light mb-2 display-1">See Our Services!</h2>

                                <p><a href="booking.html" class="btn btn-black py-3 px-5">Book Now!</a></p>
                            </div>
                        </div>
                    </div>
                </div>  

            </div>



            <div class="site-section">
                <div class="container">

                    <div class="row">
                        <div class="col-md-6 col-lg-4 text-center mb-5 mb-lg-5">
                            <div class="h-100 p-4 p-lg-5 bg-light site-block-feature-7">


                                <span class="icon flaticon-location-pin display-3 text-primary mb-4 d-block"></span>
                                <h3 class="text-black h4">Haircut </h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum exercitationem quae id dolorum debitis.</p><br>
                                <p><strong class="font-weight-bold text-primary">$45</strong></p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 text-center mb-5 mb-lg-5">
                            <div class="h-100 p-4 p-lg-5 bg-light site-block-feature-7">

                                <span class="icon flaticon-razor display-3 text-primary mb-4 d-block"></span>
                                <h3 class="text-black h4">Hairwash and Dry</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum exercitationem quae id dolorum debitis.</p><br>
                                <p><strong class="font-weight-bold text-primary">$30</strong></p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 text-center mb-5 mb-lg-5">
                            <div class="h-100 p-4 p-lg-5 bg-light site-block-feature-7">
                                <span class="icon flaticon-shave display-3 text-primary mb-4 d-block"></span>
                                <h3 class="text-black h4">Hair color</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum exercitationem quae id dolorum debitis.</p><br>
                                <p><strong class="font-weight-bold text-primary">$60</strong></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="site-section bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mb-5">
                            <img src="images/person_1.jpg" alt="Image" class="img-md-fluid">
                        </div>
                        <div class="col-lg-6 bg-white p-md-5 align-self-center">
                            <h2 class="display-1 text-black line-height-1 site-section-heading mb-4 pb-3">New hairstyle!</h2>
                            <p class="text-black lead"><em>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam! Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</em></p>
                            <p class="lead text-black">&mdash; <em>Stellla Martin</em></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section">
                <div class="container">
                    <div class="row text-center">
                        <div class="col-md-12">
                            <h2 class="mb-4 text-black">We want your hair to look fabulous</h2>
                            <p class="mb-0"><a href="#" class="btn btn-primary py-3 px-5 text-white">Visit Our Salon Now</a></p>
                        </div>
                    </div>
                </div>
            </div>


            <footer class="site-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="mb-5">
                                <h3 class="footer-heading mb-4">About HairDresser</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe pariatur reprehenderit vero atque, consequatur id ratione, et non dignissimos culpa? Ut veritatis, quos illum totam quis blanditiis, minima minus odio!</p>
                            </div>



                        </div>
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <div class="row mb-5">
                                <div class="col-md-12">
                                    <h3 class="footer-heading mb-4">Quick Menu</h3>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="#">News</a></li>
                                        <li><a href="#">Team</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a href="about.html">About Us</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                        <li><a href="#">Membership</a></li>
                                    </ul>
                                </div>
                            </div>



                        </div>

                        <div class="col-lg-4 mb-5 mb-lg-0">


                            <div class="mb-5">
                                <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit minima minus odio.</p>

                                <form action="#" method="post">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary text-white" type="button" id="button-addon2">Send</button>
                                        </div>
                                    </div>
                                </form>

                            </div>

                        </div>

                    </div>
                    <div class="row pt-5 mt-5 text-center">
                        <div class="col-md-12">
                            <div class="mb-5">
                                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                            </div>


                        </div>

                    </div>
                </div>
            </footer>
        </div>

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

    </body>
</html>