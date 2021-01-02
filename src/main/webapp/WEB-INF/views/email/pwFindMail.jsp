<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mypage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/home.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

<style>
body {
	background-color: #f1f1f1;
}

.sendEmailBtn {
	display: none;
}

h2 {
	font-size: 40px;
	text-align: center;
	margin: 200px 0 50px 0;
}

.resetPwEmail-form {
	font-size: 20px;
	text-align: center;
}

.project-mail-label {
	margin-bottom: 20px;
}

.project-mail-search-table {
	margin: 0 auto;
	width: 50%;
	height: 30px;
	border: 1px solid #333;
	border-radius: 3px;
}

.EmailCheckBtn-button {
	margin-top: 10px;
}

.EmailcheckBtn {
	margin: 0 10px 0 10px;
	width: 30%;
}

.sendEmailBtn {
	border-radius: 3px;
	background-color: rgb(200, 202, 183);
	width: 50%;
	font-size: 18px;
	font-weight: bolder;
	padding: 5px;
}

.sendEmailHomeBtn {
	margin: 100px 118px 100px 202px;
	border-radius: 3px;
	background-color: rgb(200, 202, 183);
	width: 50%;
	font-size: 18px;
	font-weight: bolder;
	padding: 5px;
}

.sendEmailHomeBtn {
	margin: 100px 10px 0 10px;
	width: 30%;
}

.resetPwEmail-homeButton {
	text-align: center;
}
</style>

</head>
<body>

	<h2>메일보내기</h2>
	<form action="${pageContext.request.contextPath}/email/sendMail"
		method="post">
		<div class="resetPwEmail-form">
			<label for="email" class="project-mail-label">회원가입할 때 사용하신
				이메일을 작성해주세요</label><br> <input type="text"
				class="project-mail-search-table" id="email" name="getMail">
			<div class="EmailCheckBtn-button">
				<button type="button" class="btn btn-primary EmailcheckBtn"
					id="EmailCheckBtn">이메일 확인</button>
				<br>
			</div>

			<input type="hidden" name="homeMail"> <input type="hidden"
				name="message"> <br>
			<span style="color: red;">${message}</span>
			<button type="submit" class="btn send-Mail sendEmailBtn"
				id="sendEmail">메일 전송하기</button>

		</div>
		<div class="resetPwEmail-homeButton">
			<button type="button" class="btn send-Mail sendEmailHomeBtn"
				id="homeBtn">홈으로</button>
		</div>
	</form>

	<script>
		//회원정보 비밀번호 확인 버튼
		$("#EmailCheckBtn").click(function() {
			var userEmail = $("#email").val();
			console.log(userEmail);

			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath }/users/emailCheck",
				data : JSON.stringify({
					"userEmail" : userEmail
				}),
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					console.log(data);

					if (data >= 1) {
						alert("이메일이 확인되었습니다");
						$("#sendEmail").slideToggle("slow");
					} else {
						alert("이메일을 다시 확인해주세요");

					}

				},
				error : function(status, error) {

					alert("서버에러입니다. 다시시작하세요");
				}

			})

		})

		//홈 버튼
		$("#homeBtn").click(function() {
			location.href = "${pageContext.request.contextPath}";
		})
	</script>


</body>
</html>