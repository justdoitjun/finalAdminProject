
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
                            </div>  </div>  </li>
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


        <div class="form-check form-switch d-inline-block">
            <input class="form-check-input" type="checkbox" id="showTotalTableSwitch" onchange="toggleTotalTable()">
            <label class="form-check-label" for="showTotalTableSwitch">Detail</label>
        </div>


        <table id="totalTable" table class="table table-striped" style="display: none;">
                <thead class="bg-gray-200">
                <tr class="border-0">
                    <th class="center">#</th>
                    <th>List</th>
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
                    <td>May</td>
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
                    <td class="text-end">$1058.00</td>
                </tr>

                </tbody>

            </table>

        </table>


        <div class="table-responsive text-sm mb-5">

            <a class="btn btn-outline-secondary" text-align="center" href="/total"><i class="fa fa-download me-2">정산확정</i></a>

        </div>

        <!-- Pagination -->
        <nav aria-label="Page navigation example">
            <ul class="pagination pagination-template d-flex justify-content-center">

            </ul>
        </nav>
    </div>
</section>
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
            checkbox.checked = !checkbox.checked;
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
        var showTotalTableCheckbox = document.getElementById("showTotalTableSwitch");

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

</body>
</html>

