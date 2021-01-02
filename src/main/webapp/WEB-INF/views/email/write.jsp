<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--  <%@ include file="../include/header.jsp" %>-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.cookie.js"></script>


<style>
a {
	display: inline-block;
}

#email_botton {
   display: inline-block;
   color:#fff;
   background-color:#789e81;
   position:absolute;
   top:30px;
   left:30px;
   text-decoration:none;
   padding:15px;
     border-radius: 10px;
}
</style>
</head>
<body>

	<!-- 
	<a href="${pageContext.request.contextPath }/email/write.do">이메일 발송</a>
	<h2>이메일 보내기</h2>
	<form method="post" action="send.do">
		 post방식으로 자료를 컨트롤러로 보냄 

		수신자 이메일 : <input name="receiveMail"><br> 내용 :
		<textarea rows="5" cols="80" name="message"></textarea>
		<br> <input type="submit" value="전송">
	</form>
	<span style="color: red;">${message}</span>

-->

	<a href="#" id="email_botton"><h2>이메일 인증</h2>
		<p>클릭 후 이메일을 확인해주세요</p></a>


	<script>
		$(document)
				.ready(
						function() {

							(function() {
								var msg = "${msg}";
								if (msg != '') {
									alert(msg);
								}
							})();

							function guid() {
								function s4() {
									return ((1 + Math.random()) * 0x10000 | 0)
											.toString(16).substring(1);
								}
								return s4() + s4();
							}

							var receiveMail = "${receiveMail}";
							var message = guid();

							function email_transfer(email) {
								console.log($.cookie("email"))
								if ($.cookie("email") == null) {
									$
											.ajax({
												url : "${pageContext.request.contextPath}/email/send.do",
												dataType : "text",
												contentType : "application/json; charset=utf-8",
												type : "POST",
												data : JSON
														.stringify({
															"receiveMail" : receiveMail,
															"message" : message,
															"certiCheck" : "0"
														}),
												success : function(email) {
													console.log("이메일")
												}
											})
									alert("이메일이 전송되었습니다");
								} else {
									alert("이미 메일이 발송 되었습니다")
								}
							}

							$("#email_botton").click(function(event) {
								event.preventDefault();
								var date = new Date();
								//date.setTime(date.getTime() + 3*60*1000);
								date.setTime(date.getTime() + 3 * 1000 * 60);
								if ($.cookie("email") == null) {
									email_transfer(email);
									$.cookie('email', 'email', {
										expires : date,
										path : "/"
									});
									var email = $.cookie("email");
								} else {
									email_transfer(email);
								}

							})
						});
	</script>
</body>
</html>