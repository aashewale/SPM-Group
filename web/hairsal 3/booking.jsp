<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : booking
    Created on : 7 Oct, 2020, 8:59:56 PM
    Author     : alishashewale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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





            <div class="slide-one-item home-slider owl-carousel">

                <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/img_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                    <div class="container">
                        <div class="row align-items-center justify-content-center text-center">

                            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                                <h2 class="text-white font-weight-light mb-2 display-1">Online Booking</h2>


                            </div>
                        </div>
                    </div>
                </div>  

            </div>



            <div class="site-section bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 mb-5">



                            <form method ="post" action="bookingResponse.jsp" class="p-5 bg-white">
                                <h2 class="mb-4 site-section-heading">Book Now</h2>

                                <div class="row form-group">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label class="text-black" for="fname">First Name</label>
                                        <input type="text" id="fname" class="form-control" placeholder="First Name" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="text-black" for="lname">Last Name</label>
                                        <input type="text" id="lname" class="form-control" placeholder="Last Name" required>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label class="text-black" for="email">Email</label> 
                                        <input type="email" id="email" class="form-control" placeholder="Email" required>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="text-black" for="contact">Contact no.</label> 
                                        <input type="tel" id="phone" name="phone" class="form-control" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required>
                                    </div>
                                </div>

                                <sql:query var="result" dataSource="jdbc/HairDress">
                                    SELECT service_id, service_name FROM beauty_care_services
                                </sql:query>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label class="text-black" for="treatment">Service</label> 
                                        <select name="treatment">
                                            <c:forEach var="row" items="${result.rows}">
                                                <tr>
                                                    <option value="${row.service_id}">${row.service_name}</option>
                                                </tr>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label class="text-black" for="Location">Location</label> 
                                        <input type="text" id="location" class="form-control" placeholder="203 Fake St. Mountain View, Melbourne CBD, VIC">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label class="text-black" for="date">Appointment Date</label> 
                                        <input type="text" id="date" class="form-control datepicker px-2" placeholder="Date of visit">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="text-black" for="email">Time</label> 
                                        <input type="time" id="time" class="form-control" placeholder="Time">
                                    </div>
                                </div>


                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label class="text-black" for="note">Other details you may wish to highlight</label> 
                                        <textarea name="note" id="note" cols="30" rows="5" class="form-control" placeholder="Write your notes or questions here..."></textarea>
                                    </div>
                                </div>
                                <br>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <input type="submit" value="Request an Appointment" class="btn btn-primary py-2 px-4 text-white">
                                    </div>
                                </div>



                            </form>
                        </div>
                        <div class="col-md-5">

                            <div class="p-4 mb-3 bg-white">
                                <p class="mb-0 font-weight-bold">Address</p>
                                <p class="mb-4">203 Fake St. Mountain View, Melbourne CBD, VIC</p>

                                <p class="mb-0 font-weight-bold">Phone</p>
                                <p class="mb-4"><a href="#">+1 232 3235 324</a></p>

                                <p class="mb-0 font-weight-bold">Email Address</p>
                                <p class="mb-0"><a href="#">youremail@domain.com</a></p>

                            </div>

                            <div class="p-4 mb-3 bg-white">
                                <h3 class="h5 text-black mb-3">More Info</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa ad iure porro mollitia architecto hic consequuntur. Distinctio nisi perferendis dolore, ipsa consectetur? Fugiat quaerat eos qui, libero neque sed nulla.</p>
                                <br><p><a href="#" class="btn btn-primary px-4 py-2 text-white">Get In Touch</a></p>
                            </div>

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
