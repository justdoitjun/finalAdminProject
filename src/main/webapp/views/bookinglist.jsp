
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
<section class="py-5">
    <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Host view   </li>
        </ol>
        <div class="d-flex justify-content-between align-items-end mb-5">
            <h1 class="hero-heading mb-0">정산하기</h1><a class="btn btn-link text-muted" href="#">과거 내역</a>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row mb-5">
            <div class="me-3">
                <p class="mb-3 mb-lg-0">당신이 정산할 <strong>3 건의 예약이 </strong> 리스트에 있습니다.</p>
            </div>
            <div class="text-center">
                <label class="form-label me-2" for="form_sort">정렬 순</label>
                <select class="selectpicker me-3 mb-3 mb-lg-0" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                    <option value="sortBy_0">최신순   </option>
                    <option value="sortBy_1">Oldest   </option>
                    <option value="sortBy_2">Paid   </option>
                </select><a class="btn btn-outline-secondary" href="#"><i class="fa fa-download me-2"></i>저장하기</a>
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
                            <h2 class="h5 mb-0">이기현</h2>
                            <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
                        </div>
                        <span class="badge badge-pill p-2 badge-secondary-light">23년 6월 16일 - 23년 6월 19일</span>
                    </div>







                    <div class="col-lg-8">



                        <div class="row">
                            <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                                <h6 class="label-heading">방 타입</h6>
                                <p class="text-sm fw-bold">오피스텔</p>
                                <h6 class="label-heading">숙박일 </h6>
                                <p class="text-sm fw-bold mb-0">3박</p>
                            </div>
                            <div class="col-6 col-md-4 col-lg-3 py-3">
                                <h6 class="label-heading">투숙 인원</h6>
                                <p class="text-sm fw-bold">1명</p>
                                <h6 class="label-heading">금액</h6>
                                <p class="text-sm fw-bold mb-0">9 만원/1 박</p>
                            </div>
                            <div class="col-6 col-md-4 col-lg-3 py-3">
                                <h6 class="label-heading">예약 날짜</h6>
                                <p class="text-sm fw-bold">6월 16일, 2023                                        </p>
                                <h6 class="label-heading">도착 시간</h6>
                                <p class="text-sm fw-bold mb-0">4시 경</p>
                            </div>
                            <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>결제 완료</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>최종 확정</span>
                            </div>
                        </div>
                    </div>
                </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">    <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                <div class="d-flex align-items-center mb-3">
                    <input type="checkbox" class="form-check-input me-3" id="checkbox2">
                    <h2 class="h5 mb-0"> 홍길동 </h2>
                    <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-1.jpg" alt="Jack London">
                </div>
<%--                <p class="text-sm text-muted">Double Room</p>--%>
                <span class="badge badge-pill p-2 badge-secondary-light">March 14, 2023 - March 17, 2023</span>
            </div>

                <div class="col-lg-8">



                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">방 타입</h6>
                            <p class="text-sm fw-bold">독채</p>
                            <h6 class="label-heading">숙박일 </h6>
                            <p class="text-sm fw-bold mb-0">3박</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">투숙 인원</h6>
                            <p class="text-sm fw-bold">3명</p>
                            <h6 class="label-heading">금액</h6>
                            <p class="text-sm fw-bold mb-0">16 만원/1 박</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">예약 날짜</h6>
                            <p class="text-sm fw-bold">6월 10일, 2023                                        </p>
                            <h6 class="label-heading">도착 시간</h6>
                            <p class="text-sm fw-bold mb-0">1시 경</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>결제 완료</span><br class="d-none d-lg-block"><span class="text-muted text-sm text-uppercase"><i class="fa fa-times fa-fw me-2"> </i>확정 대기</span>
                        </div>
                    </div>
                </div>
            </div></a><a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">
                <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                    <div class="d-flex align-items-center mb-3">
                        <input type="checkbox" class="form-check-input me-3" id="checkbox3">
                        <h2 class="h5 mb-0">유현손</h2>
                        <img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-2.jpg" alt="Jack London">
                    </div>

                    <span class="badge badge-pill p-2 badge-danger-light">23년 6월 21일 - 23년 6월 23일</span>
                </div>



                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                            <h6 class="label-heading">방 타입</h6>
                            <p class="text-sm fw-bold">아파트</p>
                            <h6 class="label-heading">숙박일 </h6>
                            <p class="text-sm fw-bold mb-0">2박</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">투숙 인원</h6>
                            <p class="text-sm fw-bold">2명</p>
                            <h6 class="label-heading">금액</h6>
                            <p class="text-sm fw-bold mb-0">13 만원/1 박</p>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 py-3">
                            <h6 class="label-heading">예약 날짜</h6>
                            <p class="text-sm fw-bold">6월 21일, 2023                                        </p>
                            <h6 class="label-heading">도착 시간</h6>
                            <p class="text-sm fw-bold mb-0">2시 경</p>
                        </div>
                        <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>결제 완료</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>최종 확정</span>

                        </div>
                    </div>
                </div>
            </div></a>
        </div>


        <div class="form-check form-switch d-inline-block">
            <input class="form-check-input" type="checkbox" id="showTotalTableSwitch" onchange="toggleTotalTable()">
            <label class="form-check-label" for="showTotalTableSwitch">상세 조회</label>
        </div>


        <table id="totalTable" table class="table table-striped" style="display: none;">
                <thead class="bg-gray-200">
                <tr class="border-0">
                    <th class="center">#</th>
                    <th>목록</th>
                    <th>숙박기간</th>
                    <th class="text-end">금액/1박</th>
                    <th class="center">숙박일</th>
                    <th class="text-end">총액</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-center">1</td>
                    <td class="fw-bold">이기현님 / 한강 뷰가 너무나도 예쁜 오피스텔 </td>
                    <td>23년 6월 16일 - 23년 6월 19일</td>
                    <td class="text-end">10만원</td>
                    <td class="text-center">3박</td>
                    <td class="text-end">30만원</td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td class="fw-bold">유현손님 / 깔끔하고 시설이 구비된 아파트</td>
                    <td>23년 6월 21일 - 23년 6월 23일</td>
                    <td class="text-end">15만원</td>
                    <td class="text-center">2박</td>
                    <td class="text-end">30만원</td>
                </tr>


                <tr>
                    <td class="text-center"></td>
                    <td class="fw-bold"></td>
                    <td></td>
                    <td class="text-end"></td>
                    <td class="text-center"></td>
                    <td class="text-end">60 만원</td>
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

