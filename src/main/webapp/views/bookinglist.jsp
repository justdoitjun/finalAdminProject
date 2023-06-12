
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body style="padding-top: 72px;">
<header class="header">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
            <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="index.html"><img src="img/logo.svg" alt="Directory logo"></a>
                <form class="form-inline d-none d-sm-flex" action="#" id="search">
                    <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
                        <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                        <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
                    </div>
                </form>
            </div>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
                    <div class="input-label-absolute input-label-absolute-left w-100">
                        <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                        <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
                    </div>
                </form>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Home</a>
                        <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
                    </li>
                    <!-- Megamenu-->
                    <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Template</a>
                        <div class="dropdown-menu megamenu py-lg-0">
                            <div class="row">
                                <div class="col-lg-9">
                                    <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Homepage</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Restaurants</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Rooms</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Blog</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Pages</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Pages</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Host</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">User</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row megamenu-services d-none d-lg-flex ps-lg-5">
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#destination-map-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Best rentals</h6>
                                                    <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#money-box-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Earn points</h6>
                                                    <p class="mb-0 text-muted text-sm">And get great rewards</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#customer-support-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">020-800-456-747</h6>
                                                    <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#secure-payment-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Secure Payment</h6>
                                                    <p class="mb-0 text-muted text-sm">Secure Payment</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                            </div>
                        </div>
                    </li>
                    <!-- /Megamenu end-->
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Docs</a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                            <div class="dropdown-divider"></div>
                            <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                        </div>
                    </li>
                    <li class="nav-item dropdown ms-lg-3"><a id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <img class="avatar avatar-sm avatar-border-white me-2" src="img/avatar/avatar-10.jpg" alt="Jack London"></a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdownMenuLink"><a class="dropdown-item" href="user-booking-1.html">Booking process - 4 pages </a><a class="dropdown-item" href="user-grid.html">Bookings &mdash; grid view </a><a class="dropdown-item" href="user-booking-detail.html">Booking detail </a>
                            <div class="dropdown-divider"></div><a class="dropdown-item" href="login.html"><i class="fas fa-sign-out-alt me-2 text-muted"></i> Sign out</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /Navbar -->
