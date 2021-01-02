<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>
	
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/all.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/home.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/intro.css">
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>

	<%@ include file="../include/header.jsp"%>


	<div class="intro_box">

		<div class="container intro_section">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-12 intro_all">

					<div class="intro_tit">
						<h1>인사말</h1>
					</div>

					<div class="introduce_box">
						<p class="intro_start">
							"Zero Stress를 소개합니다."<br>
						</p>

						<div class="intro_mid">
							저희 Zero Stress는 일상속에서 지친사람들을 위해 여행지를 추천해주는 홈페이지입니다.<br> Zero
							Stress 홈페이지에서는 개별적인 성향을 가진 사람들의 MBTI검사를 실시합니다.<br> 그리고
							MBTI검사 유형에 맞는 여행지 및 활동을 추천해주고 있습니다.<br>
						</div>

						<div class="intro_end">
							당신의 MBTI유형! 궁금하시지 않으신가요?<br> 저희 Zero Stress 홈페이지를 통해 MBTI검사를
							받으시고, 그 유형에 따라 여행지와 다양한 활동을 추천받아보시는 것은 어떠신가요?<br> <br>
							그렇다면 저희 Zero Stress 홈페이지를 이용해보세요.<br> Zero Stress는 당신들의 행복과
							즐거움이 가득한 일상으로 만들어 나아갈 수 있도록 노력하겠습니다.
						</div>

					</div>
					<div class="col-sm-12"></div>
					<hr>

					<div class="content_one">
						<div class="content_one_img">
							<img src="${pageContext.request.contextPath }/resources/img/joy.jpg">
						</div>
						<div class="content_one_txt">
							<p class="txt_tit">즐거움을 선사하는 Joyful</p>
							<p class="txt_stit">
								여행을 가볍게!<br> 일상생활에서 벗어나 힐링해보세요.<br> 일상의 가장 반짝이는 순간으로
								기억될 수 있도록 Zero Stress가 함께합니다.
							</p>
						</div>

					</div>
					<hr>
					<div class="content_two">
						<div class="content_two_img">
							<img src="${pageContext.request.contextPath }/resources/img/inn.jpg">
						</div>
						<div class="content_two_txt">
							<p class="txt_tit">혁신적인 Innovative</p>
							<p class="txt_stit">
								모두가 같은 곳에서 똑같은 경험만을 반복할 수 없기에, 성향에 따라 다양한 여행지와 활동 추천으로 여행 문화를
								선도합니다.<br> 나만의 경험으로 일상의 가장 반짝이는 순간이 될 수 있도록 Zero Stress가
								함께합니다.
							</p>
						</div>
					</div>

				</div>


			</div>
		</div>

	</div>


	<%@ include file="../include/footer.jsp"%>
	<%@ include file="../users/user_modal.jsp" %>
</body>
</html>