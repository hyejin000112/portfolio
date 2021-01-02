<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/map.css">
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
  
</head>
<body>
    <div class="modal-googlemap">
        <div class="modal-list">
            <h4 class="modal-title"><span class="modal-span">구글</span> MAP</h4>
            <h4 class="modal-title">YOU DESERVE TO BE HAPPY</h4>
            <h4 class="modal-title">당신의 여행지를 검색하세요</h4>
        </div>
        
        <div>
            <div class="map-road-map" id="map" style="width : 700px; height : 500px;"></div>
        </div>
    </div>
</body>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2bc77ca67693e7633f95f1e279e4985"></script>
    
<script>
    var x = 37.522831;
    var y = 127.036214;
    var place = "Mani House";

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
    
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(x, y); 

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        position : iwPosition, 
        content : iwContent 
    });
    
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindow.open(map, marker); 
</script>
</html>