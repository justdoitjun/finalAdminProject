<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}

    .custom-iframe {
        width: 100%; /* 부모 요소에 대해 100% 너비로 설정 */
        height: 700px; /* 부모 요소에 대해 100% 높이로 설정 */
    }

     /*.custom-iframe {*/
     /*    width : 60vw;*/
     /*    height : 60vw;*/


     /*    !*width: 915px;*!*/
     /*    !*height: 800px;*!*/
     /*}*/
</style>




<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>

    let price = {
        init : ()=>{
            $.ajax({
                url:'/hostRoom',
                data:{
                    'hostId': `${loginHost.hostId}`
                }
            }).done((data)=>{
                console.log('================hostRoom load success================');
                console.log('hostRoom load success');
                console.log(data);
                price.display(data);
            }).fail(()=>{

                console.log('===============hostRoom load failed=================');
                console.log('hostRoom load failed');
            })
        },
        display : (data)=>{
            data.forEach((obj)=>{
                let array = {'roomLat': obj.roomLat, 'roomLng': obj.roomLng};
                let roomLat = array.roomLat;
                let roomLng = array.roomLng;
                console.log("=========array====");
                console.log(array);
                console.log(array.roomLat);
                let html =
                    `
                         <button class="dropdown-item" data-room-lat="\${roomLat}" data-room-lng="\${roomLng}" onclick="updateIframe(this)"> \${obj.roomName}</button>
                  `;

                $('#roomList').append(html)
            })
        }
    }

    function updateIframe(button) {
        let roomLat = button.getAttribute('data-room-lat');
        let roomLng = button.getAttribute('data-room-lng');
        let iframeSrc =
            `
            https://kbland.kr/map?xy=\${roomLat},\${roomLng},16
            `;
        $('.custom-iframe').attr('src', iframeSrc);
    }
    $(()=>{
        price.init();
    })







</script>




<div class="col-lg-9 ps-lg-5">
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Room Insight</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
        </div>


        <div class="row">

            <!-- Pie Chart -->
            <div class="col-lg-6">
                <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">호실별 리뷰</h6>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <figure class="highcharts-figure">
                            <div id="container7"></div>
                        </figure>
                    </div>
                </div>
            </div>

            <!-- Content Row -->
            <div class="col-lg-6">
                <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">호실별 리뷰</h6>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <figure class="highcharts-figure">
                            <div id="container8"></div>
                        </figure>
                    </div>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col-md-12"> <!-- 대신 col-md-12를 사용 -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">KB부동산 시세 조회</h6>
                        <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active" id="langPack" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <svg class="svg-icon text-primary svg-icon-sd"><use xlink:href="#earth-globe-1"> </use></svg>
                            </a>
                            <div class="dropdown-menu" id="roomList" aria-labelledby="homeDropdownMenuLink">

                            </div>
                        </li>
                        </ul>
                    </div>
                       <iframe src="https://kbland.kr/map?xy=37.5500457,126.978463,16" class="custom-iframe"></iframe>
                </div>
            </div>
        </div>



    </div>
    </div>

</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>