</header>
<section class="py-5">
    <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Host view   </li>
        </ol>
        <div class="d-flex justify-content-between align-items-end mb-5">
            <h1 class="hero-heading mb-0">정산하기</h1><a class="btn btn-link text-muted" href="#">Past bookings</a>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row mb-5">
            <div class="me-3">
                <p class="mb-3 mb-lg-0">You have <strong>12 bookings</strong> in your property</p>
            </div>
            <div class="text-center">
                <label class="form-label me-2" for="form_sort">Sort by</label>
                <select class="selectpicker me-3 mb-3 mb-lg-0" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                    <option value="sortBy_0">Newest   </option>
                    <option value="sortBy_1">Oldest   </option>
                    <option value="sortBy_2">Paid   </option>
                </select><a class="btn btn-outline-secondary" href="#"><i class="fa fa-download me-2"></i>Download CSV</a>
            </div>
        </div>




        <div class="list-group shadow mb-5">

            <div class="list-group-item list-group-item-action p-4">
                <div class="row">
                    <div class="col-lg-12 mb-3">
                        <button id="select-all-btn" checked="false" class="btn btn-primary">모두 선택</button>
                        <button id="delete-btn" class="btn btn-primary" >삭제</button>
                    </div>
                </div>
            </div>

            <a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">

                <div class="row">

                <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                    <div class="d-flex align-items-center mb-3">
                        <input type="checkbox"  class="form-check-input me-3" id="checkbox1">
                        <h2 class="h5 mb-0">Meredith Goodwin</h2>
                        <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
                    </div>
                    <p class="text-sm text-muted">Double Room</p>
                    <span class="badge badge-pill p-2 badge-secondary-light">February 16, 2023 - February 19, 2023</span>
                </div>







                <div class="col-lg-8">



                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">Rate type</h6>
                            <p class="text-sm fw-bold">Bed & Breakfast</p>
                            <h6 class="label-heading">Nights </h6>
                            <p class="text-sm fw-bold mb-0">3</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Occupancy</h6>
                            <p class="text-sm fw-bold">1 pax</p>
                            <h6 class="label-heading">Charge</h6>
                            <p class="text-sm fw-bold mb-0">$244.42</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Booked Date</h6>
                            <p class="text-sm fw-bold">March 16, 2023                                        </p>
                            <h6 class="label-heading">Arrival Time</h6>
                            <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>Confirmed</span>
                        </div>
                    </div>
                </div>
            </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">    <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                <div class="d-flex align-items-center mb-3">
                    <input type="checkbox" class="form-check-input me-3" id="checkbox2">
                    <h2 class="h5 mb-0">Weeks Garrett</h2>
                    <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-1.jpg" alt="Jack London">
                </div>
                <p class="text-sm text-muted">Double Room</p>
                <span class="badge badge-pill p-2 badge-secondary-light">March 14, 2023 - March 17, 2023</span>
            </div>

                <div class="col-lg-8">



                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">Rate type</h6>
                            <p class="text-sm fw-bold">Bed & Breakfast</p>
                            <h6 class="label-heading">Nights </h6>
                            <p class="text-sm fw-bold mb-0">3</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Occupancy</h6>
                            <p class="text-sm fw-bold">3 pax</p>
                            <h6 class="label-heading">Charge</h6>
                            <p class="text-sm fw-bold mb-0">$495.73</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Booked Date</h6>
                            <p class="text-sm fw-bold">March 14, 2023                                        </p>
                            <h6 class="label-heading">Arrival Time</h6>
                            <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-muted text-sm text-uppercase"><i class="fa fa-times fa-fw me-2"> </i>Confirmed</span>
                        </div>
                    </div>
                </div>
            </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">
                <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                    <div class="d-flex align-items-center mb-3">
                        <input type="checkbox" class="form-check-input me-3" id="checkbox3">
                        <h2 class="h5 mb-0">Fisher Bauer</h2>
                        <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-2.jpg" alt="Jack London">
                    </div>
                    <p class="text-sm text-muted">Double Room</p>
                    <span class="badge badge-pill p-2 badge-danger-light">March 10, 2023 - March 13, 2023</span>
                </div>

                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">Rate type</h6>
                            <p class="text-sm fw-bold">Bed & Breakfast</p>
                            <h6 class="label-heading">Nights </h6>
                            <p class="text-sm fw-bold mb-0">3</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Occupancy</h6>
                            <p class="text-sm fw-bold">2 pax</p>
                            <h6 class="label-heading">Charge</h6>
                            <p class="text-sm fw-bold mb-0">$938.48</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Booked Date</h6>
                            <p class="text-sm fw-bold">March 10, 2023                                        </p>
                            <h6 class="label-heading">Arrival Time</h6>
                            <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>Confirmed</span>
                        </div>
                    </div>
                </div>
            </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">

                <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                    <div class="d-flex align-items-center mb-3">
                        <input type="checkbox" class="form-check-input me-3" id="checkbox4">
                        <h2 class="h5 mb-0">Aguilar Webb</h2>
                        <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-3.jpg" alt="Jack London">
                    </div>
                    <p class="text-sm text-muted">Double Room</p>
                    <span class="badge badge-pill p-2 badge-success-light">April 09, 2023 - April 13, 2023</span>
                </div>


                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">Rate type</h6>
                            <p class="text-sm fw-bold">Bed & Breakfast</p>
                            <h6 class="label-heading">Nights </h6>
                            <p class="text-sm fw-bold mb-0">4</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Occupancy</h6>
                            <p class="text-sm fw-bold">3 pax</p>
                            <h6 class="label-heading">Charge</h6>
                            <p class="text-sm fw-bold mb-0">$955.07</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Booked Date</h6>
                            <p class="text-sm fw-bold">April 09, 2023                                        </p>
                            <h6 class="label-heading">Arrival Time</h6>
                            <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-muted text-sm text-uppercase"><i class="fa fa-times fa-fw me-2"> </i>Confirmed</span>

                            </div>
                    </div>
                </div>
            </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">
                <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                    <div class="d-flex align-items-center mb-3">
                        <input type="checkbox" class="form-check-input me-3" id="checkbox6">
                        <h2 class="h5 mb-0">Melton Simon</h2>
                        <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-4.jpg" alt="Jack London">
                    </div>
                    <p class="text-sm text-muted">Double Room</p>
                    <span class="badge badge-pill p-2 badge-secondary-light">March 24, 2023 - March 28, 2023</span>
                </div>








                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">Rate type</h6>
                            <p class="text-sm fw-bold">Bed & Breakfast</p>
                            <h6 class="label-heading">Nights </h6>
                            <p class="text-sm fw-bold mb-0">4</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Occupancy</h6>
                            <p class="text-sm fw-bold">3 pax</p>
                            <h6 class="label-heading">Charge</h6>
                            <p class="text-sm fw-bold mb-0">$882.25</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">Booked Date</h6>
                            <p class="text-sm fw-bold">March 24, 2023                                        </p>
                            <h6 class="label-heading">Arrival Time</h6>
                            <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>Confirmed</span>

                        </div>
                    </div>
                </div>
            </div></a>
        </div>



        <p> total </p>
        <div class="table-responsive text-sm mb-5">
            <table class="table table-striped">
                <thead class="bg-gray-200">
                <tr class="border-0">
                    <th class="center">#</th>
                    <th>Guest</th>
                    <th>Rate Time</th>
                    <th class="text-end">Charge</th>
                    <th class="center">Nights</th>
                    <th class="text-end">Total</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-center">1</td>
                    <td class="fw-bold">Room Rental Services</td>
                    <td>August</td>
                    <td class="text-end">$958.00</td>
                    <td class="text-center">1</td>
                    <td class="text-end">$958.00</td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td class="fw-bold">Premium Listing</td>
                    <td>London</td>
                    <td class="text-end">$100.00</td>
                    <td class="text-center">1</td>
                    <td class="text-end">$100.00</td>
                </tr>


                <tr>
                    <td class="text-center"></td>
                    <td class="fw-bold"></td>
                    <td></td>
                    <td class="text-end"></td>
                    <td class="text-center"></td>
                    <td class="text-end">$958.00</td>
                </tr>

                </tbody>

            </table>
            <a class="btn btn-outline-secondary" text-align="center" href="#"><i class="fa fa-download me-2"></i>Enter</a>
        </div>


        <div>
            <input type="checkbox" id="showTotalTable" onchange="toggleTotalTable()">
            <label for="showTotalTable">Show Total Table</label>
        </div>
        <table id="totalTable" style="display: none;">
            <td class="text-end"></td>
            <td class="text-center"></td>
            <td class="text-end">$958.00</td>
        </table>



        <!-- Pagination -->
        <nav aria-label="Page navigation example">
            <ul class="pagination pagination-template d-flex justify-content-center">

            </ul>
        </nav>
    </div>
