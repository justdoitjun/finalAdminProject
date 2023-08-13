<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
  $(document).ready( async () => {
    await display();
    chatDetails.init();
    reserveHostGuest.init();
    // 고민해보자. - (1) 서버 문제가 있고 (2) jsp이기 때문에 새로고침되는 문제.
    // setInterval(() => {
    //   display();
    // }, 3000);

      //중요!! 뒤집기
    // setInterval(() => {
    //   flippedBtn();
    // }, 5000);

      $(document).on('click', '.flippedBtn', function(){
          console.log('flipped Btn clicked');
          let flippedDivId = $(this).closest('.d-flex').attr('id');
          let divId = flippedDivId.slice(1);
          console.log(divId);
          let divId2 = "#" + divId;
          console.log(flippedDivId);
          //let originalDivId = flippedDivId.replace("new","");
          let originalDivId = divId2.slice(0,-3);
          console.log(originalDivId);
          $(originalDivId).show();
          $(flippedDivId).hide();
      })

  });


  let reserveHostGuest = {
      init : (()=>{
            $.ajax({
                url : '/reserveHostGuestLoad',
                data : {
                    'hostId':'host7',
                    'guestId':'guest1'
                }
            }).done((data)=>{
                console.log('reserve load data succeed');
                console.log(data[0]);
                reserveHostGuest.display(data[0]);
            }).fail(()=>{
                console.log('reserve load data failed');
            })
      }),
      display : ((parsedData)=>{
          let html =
              `
        <div class="card border-0 shadow mb-4">
          <div class="card-body p-4">
            <div class="text-block pb-3">
              <div class="d-flex align-items-center justify-content-between">
                <div>
                  <h6> <a class="text-reset" href="detail-rooms.html">\${parsedData.roomName}</a></h6>
                  <p class="text-muted text-sm mb-0">\${parsedData.roomAddress}</p>
                  <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                  </div>
                </div><a href="detail-rooms.html"><img class="ms-3 rounded flex-shrink-0" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="" width="100"></a>
              </div>
            </div>
            <div class="text-block pt-3 pb-0">
              <ul class="list-unstyled text-sm mb-0">
                <li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>\${parsedData.reserveCap} guests</li>
                <li class="mb-0"><i class="far fa-calendar fa-fw text-muted me-2"></i>\${parsedData.reserveCheckIn} <i class="fas fa-arrow-right fa-fw text-muted mx-3"></i>\${parsedData.reserveCheckOut}</li>
              </ul>
            </div>
          </div>
        </div>
              `;
          $('#reserveCardBody').append(html);
      })
  }


  let chatDetails = {
    init: (() => {
      $(document).on('click', '.detectBtn', function(){
        console.log('clicked');
        let text = $(this).data('chat-contents');
        let divId = "#" + $(this).closest('.d-flex').attr('id');
        console.log(divId);
        $.ajax({
          url: 'chat/detectLanguage',
          data: {
            'text' : text
          }
        }).done(function(data) {
          data = JSON.parse(data);
          if(data.langCode !== undefined && data.langCode !== 'ko') {
            console.log('번역가능. ');
            translate(data.langCode, text, divId);
            $(divId).hide();
            console.log(divId);
          }else{
            console.log('원래 한국어이거나 인식을 못한 경우로 번역할 수 없습니다.');
          }
        }).fail(function() {
          console.log('failed');
        });
      })

      $('#buttonSendMessage').click( async () => {
        console.log('전송버튼 clicked');
          if($('#chatContentsBox').val().length == 0){

              Swal.fire({
                  icon: 'error',
                  title: '입력 오류',
                  text: '빈 메세지는 보낼 수 없어요.'
              })

          }else{
              await sendData();
              let fromId = `${loginHost.hostId}`;
            let toId =`${guestId}`;//메신저 chatDetail.jsp에 있는 hostInfo
            let contents = $('#chatContentsBox').val();
            let chatRoomId = $('#chatRoomId').val();
            console.log("=buttonSend message================22");
            console.log(fromId);
            console.log(toId);
            console.log(contents);
            console.log(chatRoomId);
            websocket.sendTo(fromId, toId, contents, chatRoomId);
          }
      });
    })
  };

  function translate(sourceLanguage, text, divId){
    $.ajax({
      url : 'chat/translate',
      data : {
        'targetLanguage' : sourceLanguage,
        'text' : text
      }
    }).done((data)=>{
      console.log('succeed to load translation data');
      data = JSON.parse(data);
      console.log("=====번역결과=====");
      let translatedResult = data.message.result.translatedText;
      console.log(data.message.result.translatedText);
      $(divId).hide();
      let newHtml =
              `
                  <div class="d-flex col-md-9 col-xl-7 mb-3" id=\${divId}new>
                  <img class="avatar avatar-border-white flex-shrink-0" src="/img/avatar/111.jpg" alt="user">
                  <div class="ms-3">
                  <div class="bg-200 bg-warning-light rounded p-4 mb-2">
                  <p id="chatContents">\${translatedResult}</p>
                  </div>
                  </div>
                  </div>
              `;
      $(divId).html(newHtml);
    }).fail(()=>{
      console.log('failed');
    })
  }

  function flippedBtn(){

  }



  function sendData() {
    $.ajax({
      url: 'chat/request',
      data: {
        'chatContents': $('#chatContentsBox').val(),
        'chatRoomId': $('#chatRoomId').val(),
        'chatSender': $('#chatSender').val()
      }
    })
            .done((data) => {
              console.log("success");
              // chatDetails.display(data);
              display();
            })
            .fail(() => {
              console.log("failed to load data");
            });
  }

  function display(){
    let chatSender = $('#chatSender').val();
    console.log(chatSender);
    $.ajax({
      url: 'chat/display',
      data: {
        chatRoomId: $('#chatRoomId').val(),
        chatSender: $('#chatSender').val()
      }
    }).done((data)=>{
      console.log('success');
      console.log(data);
      $('#chatContainer').empty();
      //시간 순서대로 나열
      data.sort((a, b) => new Date(a.chatDate) - new Date(b.chatDate));
      data.forEach(obj => {
        //console.log('====');
        //console.log(obj.chatSender);
        if(obj.chatSender == chatSender){
            let chatDate = new Date(obj.chatDate);
            let formattedDate = chatDate.getFullYear() + '-' +
                ('0' + (chatDate.getMonth() + 1)).slice(-2) + '-' +
                ('0' + chatDate.getDate()).slice(-2) + ' ' +
                ('0' + chatDate.getHours()).slice(-2) + '시' +
                ('0' + chatDate.getMinutes()).slice(-2) + '분';
          let html =
                  `
                  <div class="d-flex col-md-9 col-xl-7 ms-lg-auto mb-3" id=\${obj.chatContentsId}>
                  <div class="ms-auto">
                  <div class="bg-primary rounded p-4 mb-2">
                  <p class="text-sm mb-0 text-white" id="chatContents">\${obj.chatContents}</p>
                  </div>
                  <p class="small text-muted ms-3">\${formattedDate}</p>
                  </div>
                  <img class="avatar avatar-border-white flex-shrink-0" src="img/avatar/${hostInfo.hostImage}" alt="user">
                  </div>
                  `;
          $('#chatContainer').append(html);
        }else{
            let chatDate = new Date(obj.chatDate);
            let formattedDate = chatDate.getFullYear() + '-' +
                ('0' + (chatDate.getMonth() + 1)).slice(-2) + '-' +
                ('0' + chatDate.getDate()).slice(-2) + ' ' +
                ('0' + chatDate.getHours()).slice(-2) + '시' +
                ('0' + chatDate.getMinutes()).slice(-2) + '분';
          let html =
                  `
                  <div class="d-flex col-md-9 col-xl-7 mb-3" id=\${obj.chatContentsId}>
                  <img class="avatar avatar-border-white flex-shrink-0" src="img/avatar/${guestInfo.guestImage}" alt="user">
                  <div class="ms-3">
                  <div class="bg-gray-200 rounded p-4 mb-2">
                  <p id="chatContents">\${obj.chatContents}</p>
                  </div>
                  <p class="small text-muted ms-3">\${formattedDate}<button type="button" class="btn detectBtn" data-chat-contents="\${obj.chatContents}">번역</button></p>
                  </div>
                  </div>
                  `
          $('#chatContainer').append(html);
        }
      })}).fail(()=>{
      console.log('failed');
    })

  }//end of display function







