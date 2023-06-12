<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  $(document).ready(function() {
    // Initialize the datepickers
    $('#startDatePicker').datepicker();
    $('#endDatePicker').datepicker();
  });

  function searchByDate() {
    var startDate = $('#startDatePicker').val();
    var endDate = $('#endDatePicker').val();

    // Perform search based on the selected date range
    // Add your logic here
    console.log('Search Start Date:', startDate);
    console.log('Search End Date:', endDate);
  }
</script>

<div class="col-sm-8  text-left ">
  <div>
    <button type="button" class="btn">대금 수령 완료</button>
    <button type="button" class="btn">수령 예정 내역</button>
  </div>
  <div class="input-group ms-lg-3">
    <input type="date" class="form-control" id="startDatePicker" placeholder="Start Date">
    <input type="date" class="form-control" id="endDatePicker" placeholder="End Date">
    <div class="input-group-append">
      <button class="btn btn-primary" type="button" onclick="searchByDate()">
        <i class="fa fa-search"></i>
      </button>
    </div>
  </div><!-- search 바 div 태-->


  <div class="container p-5 my-5 border">
    <h6>정산 받으실 총 금액은</h6>
    <h5> 총 땡땡 건 / 땡땡 원</h5>
  </div>
  <table class="table table-hover">
    <thead>
    <tr>
      <th>정산일</th>
      <th>방이름</th>
      <th>이름</th>
      <th>계약기간</th>
      <th>정산금액</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>John</td>
      <td>Doe</td>
      <td>john@example.com</td>
      <td></td>
      <td></td>
    </tr>

    </tbody>
  </table>
</div>