</section>
<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="py-6 bg-gray-200 text-muted">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
                    <ul class="list-unstyled">
                        <li><a class="text-muted" href="index.html">Rooms</a></li>
                        <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
                        <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
                        <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
                        <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Pages</h6>
                    <ul class="list-unstyled">
                        <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                        <li><a class="text-muted" href="team.html">Team                                   </a></li>
                        <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
                    <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
                    <form action="#" id="newsletter-form">
                        <div class="input-group mb-3">
                            <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                            <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                        <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- JavaScript files-->
<script>

    function getCheckboxValue()  {
        // 선택된 목록 가져오기
        const query = 'input[name="jungsan"]:checked';
        const selectedEls =
            document.querySelectorAll(query);

        // 선택된 목록에서 value 찾기
        let result = '';
        selectedEls.forEach((el) => {
            result += el.value + ' ';
        });

        // 출력
        document.getElementById('result').innerText
            = result;
    }

    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

</script>

<script>
    // "모두 선택" 버튼 클릭 시 모든 체크박스 선택
    document.getElementById("select-all-btn").addEventListener("click", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = !checkbox.checked; // 체크 상태를 반전시킴
        });
    });
</script>


<script>
    // JavaScript
    var deleteButtons = document.querySelectorAll(".delete-btn");

    deleteButtons.forEach(function(button) {
        button.addEventListener("click", function() {
            var checkbox = button.previousElementSibling;
            if (checkbox.checked) {
                button.parentNode.remove();
            }
        });
    });
</script>


<script>
    function toggleTotalTable() {
        var totalTable = document.getElementById("totalTable");
        var showTotalTableCheckbox = document.getElementById("showTotalTable");

        if (showTotalTableCheckbox.checked) {
            totalTable.style.display = "table";
        } else {
            totalTable.style.display = "none";
        }
    }
</script>




<script>
    function calculateTotal(checkbox) {
        var parentDiv = checkbox.closest('.list-group-item');
        var chargeElement = parentDiv.querySelector('.charge');
        var totalElement = document.getElementById('total');
        var total = parseFloat(totalElement.innerText.replace('$', ''));

        if (checkbox.checked && chargeElement) {
            var chargeText = chargeElement.innerText;
            var charge = parseFloat(chargeText.replace('$', ''));
            total += charge;
        } else if (!checkbox.checked && chargeElement) {
            var chargeText = chargeElement.innerText;
            var charge = parseFloat(chargeText.replace('$', ''));
            total -= charge;
        }

        totalElement.innerText = '$' + total.toFixed(2); // 총 합계 업데이트

        // total 줄 생성 또는 업데이트
        var existingTotalRow = document.getElementById('totalRow');
        if (existingTotalRow) {
            existingTotalRow.remove(); // 이미 존재하는 total 줄 제거
        }

        var table = parentDiv.querySelector('table');
        var newRow = document.createElement('tr');
        newRow.id = 'totalRow';

        var totalCell = document.createElement('td');
        totalCell.setAttribute('colspan', '3');
        totalCell.innerHTML = '<strong>Total: $' + total.toFixed(2) + '</strong>';

        newRow.appendChild(totalCell);
        table.appendChild(newRow);
    }
</script>



<script src="vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="js/theme.js"></script>
</body>
</html>