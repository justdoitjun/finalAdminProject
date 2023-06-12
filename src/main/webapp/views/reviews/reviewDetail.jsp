<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <!-- Leaflet Maps-->
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
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
<div class="container-fluid">
  <div class="row">
    <div class="col-lg-7 col-xl-5 px-4 pb-4 ps-xl-5 pe-xl-5">
      <section class="mx-n4 mx-xl-n5 mb-4 mb-xl-5">
        <!-- Slider main container-->
        <div class="swiper-container booking-detail-slider">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper">
            <!-- Slides-->
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Our street"></div>
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Outside"></div>
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1494526585095-c41746248156.jpg" alt="Rear entrance"></div>
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen"></div>
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom"></div>
            <div class="swiper-slide"><img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom"></div>
          </div>
          <div class="swiper-pagination swiper-pagination-white"></div>
          <div class="swiper-button-prev swiper-button-white"></div>
          <div class="swiper-button-next swiper-button-white">   </div>
        </div>
      </section>
      <!-- Breadcrumbs -->
      <ol class="breadcrumb ps-0  justify-content-start">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item"><a href="user-grid.html">Your trips</a></li>
        <li class="breadcrumb-item active">Trip to London   </li>
      </ol>
      <div class="text-block">
        <p class="subtitle">Monday Apr 17 - Tuesday Apr 18</p>
        <h1 class="hero-heading mb-3">Modern Apt - Vibrant Neighborhood</h1>
      </div>
      <div class="text-block">
        <h6 class="mb-4">1 night in London</h6>
        <div class="row mb-3">
          <div class="col-md-6 d-flex align-items-center mb-3 mb-md-0">
            <div class="date-tile me-3">
              <div class="text-uppercase"> <span class="text-sm">Apr</span><br><strong class="text-lg">17</strong></div>
            </div>
            <p class="text-sm mb-0">Wednesday check-in<br>3PM - 7PM</p>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <div class="date-tile me-3">
              <div class="text-uppercase"> <span class="text-sm">Apr</span><br><strong class="text-lg">18</strong></div>
            </div>
            <p class="text-sm mb-0">Thursday check-out<br>11AM</p>
          </div>
        </div>
      </div>
      <div class="text-block">
        <div class="row">
          <div class="col-sm">
            <h6>Address</h6>
            <p class="text-muted">Ap #867, 859 Sit Rd., London</p>
          </div>
          <div class="col-sm">
            <h6>Phone</h6>
            <p class="text-muted">+421 454 897 545</p>
          </div>
        </div>
      </div>
      <div class="text-block">
        <div class="d-flex align-items-center justify-content-between mb-3">
          <div>
            <h6>Entire appartment</h6>
            <p class="text-muted mb-0">Hosted by <a href="user-profile.html" class="text-reset">Jack London</a></p>
          </div><a href="user-profile.html"><img class="avatar avatar-lg p-1 flex-shrink-0 ms-4" src="img/avatar/avatar-10.jpg" alt="Jack London"></a>
        </div>
      </div>
      <div class="text-block">
        <h6 class="mb-3">Who's coming</h6>
        <div class="row mb-3">
          <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="img/avatar/avatar-0.jpg" alt="Ondrej"><br>Ondrej</div>
          <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="img/avatar/avatar-1.jpg" alt="Julie"><br>Julie</div>
          <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="img/avatar/avatar-2.jpg" alt="Barbora"><br>Barbora</div>
        </div>
      </div>
      <div class="text-block">
        <div class="row">
          <div class="col">
            <h6> Total cost</h6>
            <p class="text-muted">$499.50</p>
          </div>
          <div class="col align-self-center">
            <p class="text-end d-print-none"><a class="btn btn-link text-muted" href="user-invoice.html"><i class="far fa-file me-2"></i>Your invoice</a></p>
          </div>
        </div>
      </div>
      <div class="text-block">
        <h6 class="mb-4">Things to keep in mind</h6>
        <ul class="list-unstyled">
          <li class="mb-2">
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-child text-secondary fa-fw text-center"></i></div>
              <div><span class="text-sm">Not suitable for children and infants - The entrance staircase doesn't have handrails</span></div>
            </div>
          </li>
          <li class="mb-2">
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-glass-cheers text-secondary fa-fw text-center"></i></div>
              <div><span class="text-sm">No parties or events</span></div>
            </div>
          </li>
          <li class="mb-2">
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-smoking-ban text-secondary fa-fw text-center"></i></div>
              <div><span class="text-sm">No smoking</span></div>
            </div>
          </li>
          <li class="mb-2">
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-cat text-secondary fa-fw text-center"></i></div>
              <div><span class="text-sm">No pets</span></div>
            </div>
          </li>
        </ul>
        <div class="collapse" id="moreRules">
          <ul class="list-unstyled">
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-child text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">Not suitable for children and infants - The entrance staircase doesn't have handrails</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-glass-cheers text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">No parties or events</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-smoking-ban text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">No smoking</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-cat text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">No pets</span></div>
              </div>
            </li>
          </ul>
        </div>
        <button class="btn btn-link btn-collapse ps-0 text-muted" type="button" data-bs-toggle="collapse" data-bs-target="#moreRules" aria-expanded="false" aria-controls="moreRules" data-expanded-text="Show less" data-collapsed-text="Show more">Show more</button>
      </div>
      <div class="text-block d-print-none">
        <button class="btn btn-link ps-0" onclick="window.print()"><i class="fa fa-print me-2"></i>Print </button>
      </div>
    </div>
    <div class="col-lg-5 col-xl-7 map-side-lg px-lg-0">
      <div class="map-full shadow-left" id="detailSideMap"></div>
    </div>
  </div>
</div>
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
  // ------------------------------------------------------- //
  //   Inject SVG Sprite -
  //   see more here
  //   https://css-tricks.com/ajaxing-svg-sprite/
  // ------------------------------------------------------ //
  function injectSvgSprite(path) {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", path, true);
    ajax.send();
    ajax.onload = function(e) {
      var div = document.createElement("div");
      div.className = 'd-none';
      div.innerHTML = ajax.responseText;
      document.body.insertBefore(div, document.body.childNodes[0]);
    }
  }
  // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
  // use your own URL in production, please :)
  // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
  //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
  injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

</script>
<!-- jQuery-->
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
<!-- Map-->
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
<!-- Available tile layers-->
<script src="js/map-layers.js"> </script>
<script src="js/map-detail.js">                               </script>
<script>
  createDetailMap({
    mapId: 'detailSideMap',
    mapZoom: 18,
    mapCenter: [40.732346, -74.0014247],
    markerShow: true,
    markerPosition: [40.732346, -74.0014247],
    markerPath: 'img/marker.svg',
  })
</script>
</body>
</html>
