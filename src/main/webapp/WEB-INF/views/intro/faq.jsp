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
	<div class="list3_img_box">
		<img
			src="${pageContext.request.contextPath }/resources/img/board_top_faq.jpg">
	</div>

	<div class="container">
		<div class="row">
			<div class="location board-list-location">
				<span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
				<span>Zero Stress</span> <span class="ar">></span> <span>FAQ</span>
			</div>


			<div class="container faq-sub-contents-start">
				<div class="row faq-content">
					<section class="faq-content-element">
						<h3 class="faq-textcenter">FAQ</h3>
						<div class="faq-text-area">
							<div class="faq-text-content">
								<strong>"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong><br> "Zero
								Stress에 대한 궁금증을 답변으로 제공해드리고 있습니다."
							</div>
						</div>
					</section>


					<!-- content -->
					<section id="content">
						<section class="faq-list-element">
							<!-- faq list-->
							<div class="faq-list-cont">
								<div class="faq-q">
									<div class="vm-boxa">
										<span class="faq-category">Zero Stress</span> <span
											class="text-cont">Zero Stress에는 무슨 기능들이 있나요?</span> <span
											class="glyphicon glyphicon-menu-down"></span>
									</div>
								</div>
								<div class="faq-aa">
									<p>Zero Stress홈페이지에서는 MTBI검사 유형에 따라 여행지와 그에 따른 활동을 추천해드리고
										있습니다. 또한 MBTI검사 유형뿐만 아니라 국내여행정보에 대해서 찾아 볼 수 있습니다.</p>
								</div>
							</div>

							<!-- faq list-->
							<div class="faq-list-cont">
								<div class="faq-q">
									<div class="vm-boxd">
										<span class="faq-category">Zero Stress</span> <span
											class="text-cont">Zero Stress 사이트 운영은 누가하나요?</span> <span
											class="glyphicon glyphicon-menu-down"></span>
									</div>
								</div>
								<div class="faq-ad">
									<p>Zero Stress는 MBTI성격 유형을 기반으로 하는 여행지 추천을 비롯한 국내여행의 정보를
										알려주는 사이트로 Zero Stress팀이 관리하고 있습니다. Zero Stress는 국내의 관광인프라를
										구축하고 성격 유형에 따른 국내여행정보를 알리는데 앞장서고 있습니다.</p>
								</div>
							</div>
							
							<!-- faq list-->
							<div class="faq-list-cont">
								<div class="faq-q">
									<div class="vm-boxe">
										<span class="faq-category">Zero Stress</span> <span
											class="text-cont">'추천 여행지' 선정 기준은 무엇인가요?</span> <span
											class="glyphicon glyphicon-menu-down"></span>
									</div>
								</div>
								<div class="faq-ae">
									<p>Zero Stress는 성격, 지역, 유형별로 나누어서 추천 여행지를 선정하여 추천하고 있습니다.</p>
								</div>
							</div>

							<!-- faq list-->
							<div class="faq-list-cont">
								<div class="faq-q">
									<div class="vm-boxb">
										<span class="faq-category">Zero Stress</span> <span
											class="text-cont">대한민국 구석구석 홈페이지내 여행정보 콘텐츠에 오류가 있습니다.</span>
										<span class="glyphicon glyphicon-menu-down"></span>
									</div>
								</div>
								<div class="faq-ab">
									<p>안녕하십니까? 저희 Zero Stress에 관심을 가지고 방문해주셔서 감사드립니다. 홈페이지를 통해
										제공중인 여행정보 콘텐츠에 대해 오류를 발견했을시 메일(zerostress@zero.or.kr)로 해당내용을
										보내주시면 됩니다. 내용을 확인한 후 최대한 신속하게 처리해 드리겠습니다.감사합니다.</p>
								</div>
							</div>

							<!-- faq list-->
							<div class="faq-list-cont">
								<div class="faq-q">
									<div class="vm-boxc">
										<span class="faq-category">Zero Stress</span> 
										<span class="text-cont">Zero Stress에서 사용된 API의 기능은 무엇인가요?</span> 
										<span class="glyphicon glyphicon-menu-down"></span>
									</div>
								</div>
								<div class="faq-ac">
									<p>Zero Stress에서는 카카오톡 로그인, 카카오톡 지도, 날씨와  공공데이터포털 사이트에서  국문 관광정보 서비스 데이터를 가져와서 여행지에 대한 정보를 보여주고 있습니다.</p>
								</div>
							</div>
							
						</section>
					</section>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>
	<%@ include file="../users/user_modal.jsp" %>
	<script>
		$(document).ready(function() {
			$(".vm-boxa").click(function() {
				$(".faq-aa").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxb").click(function() {
				$(".faq-ab").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxc").click(function() {
				$(".faq-ac").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxd").click(function() {
				$(".faq-ad").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxe").click(function() {
				$(".faq-ae").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxf").click(function() {
				$(".faq-af").slideToggle("slow");
			})
		})

		$(document).ready(function() {
			$(".vm-boxg").click(function() {
				$(".faq-ag").slideToggle("slow");
			})
		})
	</script>

</body>
</html>