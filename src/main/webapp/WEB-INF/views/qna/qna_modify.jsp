<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인덱스를 만들어 보자</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
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
				<div class="col-lg-9 col-xs-12 board-table">
					<div class="titlebox">
						<p>수정하기</p>
					</div>

					<form action="#" name="updateForm" method="post">
						<div>
							<label>DATE</label>
							<p>
								<fmt:formatDate value="${vo.regDate }" pattern="yyyy-MM-dd" />
							</p>
						</div>
						<div class="form-group">
							<label>번호</label> <input class="form-control" name='bno'
								value="${vo.bno }" readonly>
						</div>
						<div class="form-group">
							<label>작성자</label> <input class="form-control" name='writer'
								value="${vo.writer }" readonly>
						</div>
						<div class="form-group">
							<label>제목</label> <input class="form-control" name='title'
								value="${vo.title }">
						</div>

						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" rows="10" name='content'>${vo.content }</textarea>
						</div>

						<button type="button" class="btn btn-dark" id="listBtn">목록</button>
						<button type="button" class="btn btn-primary" id="updateBtn">수정</button>
						<button type="button" class="btn btn-info" id="deleteBtn">삭제</button>
					</form>

				</div>
			</div>
		</div>
	</section>

	<%@ include file="../include/footer.jsp"%>

	<script>
        
        	/* 폼태그에 action으로 경로2개 넣기(한개의 화면에서 수정과 삭제가 처리될 때) */
        
        	var listBtn = document.getElementById("listBtn");
        	listBtn.onclick = function() {
        		
        		location.href="qna_list"; //목록 화면 이동
        		
        	}
        	
        	var updateBtn = document.getElementById("updateBtn");
        	updateBtn.onclick = function() {
        		
        		/*
        		1. 폼에 데이터가 공백인지 확인처리
        		2. 공백이 없으면 Controller에 freeUpdate요청으로 데이터를 전송
        		3. Controller에서는 int getUpdate()메서드를 사용해서 정보를 수정
        		4. Controller에서는 업데이트 성공시, "게시글 수정이 정상 처리되었습니다"를 출력해주세요
        		*/
        		
        		if(document.updateForm.writer.value === '') {
    				alert("작성자를 입력하세요");
    				document.updateForm.writer.focus();
        		} else if(document.updateForm.title.value === '') {
    				alert("제목을 입력하세요");
    				document.updateForm.title.focus();	
    				return;
    			} else if(document.updateForm.content.value === '') {
    				alert("내용을 입력하세요");
    				document.updateForm.content.focus();
    				return;
    			} else {
    				
    				//폼의 action값을 변경
    				document.updateForm.action = "getUpdate";
    				document.updateForm.submit();    				
    			}

        	}
        	
        	var deleteBtn = document.getElementById("deleteBtn");
        	deleteBtn.onclick = function() {
        		
        		document.updateForm.action = "getDelete";
        		document.updateForm.submit();
        		
        		/* var bno = document.getElementsByName("bno")[0].value;
        		location.href="freeDelete?bno="+bno; */
        		
        	}
        		
        </script>

</body>
</html>