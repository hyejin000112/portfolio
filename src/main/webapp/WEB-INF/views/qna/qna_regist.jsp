<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--개인 디자인 추가-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

<style>
.row_qna {
	margin: 0 auto;
	margin-top: 100px;
}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<!--게시판-->
	<section>
		<div class="container">
			<div class="row row_qna">
				<div class="col-xs-12 board-table">
					<div class="titlebox">
						<p>문의 글 작성</p>
					</div>

					<form action="qnaForm" name="qnaForm" id="qnaForm" method="post">
						<table class="table">
							<tbody class="t-control">
								<tr>
									<td class="t-title">NAME</td>
									<td><input class="form-control input-sm" name="writer"
										value="${sessionScope.userId }"></td>
								</tr>
								<tr>
									<td class="t-title">TITLE</td>
									<td><input class="form-control input-sm" name="title"></td>
								</tr>
								<tr>
									<td class="t-title">COMMNET</td>
									<td><textarea class="form-control" rows="7" name="content"></textarea></td>
								</tr>
							</tbody>
						</table>
					</form>

					<div class="titlefoot">
						<button class="btn" id="registBtn">등록</button>
						<button class="btn" id="listBtn">목록</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="../include/footer.jsp"%>

	<script>
		var listBtn = document.getElementById("listBtn");
		listBtn.onclick = function() {

			location.href = "qna_list"; //목록 화면 이동

		}

		var registBtn = document.getElementById("registBtn");
		registBtn.onclick = function() {
			//form태그는 document.name으로 접근
			if (document.qnaForm.writer.value === '') {
				alert("작성자를 입력하세요");
				document.qnaForm.writer.focus();
				return;
			} else if (document.qnaForm.title.value === '') {
				alert("제목을 입력하세요");
				document.qnaForm.title.focus();
				return;
			} else if (document.qnaForm.content.value === '') {
				alert("내용을 입력하세요");
				document.qnaForm.content.focus();
				return;
			} else {
				document.qnaForm.submit();

			}
		}
	</script>
</body>
</html>