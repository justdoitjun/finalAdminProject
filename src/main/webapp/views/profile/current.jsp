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
<script src="https://cdn.jsdelivr.net/stomp.js/2/stomp.min.js"></script>


<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="/static/js/chart.js"></script>
<script>
    Highcharts.chart('container', {
        chart: {
            type: 'spline'
        },
        title: {
            text: 'Monthly Average Temperature'
        },
        subtitle: {
            text: 'Source: <a href="https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature" target="_blank">Wikipedia.com</a>'
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            accessibility: {
                description: 'Months of the year'
            }
        },
        yAxis: {
            title: {
                text: 'Temperature'
            },
            labels: {
                format: '{value}°'
            }
        },
        tooltip: {
            crosshairs: true,
            shared: true
        },
        plotOptions: {
            spline: {
                marker: {
                    radius: 4,
                    lineColor: '#666666',
                    lineWidth: 1
                }
            }
        },
        series: [{
            name: 'Tokyo',
            marker: {
                symbol: 'square'
            },
            data: [5.2, 5.7, 8.7, 13.9, 18.2, 21.4, 25.0, {
                y: 26.4,
                marker: {
                    symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
                },
                accessibility: {
                    description: 'Sunny symbol, this is the warmest point in the chart.'
                }
            }, 22.8, 17.5, 12.1, 7.6]
        }, {
            name: 'Bergen',
            marker: {
                symbol: 'diamond'
            },
            data: [{
                y: 1.5,
                marker: {
                    symbol: 'url(https://www.highcharts.com/samples/graphics/snow.png)'
                },
                accessibility: {
                    description: 'Snowy symbol, this is the coldest point in the chart.'
                }
            }, 1.6, 3.3, 5.9, 10.5, 13.5, 14.5, 14.4, 11.5, 8.7, 4.7, 2.6]
        }]
    });
</script>


<script>
    // Add your chart configuration here
    Highcharts.chart('container2', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Browser market shares in May, 2020',
            align: 'left'
        },
        series: [{
            name: 'Browser',
            colorByPoint: true,
            data: [{
                name: 'Chrome',
                y: 61.41,
                sliced: true,
                selected: true
            }, {
                name: 'Internet Explorer',
                y: 11.84
            }, {
                name: 'Firefox',
                y: 10.85
            }, {
                name: 'Edge',
                y: 4.67
            }, {
                name: 'Safari',
                y: 4.18
            }, {
                name: 'Other',
                y: 7.05
            }]
        }]
    });
</script>

<script>
    let websocket_center = {
        stompClient:null,
        init:function(){
            this.connect();
        },
        connect:function(){
            var sid = this.id;
            var socket = new SockJS('${adminserver}/wss');
            this.stompClient = Stomp.over(socket);
            this.stompClient.connect({}, function(frame) {
                console.log('Connected: ' + frame);
                this.subscribe('/sendadm', function(msg) {
                    $('#content1_msg').text(JSON.parse(msg.body).content1);
                    $('#content2_msg').text(JSON.parse(msg.body).content2);
                    $('#content3_msg').text(JSON.parse(msg.body).content3);
                    $('#content4_msg').text(JSON.parse(msg.body).content4);
                    $('#progress1').css('width',JSON.parse(msg.body).content1/100*100+'%');
                    $('#progress1').attr('aria-valuenow',JSON.parse(msg.body).content1/100*100);
                    $('#progress2').css('width',JSON.parse(msg.body).content2/1000*100+'%');
                    $('#progress2').attr('aria-valuenow',JSON.parse(msg.body).content2/1000*100);
                    $('#progress3').css('width',JSON.parse(msg.body).content3/500*100+'%');
                    $('#progress3').attr('aria-valuenow',JSON.parse(msg.body).content3/500*100);
                    $('#progress4').css('width',JSON.parse(msg.body).content4/10*100+'%');
                    $('#progress4').attr('aria-valuenow',JSON.parse(msg.body).content4/10*100);
                });
            });
        }
    };

    let center_chart1 = {
        init:function (){

            $.ajax({
                url:'/chart1',
                success:function(data){
                    alert(data);
                    center_chart1.display(data);
                }

            });


        },
        display:function(data){
            Highcharts.chart('container1', {
                chart: {
                    type: 'line'
                },
                title: {
                    text: 'Monthly Average Temperature'
                },
                subtitle: {
                    text: 'Source: ' +
                        '<a href="https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature" ' +
                        'target="_blank">Wikipedia.com</a>'
                },
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },
                yAxis: {
                    title: {
                        text: 'Temperature (°C)'
                    }
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: false
                    }
                },
                series: data
            });

        }
    };

    let center_chart2 = {
        init:function (){
            $.ajax({
                url:'/chart1',
                success:function(data){
                    alert(data);
                    center_chart2.display(data);
                }

            });

            center_chart2.display(
                Highcharts.chart('container2', {
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: 'Monthly Average Rainfall'
                    },
                    subtitle: {
                        text: 'Source: WorldClimate.com'
                    },
                    xAxis: {
                        categories: [
                            'Jan',
                            'Feb',
                            'Mar',
                            'Apr',
                            'May',
                            'Jun',
                            'Jul',
                            'Aug',
                            'Sep',
                            'Oct',
                            'Nov',
                            'Dec'
                        ],
                        crosshair: true
                    },
                    yAxis: {
                        min: 0,
                        title: {
                            text: 'Rainfall (mm)'
                        }
                    },
                    tooltip: {
                        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                        footerFormat: '</table>',
                        shared: true,
                        useHTML: true
                    },
                    plotOptions: {
                        column: {
                            pointPadding: 0.2,
                            borderWidth: 0
                        }
                    },
                    series: data
                })

            );
        },
        display:function(data){


        }

    };

    $(function(){

        websocket_center.init();

        center_chart1.init();
        center_chart2.init();

        setInterval(center_chart1.init,5000);
        setInterval(center_chart2.init,15000);
    });
</script>
<!-- Begin Page Content -->
<div class="col-lg-9 ps-lg-5">
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">어드민 관리(매출 통계부분할거)</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <!-- Content Row -->
    <div class="row">
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Tasks
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div id="content1_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div id="progress1" class="progress-bar bg-success" role="progressbar"
                                             style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Tasks
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div id="content2_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div id="progress2" class="progress-bar bg-primary" role="progressbar"
                                             style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-dark shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">Tasks
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div id="content3_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div id="progress3" class="progress-bar bg-dark" role="progressbar"
                                             style="width: 10%" aria-valuenow="50" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Tasks
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div id="content4_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div id="progress4" class="progress-bar bg-danger" role="progressbar"
                                             style="width: 20%" aria-valuenow="50" aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Content Row -->
    <div class="row">
        <!-- Area Chart -->
        <div class="col-xl-6 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> 공실률 </h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-area" id="container"></div>
                </div>
            </div>
        </div>
        <!-- Pie Chart -->

        <div class="col-xl-6 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">월평균 매출그래프</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-area" id="container2"></div>
                </div>
            </div>
        </div>




    </div>
    <!-- Content Row -->
</div>

    <div class="col-xl-8 col-lg-10">
        <div class="card shadow mb-4">

    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">주변</h6>
        <div id="map" style="width:100%;height:550px;"></div>
    </div>
        </div> </div>
<!-- /.container-fluid -->
</div>



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