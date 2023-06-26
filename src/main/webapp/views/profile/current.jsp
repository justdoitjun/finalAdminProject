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
</style>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
    let weather = {
        init : ()=>{
            $('#weatherSearch').click(async ()=>{
                let weatherLoc = $('#weatherLoc').val();
                $('#weatherTbody').empty();
                await $('#weatherTable').show();
                console.log('입력한 loc'+ weatherLoc);
                $.ajax({
                    url : '/weather',
                    data : {
                        'loc' : weatherLoc
                    }
                }).done((data)=>{
                    let newData = JSON.parse(data);
                    let map = new Map();
                    console.log('weather succeed');
                    console.log(newData);
                    newData.forEach((e)=>{
                        e.substring(0,3);
                        console.log(e.substring(e.length-3,e.length));
                        console.log(e.substring(e.length-10,e.length-7));
                        console.log(e.substring(0,3));
                        console.log(e.substring(3,e.length-11));
                        map.set(e.substring(0,3)+"최저",e.substring(e.length-3,e.length));
                        map.set( e.substring(0,3)+"최고", e.substring(e.length-10,e.length-7));
                        map.set(e.substring(0,3)+"설명",e.substring(3,e.length-11));
                        let date = e.substring(0,3);
                        let high = e.substring(e.length-3,e.length);
                        let low = e.substring(e.length-10,e.length-7);
                        let desc = e.substring(3,e.length-11);
                        let html =
                            `
                            <tr>
                                <td>\${date}</td>
                                <td>\${desc}</td>
                                <td>\${high}</td>
                                <td>\${low}</td>
                            </tr>
                        `;
                        $('#weatherTbody').append(html);
                    })
                    console.log(map);


                }).fail(()=>{
                    console.log('weather failed');
                })
            })

            $('#hideWeather').click(()=>{
                $('#weatherTable').hide();
            })
        }
    }


    $(()=>{
        weather.init();
        $('#weatherTable').hide();

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

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">날씨 검색
                        <button id="hideWeather" class="btn btn-primary" type="button">숨김</button>
                        <button id="hideWeather2" class="btn btn-primary" type="button">숨김버튼을 숨김</button>
                    </h6>

                </div>

                <div class="card-body">
                    <!-- 검색바 -->
                    <div class="input-group mb-3">
                        <input type="text" id="weatherLoc" class="form-control" placeholder="궁금한 지역의 날씨를 검색하세요">
                        <div class="input-group-append">
                            <button id="weatherSearch" class="btn btn-primary" type="button">날씨검색</button>
                        </div>
                    </div>
                    <table class="table" id="weatherTable">
                        <thead>
                        <tr>
                            <th>날짜</th>
                            <th></th>
                            <th>최고기온</th>
                            <th>최저기온</th>
                        </tr>
                        </thead>
                        <tbody id="weatherTbody">

                        </tbody>
                    </table>


                </div>
        </div>
        <!-- Content Column -->
        <div class="col-lg-6 mb-4">

            <!-- Project Card Example -->

            </div>

        </div>

        <!-- Content Row -->
        <div class="row">




                <!-- Color System -->


            </div>

        </div>

    </div>
</div>
</div>
<!-- /.container-fluid -->
<script>


    // Initialize the chart with initial data
    let chart7 = Highcharts.chart('container7', {
        chart: {
            type: 'pie'
        },
        title: {
            text: '좋은 리뷰를 받은 이유'
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




</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>
<script>
    var mapContainer = document.getElementById('map');
    var mapOption = {
        center: new kakao.maps.LatLng(37.389777093851, 127.097880906475),
        level: 5
    };

    var map = new kakao.maps.Map(mapContainer, mapOption);

    var positions = [
        {
            title: '따뜻한 창가가 있는 방',
            latlng: new kakao.maps.LatLng(37.380777093851, 127.097180906475),
            imgSrc: 'https://cfile181.uf.daum.net/image/250649365602043421936D',
            address: ' 첨단로 242',
            jibunAddress: '(우) 63309 (지번) 영평동 2181',
            homepage: '산 중턱에 위치한 탁 트인 시티뷰가 멋진 2층 형 독채 숙소입니다'
        },
        // 추가 좌표 1
        {
            title: '분위기가 좋아 재방문율이 높은 방',
            latlng: new kakao.maps.LatLng(37.384977093851, 127.080180906475),
            imgSrc: '이미지 주소2',
            address:  '모던하고 감각적인 인테리어로 깨끗함과 편안함을 ' +
                '  추구하는 조용하고 프라이빗한 숙소입니다',
            jibunAddress: '지번 주소2',
            homepage:''
        },
        // 추가 좌표 2

        // 추가 좌표 3
        {
            title: '주변이 조용하고 편의시설이 많은 방',
            latlng: new kakao.maps.LatLng(37.387977093851, 127.094180906475),
            imgSrc: '이미지 주소3',
            address: '편안하고 쾌적한 감성숙소에서 아무런 방해없이 온전한 쉼과 행복한 여행을 계획해 보세요',
            jibunAddress: '지번 주소3',
            homepage: ''
        }
    ];

    positions.forEach(function (pos) {
        var marker = new kakao.maps.Marker({
            map: map,
            position: pos.latlng
        });

        var content = '<div class="wrap">' +
            '    <div class="info">' +
            '        <div class="title">' +
            '            ' + pos.title +
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
            '        </div>' +
            '        <div class="body">' +
            '            <div class="img">' +
            '                <img src="' + pos.imgSrc + '" width="73" height="70">' +
            '           </div>' +
            '            <div class="desc">' +
            '                <div class="ellipsis">' + pos.address + '</div>' +
            '                <div class="jibun ellipsis">(우) ' + pos.jibunAddress + '</div>' +
            '                <div><a href="' + pos.homepage + '" target="_blank" class="link">홈페이지</a></div>' +
            '            </div>' +
            '        </div>' +
            '    </div>' +
            '</div>';



        var overlay = new kakao.maps.CustomOverlay({
            content: content,
            map: map,
            position: marker.getPosition()
        });

        kakao.maps.event.addListener(marker, 'click', function () {
            overlay.setMap(map);
        });

    });




</script>
</body>
</html>