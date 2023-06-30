<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  //host가 가지고 있는 Room 목록
  let profileReview = {
    init:()=>{
      $.ajax({
        url:'/roomLoad',
        data:{
          'hostId': `${hostId}`
        }
      }).done((data)=>{
        console.log('예약 정보 불러오기 success');
        // console.log(data);
        data.forEach(obj=>{
          console.log(obj);
          let html =
              `
      <div class="col-sm-6 col-lg-4 mb-30px hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
        <div class="card h-100 border-0 shadow">
          <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="reviews/detail?roomId=\${obj.roomId}"></a>
            <div class="card-img-overlay-bottom z-index-20">
            </div>
            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
              <svg class="svg-icon text-white">
                <use xlink:href="#heart-1"> </use>
              </svg></a></div>
          </div>
          <div class="card-body d-flex align-items-center">
            <div class="w-100">
              <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">\${obj.roomName} </a></h6>
              <div class="d-flex card-subtitle mb-3">
                <p class="flex-grow-1 mb-0 text-muted text-sm">\${obj.roomAddress}</p>
                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                </p>
              </div>
              <p class="card-text text-muted"><span class="h4 text-primary">\${obj.roomPrice}</span> per night</p>
            </div>
          </div>
        </div>
      </div>
              `;
          $('#profileReviewContainer').append(html);

        })
      }).fail(()=>{
        console.log('예약정보 불러오기 failed');
      })
    }
  }
  $(()=>{
    profileReview.init();
  })
</script>



<div class="col-lg-9 ps-lg-5" id="profileReviewContainer">
    <h1>${loginHost.hostName}의 리뷰현황.</h1>

</div>