</script>

<div class="col-lg-9 ps-lg-5">
<body style="padding-top: 72px;">
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <div class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center mb-4">
          <h1 class="mb-3 mb-md-0 hero-heading mb-0">${guestInfo.guestName}님과의 대화 </h1>
          <div><a class="btn btn-link ps-0" href="/chatroom?hostId=${loginHost.hostId}"><i class="fa fa-arrow-left me-2"></i> 채팅방으로 돌아가기</a></div>
        </div>
              <c:choose>
                  <c:when test="${reserveInfo[0] != null}">
                      <div id="reserveCardBody">
                      <div class="card border-0 shadow mb-4">
                          <div class="card-body p-4">
                              <div class="text-block pb-3">
                                  <div class="d-flex align-items-center justify-content-between">
                                      <div>
                                          <h6> <a class="text-reset" href="detail-rooms.html">${reserveInfo[0].roomName}</a></h6>
                                          <p class="text-muted text-sm mb-0">${reserveInfo[0].roomAddress}</p>
                                          <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                                          </div>
                                      </div><a href="detail-rooms.html"><img class="ms-3 rounded flex-shrink-0" src="${reserveInfo[0].roomImage1}" alt="" width="100"></a>
                                  </div>
                              </div>
                              <div class="text-block pt-3 pb-0">
                                  <ul class="list-unstyled text-sm mb-0">
                                      <li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>${reserveInfo[0].reserveCap} 명</li>
                                      <li class="mb-0"><i class="far fa-calendar fa-fw text-muted me-2"></i><fmt:formatDate  value="${reserveInfo[0].reserveCheckIn}" pattern="yyyy-MM-dd" /> <i class="fas fa-arrow-right fa-fw text-muted mx-3"></i><fmt:formatDate  value="${reserveInfo[0].reserveCheckOut}" pattern="yyyy-MM-dd" /></li>
                                  </ul>
                              </div>
                          </div>
                      </div>
                    </div>
                  </c:when>
                  <c:otherwise>

                  </c:otherwise>
              </c:choose>

        <!-- (1) JSP로 뿌리는 방식 -->

        <!-- (2) script로 뿌리는 방식 -->
        <div class="px-4 py-5">
          <div class="row" id="chatContainer" style="display:inline">

          </div>
        </div>
        <!-- Typing area-->
        <form class="bg-light rounded shadow-sm" action="#">
          <div class="input-group">
            <input type="hidden" id="chatRoomId" value="${chatRoomId}"/>
            <input type="hidden" id="chatSender" value="${hostId}"/>
            <textarea class="form-control border-0 p-4 bg-light text-sm" id="chatContentsBox" placeholder="Type a message" aria-describedby="button-sendMessage"></textarea>
            <button class="btn btn-link" id="buttonSendMessage" type="button"><i class="fa fa-paper-plane"></i></button>
          </div>
        </form>
      </div>
    </section>
    <!-- Footer-->
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
</div>