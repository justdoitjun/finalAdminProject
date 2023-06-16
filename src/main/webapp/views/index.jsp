<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>단기임대 No.1 DIGI실</title>
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
  <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <!-- Calendar -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <script src="/webjars/sockjs-client/sockjs.min.js"></script>
  <script src="/webjars/stomp-websocket/stomp.min.js"></script>

  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<script>
  let websocket = {
    id:null,
    stompClient:null,
    init:function(){
      this.id = 'host1@host.com';
      websocket.connect();
      $("#disconnect").click(function() {
        websocket.disconnect();
      });
      $("#sendall").click(function() {
        websocket.sendAll();
      });
      $("#sendme").click(function() {
        websocket.sendMe();
      });
      $("#sendto").click(function() {
        websocket.sendTo();
      });
    },
    connect:function(){
      var sid = 'host1@host.com';
      var socket = new SockJS('http://127.0.0.1:8088/ws');
      socket.withCredentials = false;
      this.stompClient = Stomp.over(socket);

      this.stompClient.connect({}, function(frame) {
        websocket.setConnected(true);
        console.log('연결: ' + frame);
        this.subscribe('/send', function(msg) {

        });
        this.subscribe('/send/'+sid, function(msg) {


        });
        this.subscribe('/send/to/'+sid, function(msg) {
          let redSpot =
                  `
                    <div class="spinner-grow text-danger spinner-grow-sm"></div>
                    `;
          $('#notificationBell').append(redSpot);
          if(msg.content1=='message'){
            $('#messageBell').append(redSpot);
          }
          console.log('받은 것'+msg);
          //send라고 하고 상대방 타인 포트ㄹ 지정해주면, 메세지를 일단 받고
          // 이 메세지에 아래처럼 덧붙여서 보낼게.
          // $("#to").prepend(
          //         "<h4>" + JSON.parse(msg.body).sendid +":"+
          //         JSON.parse(msg.body).content1
          //         + "</h4>");

        });
      });
    },
    disconnect:function(){
      if (this.stompClient !== null) {
        this.stompClient.disconnect();
      }
      websocket.setConnected(false);
      console.log("Disconnected");
    },
    setConnected:function(connected){
      if (connected) {
        console.log('connected');
        $("#status").text("Connected");
      } else {
        $("#status").text("Disconnected");
      }
    },
    sendAll:function(){
      var msg = JSON.stringify({
        'sendid' : this.id,
        'content1' : $("#alltext").val()
      });
      this.stompClient.send("/receiveall", {}, msg);
    },
    sendTo:function(){
      var msg = JSON.stringify({
        'sendid' : this.id,
        'receiveid' : 'host1',
        'content1' : '등록되었습니다'
      });
      this.stompClient.send('/receiveto', {}, msg);
    },
    sendMe:function(){
      var msg = JSON.stringify({
        'sendid' : this.id,
        'content1' : $('#metext').val()
      });
      this.stompClient.send("/receiveme", {}, msg);
    }
  };
  $(function(){

    websocket.init();
  })
</script>

<body style="padding-top: 72px;">
<header class="header">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">

    <div class="container-fluid ">
      <%--            요기 이미지가 diretory 로고임--%>
      <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="/"><img src="/img/logo.svg" alt="Directory logo"></a>
        <form class="form-inline d-none d-sm-flex" action="#" id="search">
          <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
            <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
            <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
          </div>
        </form>
      </div>
        <div class="d-flex align-items-center justify-content-end" id="notificationBell">
          <svg class="svg-icon text-primary svg-icon-sd"><use xlink:href="#customer-suppot-1"> </use></svg>
          <i class='fas fa-bell' style='font-size:24px'></i>
<%--          <div class="spinner-grow text-danger spinner-grow-sm"></div>--%>
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

          <c:choose>
            <c:when test="${loginHost == null}">
              <li class="nav-item"><a class="nav-link" href="/login">로그인</a></li>
              <li class="nav-item"><a class="nav-link" href="/register">회원가입</a></li>
            </c:when>
            <c:otherwise>

              <li class="nav-item"><a class="nav-link" href="/gpt"> <span class="spinner-grow spinner-grow-sm"></span>Chat GPT</a></li>&nbsp; &nbsp;
              <div id="messageBell">
              <li class="nav-item"><a class="nav-link" href="/chatroom?hostId=${loginHost.hostId}"> <svg class="svg-icon text-primary svg-icon-sd"><use xlink:href="#mail-1"> </use></svg></a></li>&nbsp; &nbsp;
              </div>
              <img class="d-block avatar avatar-xxs p-2 mb-2" src="/img/avatar/avatar-10.jpg">&nbsp; &nbsp;
              <li class="nav-item"><a class="nav-link" href="/profile"> ${loginHost.hostName}</a></li>&nbsp; &nbsp;
              <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
            </c:otherwise>
          </c:choose>
        </ul>
      </div>

    </div>
  </nav>
  <!-- /Navbar -->
</header>

<c:choose>
  <c:when test="${center == null}">
    <jsp:include page="center.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="${center}.jsp"/>
  </c:otherwise>
</c:choose>


<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
  <!-- Main block - menus, subscribe form-->
  <!-- Copyright section of the footer-->
  <div class="py-4 fw-light bg-gray-800 text-gray-300">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6 text-center text-md-start">
          <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
        </div>
        <div class="col-md-6">
          <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
            <li class="list-inline-item"><img class="w-2rem" src="/img/visa.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="/img/mastercard.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="/img/paypal.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="/img/western-union.svg" alt="..."></li>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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