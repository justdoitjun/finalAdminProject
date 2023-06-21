<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>

  let idCheck = {
    init:function(){
      $('#idCheck').click(function(){
        idCheck.send();
      });
    },
    send:function(){
      let hostId = $('#hostId').val();
      if (!validateEmail(hostId)) {
        $('#checkId').text('ID는 메일 주소 형식입니다.');
        return;
      }
      $.ajax({
        url:'/checkId',
        data:{'hostId':hostId},
        success:function(result){
          if(result==0){
            $('#checkId').text('사용가능합니다.');
            $('#hostName').focus();
          }else{
            $('#checkId').text('중복된 ID 입니다.');
          }
        }
      });
    }
  };
  let registerForm = {
    init:function(){
      $('#hostPwd').keyup(function(){
        var hostPwd = $('#hostPwd').val();
        var hostPwd1 = $('#hostPwd1').val();
        if(hostPwd.length<=3){
          $('#checkPwd').text('비밀번호는 4자리 이상입니다.');
        }else{
          $('#checkPwd').text('사용가능한 비밀번호 입니다.');
        }
        // if(hostPwd != hostPwd1){
        //     alert("동일한 비밀번호를 입력해 주세요");
        //     return;
        // }
      });

      $('#registerHostBtn').click(async function(){
        await $('#registerBackGroundImage').fadeOut(); //fadeOut이 완료되어야 뒤가 실행됨.
        await $('#registerHostBtn').fadeOut();
        $('#registerHostMainAfterButtonClicked').fadeIn();
        registerForm.auth();
      });

      $('#registerHostBtn2').click(()=>{
        registerForm.send();
      })
    },
    send:function(){
      var hostId = $('#hostId').val();
      var hostPwd = $('#hostPwd').val();
      var hostPwd1 = $('#hostPwd1').val();
      var hostName = $('#hostName').val();
      if(hostName == ''){
        $('#Name').focus();
        return;
      }
      if(hostPwd != hostPwd1){
        alert("동일한 비밀번호를 입력해 주세요");
        return;
      }
      $('#registerForm').attr({
        'action':'/registerImpl',
        'method':'post'
      });
      $('#registerForm').submit();
    }
  };
  function validateEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
  }
  let auth = {
    kbAuth : ()=>{
      $('kbAuthBtn').click(()=>{

      })
    }
  }

  $(function(){
    $('#registerHostMainAfterButtonClicked').hide();
    registerForm.init();
    idCheck.init();
  });
</script>
<body>
<div class="container-fluid px-3">
  <div class="row min-vh-100">
    <div id="registerHostMain"class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
      <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
        <div class="mb-4">
          <h2>회원가입</h2>
          <p class="text-muted">1단계 - 기본 정보 입력.</p>
        </div>
        <br>
        <form id="registerForm" class="form-validate">
          <div class="mb-4">
            <div class="row">
              <div class="col">
                <label class="form-label" for="hostId">아이디(e-mail)</label>
              </div>
              <div class="col-auto"><a class="form-text small text-primary" id="idCheck">아이디 중복체크</a></div>
            </div>
            <input class="form-control" name="hostId" id="hostId" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="메일 주소를 입력해 주세요!">
          </div>

          <div class="mb-4">
            <span id="checkId" style="color:rgb(77,102,247)"></span>
          </div>
          <div class="mb-4">
            <label class="form-label" for="hostName">이름</label>
            <input class="form-control" name="hostName" id="hostName" type="text" placeholder="홍길동" autocomplete="off" required data-msg="이름을 입력해 주세요!">
          </div>
          <div class="mb-4">
            <label class="form-label" for="hostPwd">비밀번호</label>
            <input class="form-control" name="hostPwd" id="hostPwd" placeholder="비밀번호를 입력 해 주세요" type="password" required data-msg="비밀번호를 입력해 주세요!">
          </div>
          <div class="mb-4">
            <span id="checkPwd" style="color:rgb(77,102,247)"></span>
          </div>
          <div class="mb-4">
            <label class="form-label" for="hostPwd1">비밀번호확인</label>
            <input class="form-control" name="hostPwd1" id="hostPwd1" placeholder="비밀번호를 똑같이 한번 더 입력해 주세요" type="password" required data-msg="비밀번호를 입력해 주세요!">
          </div>
          <div class="d-grid gap-2">
            <button style="height: 61.28px;" class="btn btn-lg btn-primary" id="registerHostBtn" type="button">회원 가입 하기</button>
          </div>
          <hr class="my-3 hr-text letter-spacing-2" data-content="OR">

          <div class="d-grid gap-2">
            <a href="https://kauth.kakao.com/oauth/authorize?client_id=9b7c02c3cdf81109f8023cd5a12156ee&redirect_uri=http://127.0.0.1/auth/kakao/callback&response_type=code">
              <img class="img-fluid" style="height:40px" src="/img/photo/kakaoLogin.jpg"></a>
          </div>
        </form>
      </div>
    </div>




    <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block" >
      <!-- Image-->
<%--      <div  id="registerBackGroundImage"class="bg-cover h-100 me-n3" style="background-image: url(img/photo/photo-1497436072909-60f360e1d4b1.jpg);"></div>--%>

      <div id="registerHostMainAfterButtonClicked" class="d-flex align-items-center">
        <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
          <form class="form-validate">
            <div class="mb-4">
              <h2>본인 인증 </h2>
              <p class="text-muted">Host는 간단한 본인인증이 필요해요</p>
            </div>

            <div class="mb-4">
              <button id="kbAuthBtn" type="button" class="btn">
                <img class="img-fluid" src="/img/photo/kbAuthLogo.jpg" style="width:70px; height:70px">
                KB 국민인증서
              </button>
            </div>
            <div class="d-grid gap-2">
              <button style="height: 61.28px;" class="btn btn-lg btn-primary" id="registerHostBtn2" type="button">회원 가입 하기</button>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>
</div>
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