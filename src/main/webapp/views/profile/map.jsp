
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>닫기가 가능한 커스텀 오버레이</title>
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
</head>
<body>
<div id="map" style="width:100%;height:550px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>
<script>
    var mapContainer = document.getElementById('map');
    var mapOption = {
        center: new kakao.maps.LatLng(33.451475, 126.570528),
        level: 3
    };

    var map = new kakao.maps.Map(mapContainer, mapOption);

    var positions = [
        {
            title: '따뜻한 창가가 있는 방',
            latlng: new kakao.maps.LatLng(33.450701, 126.570667),
            imgSrc: 'https://cfile181.uf.daum.net/image/250649365602043421936D',
            address: '제주특별자치도 제주시 첨단로 242',
            jibunAddress: '(우) 63309 (지번) 영평동 2181',
            homepage: 'https://www.kakaocorp.com/main'
        },
        // 추가 좌표 1
        {
            title: '여러명이 단체로 묵어도 될만한 숙소',
            latlng: new kakao.maps.LatLng(33.451111, 126.571111),
            imgSrc: '이미지 주소1',
            address: '주소1',
            jibunAddress: '지번 주소1',
            homepage: '홈페이지 주소1'
        },
        // 추가 좌표 2
        {
            title: '가성비 좋은 신축 숙소',
            latlng: new kakao.maps.LatLng(33.452222, 126.572222),
            imgSrc: '이미지 주소2',
            address: '주소2',
            jibunAddress: '지번 주소2',
            homepage: '홈페이지 주소2'
        },
        // 추가 좌표 3
        {
            title: '주변이 조용하고 편의시설이 많은 곳',
            latlng: new kakao.maps.LatLng(33.453333, 126.573333),
            imgSrc: '이미지 주소3',
            address: '주소3',
            jibunAddress: '지번 주소3',
            homepage: '홈페이지 주소3'
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

    function closeOverlay() {
        overlay.setMap(null);
    }
</script>
</body>
</html>