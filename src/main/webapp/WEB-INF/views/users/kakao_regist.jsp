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
	href="${pageContext.request.contextPath }/resources/css/users.css">

<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

<style>

body {
	background-color: #f1f1f1;
}

.kakaoRegist-form {
	width: 100%;
	/* background-color: #FFFAC7; */
}

.project-kakao-table {
	margin: 0 auto;
	margin-top: 240px;
}

.project-kakao-regist-table-td2 {
	padding: 20px;
	text-align: center;
}

.project-kakao-regist-table-td2 p {
	font-size: 20px;
}

.project-kakao-regist-table {
	margin: 0 auto;
	width: 50%;
}

.project-kakao-table-input {
	border: 1px solid #444444;
	width: 100%;
	padding: 10px;
}

.project-kakao-table-btn {
	padding: 20px;
	text-align: center;
}

.project-kakao-table-button {
	border-radius: 3px;
	background-color: rgb(200 202 183);
	width: 100%;
	height: 30px;
	font-size: 18px;
	font-weight: bolder;    
}
</style>

</head>
<body>


	<form action="../users/kakaoRegistForm" class="kakaoRegist-form" method="post"
		id="kakaoRegistForm" name="kakaoRegistForm">
		<table class="project-kakao-table">

			<tr>
				<td class="project-kakao-regist-table-td2">
					<p>
						<strong>카카오톡 계정으로 로그인 하시려면 확인버튼을 눌러주세요</strong>
					</p>
				</td>
			</tr>

			<tr>
				<td><input type="text" class="project-kakao-table-input"
					id="kakaoUserId" name="userId" value="${vo.userId }" readonly
					placeholder="숫자, 영어로 4-12자"></td>
			</tr>

			<tr>
				<td><input type="text" class="project-kakao-table-input"
					name="userName" id="kakaoUserName" value="${vo.userName }" readonly
					placeholder="OOO"></td>
			</tr>

			<tr>
				<td><input type="text" class="project-kakao-table-input"
					name="userEmail" id="kakaoUserEmail" value="${vo.userEmail }"
					readonly placeholder="email@example.com"></td>

			</tr>

			<tr>
				<td class="project-kakao-table-btn"><input type="submit"
					value="확인" class="project-kakao-table-button" id="kakaoJoinBtn"></td>
			</tr>

		</table>
	</form>


</body>
</html>