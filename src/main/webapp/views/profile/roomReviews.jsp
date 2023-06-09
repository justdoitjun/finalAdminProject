<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  let profileReview={
    init:()=>{
      $.ajax({
         url:'/reviewLoad',
        data:{
           "roomId" : ${roomId}
        }
      }).done((data)=>{
        console.log('data load success');
        console.log(data);
        profileReview.display(data);
      }).fail(()=>{
        console.log('data load failed');
      })
    },
    display:(data)=>{
      data.forEach(obj=>{

      })
    }
  }
  $(()=>{
    profileReview.init();
  })
</script>



<div class="col-lg-9 ps-lg-5">
  <div class="text-block" >
    <p class="subtitle text-sm text-primary">Reviews    </p>
    <h5 class="mb-4">Listing Reviews </h5>
    <div class="row">
      <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
        <div class="d-flex align-items-center mb-3">
          <h2 class="h5 mb-0">Weeks Garrett</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="/img/avatar/avatar-1.jpg" alt="Jack London">
        </div>
        <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-primary-light">March 14, 2019 - March 17, 2019</span>
      </div>
      <div class="col-lg-8">
        <a class="list-group-item list-group-item-action p-4" href="/profile/reviews"></a>
        <div class="row">
          <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
            <h6 class="label-heading">평점</h6>
            <p class="text-sm fw-bold">4</p>
            <h6 class="label-heading">가격</h6>
            <p class="text-sm fw-bold mb-0">3</p>
          </div>
          <div class="col-6 col-md-4 col-lg-3 py-3">
            <h6 class="label-heading">청결도</h6>
            <p class="text-sm fw-bold">5</p>
            <h6 class="label-heading">편의시설</h6>
            <p class="text-sm fw-bold mb-0">4</p>
          </div>
          <div class="col-6 col-md-4 col-lg-3 py-3">
            <h6 class="label-heading">위치</h6>
            <p class="text-sm fw-bold">5</p>
            <h6 class="label-heading">코멘트</h6>
            <p class="text-sm fw-bold mb-0">아주 좋았어요</p>
          </div>
          <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>정산완료</span>
            <br class="d-none d-lg-block"><span class="text-muted text-sm text-uppercase"><i class="fa fa-times fa-fw me-2"> </i>응답여부</span>
            <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
          </div>
        </div>
      </div>
      <div class="py-9">
        <div class="collapse mt-4" id="leaveReview">
          <h5 class="mb-4">Leave a reply</h5>
          <form class="form" id="contact-form" method="get" action="#">
            <div class="row">
              <div class="col-sm-6">
                <div class="mb-4">
                  <label class="form-label" for="name">Your name *</label>
                  <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="mb-4">
                  <label class="form-label" for="rating">게스트에 대한 평점 *</label>
                  <select class="form-select focus-shadow-0" name="rating" id="rating">
                    <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                    <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                    <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                    <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                    <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="mb-4">
              <label class="form-label" for="review">Review text *</label>
              <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
            </div>
            <button class="btn btn-primary" type="button">Post review</button>
          </form>
        </div>
      </div><!-- py-9 -->
    </div>

  </div><!--textblock-->
</div>