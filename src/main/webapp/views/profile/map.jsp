

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>닫기가 가능한 커스텀 오버레이</title>

</head>
<body>
<div class="col-lg-9 ps-lg-5">
    <div id="map" style="width:100%;height:550px;"></div>
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




    });




</script>
</body>
</html>