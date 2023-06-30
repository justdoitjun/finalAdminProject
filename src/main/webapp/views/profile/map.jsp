<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> 생성하기1</title>
    <style>

        .label {
            margin-bottom: 96px;
            width: 120px; /* 오버레이의 가로 크기 조정 */
            height: 40px; /* 오버레이의 세로 크기 조정 */
        }


        .label * {display: inline-block;vertical-align: top;}
        .label .left {background: url("https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_l.png") no-repeat;display: inline-block;height: 24px;overflow: hidden;vertical-align: top;width: 7px;}
        .label .center {background: url(https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_bg.png) repeat-x;display: inline-block;height: 24px;font-size: 12px;line-height: 24px;}
        .label .right {background: url("https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_r.png") -1px 0  no-repeat;display: inline-block;height: 24px;overflow: hidden;width: 6px;}




    </style>
</head>
<body>
<div>
    <div id="map" style="width:100%;height:350px;"></div></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.389777093851, 127.097880906475), // 지도의 중심좌표
            level: 7 // 지도의 확대 레벨
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 커스텀 오버레이에 표시할 내용입니다
    // HTML 문자열 또는 Dom Element 입니다
    var positions = [
        {
            title1: '따뜻한 창가가 있는 방',
            latlng: new kakao.maps.LatLng(37.380777093851, 127.097180906475),
            price: '500'
        },
        // 추가 좌표 1
        {
            title2: '분위기가 좋아 재방문율이 높은 방',
            latlng: new kakao.maps.LatLng(37.384977093851, 127.080180906475),
            price: '200',
            homepage:''
        },
        // 추가 좌표 2

        // 추가 좌표 3
        {
            title: '주변이 조용하고 편의시설이 많은 방',
            latlng: new kakao.maps.LatLng(37.387977093851, 127.094180906475),
            price: '600',
            homepage: ''
        }
    ];

    for (var i = 0; i < positions.length; i++) {
        var marker = new kakao.maps.Marker({

            position: positions[i].latlng
        });

        var markerContent =
            '<div class="label">' +
            '<span class="left"></span>' +
            '<span class="center">' +
            positions[i].price +
            '</span>' +
            '<span class="right"></span>' +
            '</div>';

        var marker = new kakao.maps.CustomOverlay({
            content: markerContent,
            position: positions[i].latlng
        });

        marker.setMap(map);


        var iwContent =
            '  <div class="infowindow-wrapper">' +
            '    <div class="infowindow-content">' +
            '      <div style="padding:5px;">' + positions[i].price + '</div>' +
            '    </div>' +
            '  </div>';

        var infowindow = new kakao.maps.InfoWindow({
            content: iwContent
        });

        kakao.maps.event.addListener(marker, 'click', makeClickListener(map, infowindow, marker));
    }

    function makeClickListener(map, infowindow, marker) {
        return function() {
            infowindow.open(map, marker);
        };
    }
</script>
</body>
</html>