<!-- /.container-fluid -->
<script>


    // var xhr = new XMLHttpRequest();
    // xhr.open('GET', 'https://www.example.com', true);
    // xhr.onreadystatechange = function() {
    //     if (xhr.readyState === 4 && xhr.status === 200) {
    //         var responseText = xhr.responseText;
    //         // responseText를 DOM에 추가하거나 원하는 방식으로 처리합니다.
    //     }
    // };
    // xhr.send();

    // Initialize the chart with initial data
    let chart7 = Highcharts.chart('container7', {
        chart: {
            type: 'pie'
        },
        title: {
            text: '호실별 좋은 리뷰를 받은 이유'
        },
        series: [{
            name: 'Data',
            data: [
                { name: '청결도', y: 5 },
                { name: '위치', y: 3 },
                { name: '편의시설', y: 2 },
                { name: '가격', y: 1 },
                { name: '의사소통', y: 4 }
            ]
        }]
    });

    // Update the chart data dynamically every 5 seconds
    setInterval(()=>{

        let newRoom1 = [
            { name: '청결도', y: Math.floor(Math.random() * 10) + 1 },
            { name: '위치', y: Math.floor(Math.random() * 10) + 1 },
            { name: '편의시설', y: Math.floor(Math.random() * 10) + 1 },
            { name: '가격', y: Math.floor(Math.random() * 10) + 1 },
            { name: '의사소통', y: Math.floor(Math.random() * 10) + 1 }
        ];
        chart7.series[0].setData(newRoom1);
    }, 5000);

    let chart8 = Highcharts.chart('container8', {
        chart: {
            type: 'spline'
        },
        title: {
            text: '호실별 매출 현황'
        },
        subtitle: {
            text: '호실별 매출'
        },
        xAxis: {
            type: 'datetime',
            dateTimeLabelFormats: { // don't display the year
                month: '%e. %b',
                year: '%b'
            },
            title: {
                text: 'Date'
            }
        },
        yAxis: {
            title: {
                text: '매출액(KRW)'
            },
            min: 0
        },
        tooltip: {
            headerFormat: '<b>{series.name}</b><br>',
            pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
        },

        plotOptions: {
            series: {
                marker: {
                    enabled: true,
                    radius: 2.5
                }
            }
        },

        colors: ['#6CF', '#39F', '#06C', '#036', '#000'],

        // Define the data points. All series have a year of 1970/71 in order
        // to be compared on the same x axis. Note that in JavaScript, months start
        // at 0 for January, 1 for February etc.
        series: [
            {
                name: '판교 ',
                data: [
                    [Date.UTC(1970, 9, 24), 0],
                    [Date.UTC(1970, 9, 27), 0.12],
                    [Date.UTC(1970, 9, 30), 0.09],
                    [Date.UTC(1970, 10,  3), 0.13],
                    [Date.UTC(1970, 10,  6), 0.12],
                    [Date.UTC(1970, 10,  9), 0.13],
                    [Date.UTC(1970, 10, 12), 0.13],
                    [Date.UTC(1970, 10, 15), 0.16],
                    [Date.UTC(1970, 10, 18), 0.19],
                    [Date.UTC(1970, 10, 21), 0.25],
                    [Date.UTC(1970, 10, 24), 0.26],
                    [Date.UTC(1970, 10, 27), 0.24],
                    [Date.UTC(1970, 10, 30), 0.25],
                    [Date.UTC(1970, 11,  3), 0.26],
                    [Date.UTC(1970, 11,  6), 0.36],
                    [Date.UTC(1970, 11,  9), 0.43],
                    [Date.UTC(1970, 11, 12), 0.32],
                    [Date.UTC(1970, 11, 15), 0.48],
                    [Date.UTC(1970, 11, 18), 0.5],
                    [Date.UTC(1970, 11, 21), 0.44],
                    [Date.UTC(1970, 11, 24), 0.43],
                    [Date.UTC(1970, 11, 27), 0.45],
                    [Date.UTC(1970, 11, 30), 0.4],
                    [Date.UTC(1971, 0,  3), 0.39],
                    [Date.UTC(1971, 0,  6), 0.56],
                    [Date.UTC(1971, 0,  9), 0.57],
                    [Date.UTC(1971, 0, 12), 0.68],
                    [Date.UTC(1971, 0, 15), 0.93],
                    [Date.UTC(1971, 0, 18), 1.11],
                    [Date.UTC(1971, 0, 21), 1.01],
                    [Date.UTC(1971, 0, 24), 0.99],
                    [Date.UTC(1971, 0, 27), 1.17],
                    [Date.UTC(1971, 0, 30), 1.24],
                    [Date.UTC(1971, 1,  3), 1.41],
                    [Date.UTC(1971, 1,  6), 1.47],
                    [Date.UTC(1971, 1,  9), 1.4],
                    [Date.UTC(1971, 1, 12), 1.92],
                    [Date.UTC(1971, 1, 15), 2.03],
                    [Date.UTC(1971, 1, 18), 2.46],
                    [Date.UTC(1971, 1, 21), 2.53],
                    [Date.UTC(1971, 1, 24), 2.73],
                    [Date.UTC(1971, 1, 27), 2.67],
                    [Date.UTC(1971, 2,  3), 2.65],
                    [Date.UTC(1971, 2,  6), 2.62],
                    [Date.UTC(1971, 2,  9), 2.79],
                    [Date.UTC(1971, 2, 13), 2.93],
                    [Date.UTC(1971, 2, 20), 3.09],
                    [Date.UTC(1971, 2, 27), 2.76],
                    [Date.UTC(1971, 2, 30), 2.73],
                    [Date.UTC(1971, 3,  4), 2.9],
                    [Date.UTC(1971, 3,  9), 2.77],
                    [Date.UTC(1971, 3, 12), 2.78],
                    [Date.UTC(1971, 3, 15), 2.76],
                    [Date.UTC(1971, 3, 18), 2.76],
                    [Date.UTC(1971, 3, 21), 2.7],
                    [Date.UTC(1971, 3, 24), 2.61],
                    [Date.UTC(1971, 3, 27), 2.52],
                    [Date.UTC(1971, 3, 30), 2.53],
                    [Date.UTC(1971, 4,  3), 2.55],
                    [Date.UTC(1971, 4,  6), 2.52],
                    [Date.UTC(1971, 4,  9), 2.44],
                    [Date.UTC(1971, 4, 12), 2.43],
                    [Date.UTC(1971, 4, 15), 2.43],
                    [Date.UTC(1971, 4, 18), 2.48],
                    [Date.UTC(1971, 4, 21), 2.41],
                    [Date.UTC(1971, 4, 24), 2.16],
                    [Date.UTC(1971, 4, 27), 2.01],
                    [Date.UTC(1971, 4, 30), 1.88],
                    [Date.UTC(1971, 5,  2), 1.62],
                    [Date.UTC(1971, 5,  6), 1.43],
                    [Date.UTC(1971, 5,  9), 1.3],
                    [Date.UTC(1971, 5, 12), 1.11],
                    [Date.UTC(1971, 5, 15), 0.84],
                    [Date.UTC(1971, 5, 18), 0.54],
                    [Date.UTC(1971, 5, 21), 0.19],
                    [Date.UTC(1971, 5, 23), 0]
                ]
            }, {
                name: '서울 강동구',
                data: [
                    [Date.UTC(1970, 10, 14), 0],
                    [Date.UTC(1970, 11,  6), 0.35],
                    [Date.UTC(1970, 11, 13), 0.35],
                    [Date.UTC(1970, 11, 20), 0.33],
                    [Date.UTC(1970, 11, 30), 0.53],
                    [Date.UTC(1971, 0, 13), 0.62],
                    [Date.UTC(1971, 0, 20), 0.6],
                    [Date.UTC(1971, 1,  2), 0.69],
                    [Date.UTC(1971, 1, 18), 0.67],
                    [Date.UTC(1971, 1, 21), 0.65],
                    [Date.UTC(1971, 1, 24), 0.66],
                    [Date.UTC(1971, 1, 27), 0.66],
                    [Date.UTC(1971, 2,  3), 0.61],
                    [Date.UTC(1971, 2,  6), 0.6],
                    [Date.UTC(1971, 2,  9), 0.69],
                    [Date.UTC(1971, 2, 12), 0.66],
                    [Date.UTC(1971, 2, 15), 0.75],
                    [Date.UTC(1971, 2, 18), 0.76],
                    [Date.UTC(1971, 2, 21), 0.75],
                    [Date.UTC(1971, 2, 24), 0.69],
                    [Date.UTC(1971, 2, 27), 0.82],
                    [Date.UTC(1971, 2, 30), 0.86],
                    [Date.UTC(1971, 3,  3), 0.81],
                    [Date.UTC(1971, 3,  6), 1],
                    [Date.UTC(1971, 3,  9), 1.15],
                    [Date.UTC(1971, 3, 10), 1.35],
                    [Date.UTC(1971, 3, 12), 1.26],
                    [Date.UTC(1971, 3, 15), 1.18],
                    [Date.UTC(1971, 3, 18), 1.14],
                    [Date.UTC(1971, 3, 21), 1.04],
                    [Date.UTC(1971, 3, 24), 1.06],
                    [Date.UTC(1971, 3, 27), 1.05],
                    [Date.UTC(1971, 3, 30), 1.03],
                    [Date.UTC(1971, 4,  3), 1.01],
                    [Date.UTC(1971, 4,  6), 0.98],
                    [Date.UTC(1971, 4,  9), 0.94],
                    [Date.UTC(1971, 4, 12), 0.8],
                    [Date.UTC(1971, 4, 15), 0.61],
                    [Date.UTC(1971, 4, 18), 0.43],
                    [Date.UTC(1971, 4, 21), 0.29],
                    [Date.UTC(1971, 4, 24), 0.1],
                    [Date.UTC(1971, 4, 26), 0]
                ]
            }, {
                name: '서울 강남구',
                data: [
                    [Date.UTC(1970, 10,  5), 0],
                    [Date.UTC(1970, 10, 12), 0.1],
                    [Date.UTC(1970, 10, 21), 0.15],
                    [Date.UTC(1970, 10, 22), 0.19],
                    [Date.UTC(1970, 10, 27), 0.17],
                    [Date.UTC(1970, 10, 30), 0.27],
                    [Date.UTC(1970, 11,  2), 0.25],
                    [Date.UTC(1970, 11,  4), 0.27],
                    [Date.UTC(1970, 11,  5), 0.26],
                    [Date.UTC(1970, 11,  6), 0.25],
                    [Date.UTC(1970, 11,  7), 0.26],
                    [Date.UTC(1970, 11,  8), 0.26],
                    [Date.UTC(1970, 11,  9), 0.25],
                    [Date.UTC(1970, 11, 10), 0.25],
                    [Date.UTC(1970, 11, 11), 0.25],
                    [Date.UTC(1970, 11, 12), 0.26],
                    [Date.UTC(1970, 11, 22), 0.22],
                    [Date.UTC(1970, 11, 23), 0.22],
                    [Date.UTC(1970, 11, 24), 0.22],
                    [Date.UTC(1970, 11, 25), 0.24],
                    [Date.UTC(1970, 11, 26), 0.24],
                    [Date.UTC(1970, 11, 27), 0.24],
                    [Date.UTC(1970, 11, 28), 0.24],
                    [Date.UTC(1970, 11, 29), 0.24],
                    [Date.UTC(1970, 11, 30), 0.22],
                    [Date.UTC(1970, 11, 31), 0.18],
                    [Date.UTC(1971, 0,  1), 0.17],
                    [Date.UTC(1971, 0,  2), 0.23],
                    [Date.UTC(1971, 0,  9), 0.5],
                    [Date.UTC(1971, 0, 10), 0.5],
                    [Date.UTC(1971, 0, 11), 0.53],
                    [Date.UTC(1971, 0, 12), 0.48],
                    [Date.UTC(1971, 0, 13), 0.4],
                    [Date.UTC(1971, 0, 17), 0.36],
                    [Date.UTC(1971, 0, 22), 0.69],
                    [Date.UTC(1971, 0, 23), 0.62],
                    [Date.UTC(1971, 0, 29), 0.72],
                    [Date.UTC(1971, 1,  2), 0.95],
                    [Date.UTC(1971, 1, 10), 1.73],
                    [Date.UTC(1971, 1, 15), 1.76],
                    [Date.UTC(1971, 1, 26), 2.18],
                    [Date.UTC(1971, 2,  2), 2.22],
                    [Date.UTC(1971, 2,  6), 2.13],
                    [Date.UTC(1971, 2,  8), 2.11],
                    [Date.UTC(1971, 2,  9), 2.12],
                    [Date.UTC(1971, 2, 10), 2.11],
                    [Date.UTC(1971, 2, 11), 2.09],
                    [Date.UTC(1971, 2, 12), 2.08],
                    [Date.UTC(1971, 2, 13), 2.08],
                    [Date.UTC(1971, 2, 14), 2.07],
                    [Date.UTC(1971, 2, 15), 2.08],
                    [Date.UTC(1971, 2, 17), 2.12],
                    [Date.UTC(1971, 2, 18), 2.19],
                    [Date.UTC(1971, 2, 21), 2.11],
                    [Date.UTC(1971, 2, 24), 2.1],
                    [Date.UTC(1971, 2, 27), 1.89],
                    [Date.UTC(1971, 2, 30), 1.92],
                    [Date.UTC(1971, 3,  3), 1.9],
                    [Date.UTC(1971, 3,  6), 1.95],
                    [Date.UTC(1971, 3,  9), 1.94],
                    [Date.UTC(1971, 3, 12), 2],
                    [Date.UTC(1971, 3, 15), 1.9],
                    [Date.UTC(1971, 3, 18), 1.84],
                    [Date.UTC(1971, 3, 21), 1.75],
                    [Date.UTC(1971, 3, 24), 1.69],
                    [Date.UTC(1971, 3, 27), 1.64],
                    [Date.UTC(1971, 3, 30), 1.64],
                    [Date.UTC(1971, 4,  3), 1.58],
                    [Date.UTC(1971, 4,  6), 1.52],
                    [Date.UTC(1971, 4,  9), 1.43],
                    [Date.UTC(1971, 4, 12), 1.42],
                    [Date.UTC(1971, 4, 15), 1.37],
                    [Date.UTC(1971, 4, 18), 1.26],
                    [Date.UTC(1971, 4, 21), 1.11],
                    [Date.UTC(1971, 4, 24), 0.92],
                    [Date.UTC(1971, 4, 27), 0.75],
                    [Date.UTC(1971, 4, 30), 0.55],
                    [Date.UTC(1971, 5,  3), 0.35],
                    [Date.UTC(1971, 5,  6), 0.21],
                    [Date.UTC(1971, 5,  9), 0]
                ]
            }
        ]
    });






    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };



    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("roomAddress").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x)

                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();

                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)

                        var iwContent = '<div style="padding:5px;"> 11만원 <br><a href="https://map.daum.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">자세히보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                            iwPosition = new daum.maps.LatLng(result.y, result.x);


                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition,
                            content : iwContent
                        });




                        infowindow.open(map, marker);


                        daum.maps.event.addListener(marker, 'mouseover', function() {
                            // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                            infowindow.open(map, marker);
                        });

                        daum.maps.event.addListener(marker, 'mouseout', function() {
                            // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                            infowindow.close();
                        });

                        $('#roomLat').val(result.y);
                        $('#roomLng').val(result.x);

                        let utmkXY = new sop.LatLng (result.y,result.x); //wgs84 좌표를 UTMK로 변환
                        $('#roomPosY').val(utmkXY.y);
                        $('#roomPosX').val(utmkXY.x);
                        reverseAddress(utmkXY.y, utmkXY.x);

                        //var coordinatesElement = document.getElementById("coordinates");
                        // coordinatesElement.innerHtml = "위도: " + result.y + ", 경도:" + result.x;

                        // var coordinatesElement = document.getElementById("coordinates");
                        // coordinatesElement.innerHTML = "위도: " + result.y + ", 경도: " + result.x;
                    }
                });
            }
        }).open();
    }

    // Data retrieved from https://www.vikjavev.no/ver/snjomengd







</script>



</body>
</html>