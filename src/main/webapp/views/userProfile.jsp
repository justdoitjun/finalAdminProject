<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<style>
  .svg-icon {
    width: 1em;
    height: 1em;
  }
  .svg-icon path,
  .svg-icon polygon,
  .svg-icon rect {
    fill: #4691f6;
  }
  .svg-icon circle {
    stroke: #4691f6;
    stroke-width: 1;
  }
</style>
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
  <link rel="stylesheet" href="/vendor/nouislider/nouislider.css">
  <!-- Google fonts - Playfair Display-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
  <!-- Google fonts - Poppins-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="/vendor/magnific-popup/magnific-popup.css">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="/img/favicon.png">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body style="padding-top: 72px;">

<section class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 me-lg-auto">
        <div class="card border-0 shadow mb-6 mb-lg-0">
          <div class="card-header bg-gray-100 py-4 border-0 text-center"><a class="d-inline-block" href="profile/current"><img class="d-block avatar avatar-xxl p-2 mb-2" src="/img/avatar/avatar-10.jpg" alt=""></a>
            <h5>${loginHost.hostName}</h5>
            <p class="text-muted text-sm mb-0">Los Angeles, CA  </p>
          </div>
          <div class="card-body p-4">
            <div class="d-flex align-items-center mb-3">

              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <use xlink:href="#edit-1"> </use>
                </svg>
              </div>
              <a href="/profile/myinfo" >
              <div>
                <p class="mb-0"><spring:message code="user.infoEdit"/></p>
              </div>
              </a>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <svg class="svg-icon text-primary svg-icon-md">
                    <use xlink:href="#heart-1"> </use>
                  </svg>
                </svg>
              </div>
              <a href="/profile/reviews?hostId=${loginHost.hostId}">
              <div>
                <p class="mb-0">2877 reviews</p>
              </div>
              </a>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <use xlink:href="#house-1"> </use>
                </svg>
              </div>
              <a href="/marker/address?hostId=${loginHost.hostId}">
              <div>
                <p class="mb-0"><spring:message code="user.infoRoom"/></p>
              </div>
              </a>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <svg class="svg-icon text-primary svg-icon-md">
                    <use xlink:href="#diary-1"> </use>
                  </svg>
                </svg>
              </div>
              <a  href="/bookinglist">
              <div>
                <p class="mb-0"><spring:message code="user.infoReservation"/></p>
              </div>
              </a>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <use xlink:href="#mail-1"> </use>
                </svg>
              </div>
              <div>
                <p class="mb-0"><a href="/chatroom?hostId=${loginHost.hostId}"><spring:message code="user.infoMessenger"/></a></p>
              </div>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                <svg class="svg-icon text-primary svg-icon-md">
                  <svg class="svg-icon text-primary svg-icon-md">
                    <use xlink:href="#money-1"> </use>
                  </svg>
                </svg>
              </div>
              <a  href="/profile/finance">
                <div>
                  <p class="mb-0"><spring:message code="user.infoInvestment"/></p>
                </div>
              </a>
            </div>

            <hr>
            <h6>${loginHost.hostName} provided</h6>
            <ul class="card-text text-muted">
              <li>Government ID</li>
              <li>Email address</li>
              <li>Phone number</li>
            </ul>
          </div>
        </div>
      </div>

      <c:choose>
        <c:when test="${centerUserProfile == null}">
          <jsp:include page="centerUserProfile.jsp"/>
        </c:when>
        <c:otherwise>
          <jsp:include page="${centerUserProfile}.jsp"/>
        </c:otherwise>
      </c:choose>


    </div>
  </div>
</section>

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
<script src="/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="/vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="/js/theme.js"></script>
</body>
</html>
