<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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

        <!-- /Navbar -->
    </header>
    <section class="py-5 p-print-0">
        <div class="container">
            <div class="row mb-4 d-print-none">
                <div class="col-lg-6">
                    <!-- Breadcrumbs -->
                    <ol class="breadcrumb ps-0  justify-content-start">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="user-account.html">Account</a></li>
                        <li class="breadcrumb-item active"> 정산표   </li>
                    </ol>
                </div>
                <div class="col-lg-6 text-lg-end">
                    <button class="btn btn-primary me-2"><i class="far fa-file-pdf me-2"></i> Download PDF</button>
                    <button class="btn" onclick="window.print()"><i class="fas fa-print me-2"></i> Print</button>
                </div>
            </div>
            <div class="card border-0 shadow shadow-print-0">
                <div class="card-header bg-gray-100 p-5 border-0 px-print-0">
                    <div class="row">
                        <div class="col-6 d-flex align-items-center"><img src="img/logo.svg" alt="Directory"></div>
                        <div class="col-6 text-end">
                            <h3 class="mb-0">정산표</h3>
                            <p class="mb-0">발행일, 7월 7일, 2023</p>
                        </div>
                    </div>
                </div>
                <div class="card-body p-5 p-print-0">
                    <div class="row mb-4">
                        <div class="col-sm-6 pe-lg-3">
                            <h2 class="h6 text-uppercase mb-4">투숙객</h2>
                            <h4 class="mb-1">이기현 </h4>
                            <br>
                            <h4 class="mb-1">유현손 </h4>
                            <p class="text-muted"><br><br><br><br><strong></strong></p>
                        </div>
                        <div class="col-sm-6 ps-lg-4">
                            <h2 class="h6 text-uppercase mb-4">호스트</h2>
                            <h4 class="mb-1"> 수정해야함</h4>
                            <p class="text-muted"><br><br><br><br><strong></strong></p>
                        </div>
                    </div>

                    <div class="table-responsive text-sm mb-5">
                        <table class="table table-striped">
                            <thead class="bg-gray-200">
                            <tr class="border-0">
                                <th class="center">#</th>
                                <th>방</th>
                                <th>투숙객 수</th>
                                <th class="text-end">박당 가격</th>
                                <th class="center"> 숙박일 </th>
                                <th class="text-end">총액</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center">1</td>

                                <td>한강 뷰가 너무나도 예쁜 오피스텔</td>
                                <td class="fw-bold">1명</td>
                                <td class="text-end">10만원</td>
                                <td class="text-center">3</td>
                                <td class="text-end">30만원</td>
                            </tr>
                            <tr>
                                <td class="text-center">2</td>

                                <td>깔끔하고 시설이 구비된 아파트</td>
                                <td class="fw-bold">2명</td>
                                <td class="text-end">15만원</td>
                                <td class="text-center">2</td>
                                <td class="text-end">30만원</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-7 col-lg-5 col-xl-4 ms-auto">
                            <table class="table">
                                <tbody>
                                <tr class="text-sm">
                                    <td class="fw-bold">총 액</td>
                                    <td class="text-end">60만원</td>
                                </tr>
                                <tr class="text-sm">
                                    <td class="fw-bold">VAT(10%)</td>
                                    <td class="text-end"> - 6만원</td>
                                </tr>
                                <tr>
                                    <td class="text-uppercase fw-bold">정산 금액</td>
                                    <td class="text-end fw-bold">54만원</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-gray-100 p-5 px-print-0 border-0 text-end text-sm">
                    <p class="mb-0">정산이 완료되었습니다. 등록된 계좌로 입금예정입니다.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-6 bg-gray-200 text-muted">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="fw-bold text-uppercase text-dark mb-3">SNS</div>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4">
                        <h6 class="text-uppercase text-dark mb-3">특가안내 및 정보제공 </h6>
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

            <div class="container">

                    <div class="col-md-6">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                            <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                            <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
                        </ul>


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
    </body>
    </html>






