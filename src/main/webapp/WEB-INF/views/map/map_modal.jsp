<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>
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

<%@ include file="../include/header.jsp"%>
	<div class="Container map-road-container">
		<div class="row">
			<div class="map-road-text">
				<img class="map-road-img"
					src="${pageContext.request.contextPath }/resources/img/map1.png">
				<h1>경로</h1>
				<h3>
					종합적인 데이터 및 실시간 교통정보로 사용자에게 출발지에서<br>목적지까지 가는 최적의 경로를 찾아주세요.
				</h3>
				<input class="map-road-button" type="button" value="지도 보기"
					onclick="showPopup();" />
			</div>
		</div>
	</div>
</body>

<%@ include file="../include/footer.jsp"%>
<script language="javascript">
    function showPopup() { window.open("map_detail", "a", "width=800, height=750, left=100, top=50"); }
</script>
</html>