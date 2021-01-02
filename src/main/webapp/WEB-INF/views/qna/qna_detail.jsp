

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>



<style>
.titlebox {
	width: 250px;
	text-align: center;
	height: 40px;
	line-height: 40px;
	margin: 70px auto;
	border-top: 1px solid #E1E1E1;
	border-bottom: 1px solid #E1E1E1;
}

.write-wrap {
	margin: 0 auto;
	/*가운대 정렬방법 하지만 적용되지 않는다. 이유는 col클래스들이 float:left를 들고 있기 때문*/
	float: none; /*플롯을 해제한다. 가운대정렬이 들어간다*/
}
/*=======댓글========*/
.reply-wrap {
	background-color: #f5f5f5;
	padding: 15px;
	border: 1px solid #ddd;
	position: relative; /*부모에 relative*/
}

.reply-wrap .reply-image {
	position: absolute; /*자식에서 absolute로 부모요소 위치로 조정*/
	left: 15px;
	top: 15px;
}

.reply-wrap .reply-content {
	padding-left: 60px;
}
/*부트스트랩의 form-control 조정 */
.reply-content>.form-control {
	resize: vertical; /*세로로만 조정가능*/
	width: 100%; /*최대 100%*/
	min-height: 80px; /*최대 넓이*/
	margin-bottom: 10px;
}

.reply-input>.form-control {
	width: 200px;
	margin-bottom: 5px;
}

.reply-group {
	overflow: hidden;
}

.reply-input {
	float: left;
}

.reply-group .right {
	float: right;
}

/*댓글 영역*/
.reply-group small {
	margin-left: 10px;
	height: 20px;
	line-height: 20px;
}

.reply-group small, .reply-group strong {
	float: left;
}

.reply-group a {
	text-decoration: none;
	color: #777;
	float: right;
}
/*댓글창 포커스시 서서히 보이기 */
.reply-content textarea {
	height: 50px;
	transition: height .4s ease-in-out;
}

.reply-content textarea:focus {
	height: 150px;
}

.row_qna {
	margin: 0 auto;
	margin-top: 100px;
}

</style>

</head>

<%@ include file="../include/header.jsp"%>
<section>
	<div class="container">
		<div class="row row_qna">
			<div class="col-xs-12 col-md-9 board-table">
				<div class="titlebox">
					<p>1:1 문의 상세보기</p>
				</div>

				<form action="qna_modify" method="post">
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
							value="${vo.title }" readonly>
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="10" name='content' readonly>${vo.content }</textarea>
					</div>

					<button type="submit" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-dark"
						onclick="location.href='qna_list'">목록</button>
				</form>
			</div>
		</div>
	</div>
</section>

<section style="margin-top: 80px;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-9 write-wrap">
				<form class="reply-wrap">
					<div class="reply-image">
						<img src="../resources/img/profile.png">
					</div>
					<!--form-control은 부트스트랩의 클래스입니다-->
					<div class="reply-content">
						<textarea class="form-control" rows="3" name="reply" id="reply"></textarea>

						<div class="reply-group">
							<div class="reply-input">
								<input type="text" class="form-control" name="replyId"
									id="replyId" placeholder="이름"> <input type="password"
									class="form-control" name="replyPw" id="replyPw"
									placeholder="비밀번호">
							</div>

							<button type="button" class="right btn btn-info"
								name="replyRegist" id="replyRegist">등록하기</button>
						</div>

					</div>
				</form>

				<!--여기에접근 반복-->
				<div id="replyList">
					<!-- 
	                        <div class='reply-wrap'>
	                            <div class='reply-image'>
	                                <img src='../resources/img/profile.png'>
	                            </div>
	                            <div class='reply-content'>
	                                <div class='reply-group'>
	                                    <strong class='left'>honggildong</strong> 
	                                    <small class='left'>2019/12/10</small>
	                                    <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
	                                    <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
	                                </div>
	                                <p class='clearfix'>여기는 댓글영역</p>
	                            </div>
	                        </div>
	                        -->
				</div>
				<button class="form-control" id="moreList">더보기(페이징)</button>

			</div>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>
<script>
		$(document).ready(function() {
			$("#replyRegist").click(function() {
				add();
			})
			//등록함수
			function add() {
				
			
		     	var replyId = $("#replyId").val();
				var replyPw = $("#replyPw").val();     	
		     	var reply = $("#reply").val();
		     	var bno  = "${vo.bno}";
		     	console.log(replyId, replyPw, reply);
		     	if(reply === '' || replyId === '' || replyPw === '' ) {
       				alert("이름, 비밀번호, 내용을 입력하세요");
       				return;
       			}
		     	
		     	$.ajax({
		     		type : "POST",
		     		url : "../reply/replyRegist",
		     		data : JSON.stringify({"replyId" : replyId, "replyPw" : replyPw, "reply" : reply,"bno":bno}),
		     		dataType : "text",
		     		contentType : "application/json; charset=utf-8",
		     		success : function(data) {
		     			if(data == 1) {
		     				$("#replyId").val("");
		     				$("#replyPw").val("");
		     				$("#reply").val("");
		     				alert("등록이 완료되었습니다.")
		     				getList(1, true);
		     			} else {
		     				alert("댓글 등록에 실패했습니다. 잠시 후에 다시 시도하세요");
		     			}
		     		},
		     		error : function(status, error) {
		     			alert("댓글 등록에 실패했습니다. 관리자에게 문의하세요");
		     		}
		     	})
		     }
			
			//더보기 버튼처리
     		$("#moreList").click(function() {
     			getList(++page, false); 
     		})
     		
     		//목록 요청         		
     		var page = 1;
     		var strAdd = "";
     		
     		getList(1, true);
     		function getList(pageNum, reset) {
     			var bno = "${vo.bno}";
				$.getJSON(
					"../reply/getList/" + bno +"/" + pageNum, 
					
					function(data) {
						
						var total = data.total;
						var data = data.list;
						
						console.log(data);
						if(page * 10 >= total) {
							$("#moreList").css("display", "none");
						} else {
							$("#moreList").css("display", "block");
						}
						
						if(reset == true) { 
							strAdd = "";
							page = 1;
						}
						
						if(data.length <= 0) {
							return; 
						}
						
						for(var i = 0; i < data.length; i++) {
							
	                        strAdd += "<div class='reply-wrap' style='display:none;'>";
                            strAdd += "<div class='reply-image'>";
                            strAdd += "<img src='../resources/img/profile.png'>";
                            strAdd += "</div>";
                            strAdd += "<div class='reply-content'>";
                            strAdd += "<div class='reply-group'>";
                            strAdd += "<strong class='left'>"+ data[i].replyId +"</strong>"; 
							strAdd += "<small class='left'>"+ timeStamp(data[i].replyDate) +"</small>"
                            strAdd += "<a href='"+ data[i].rno +"' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>";
                            strAdd += "<a href='"+ data[i].rno +"' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>";
                            strAdd += "</div>";
                            strAdd += "<p class='clearfix'>"+ data[i].reply +"</p>";
                            strAdd += "</div>";
                        	strAdd += "</div>";
						}
						$("#replyList").html(strAdd);
						$(".reply-wrap").fadeIn(500); 
					}
				)
     		}
			
					$("#replyList").on("click", "a", function() {
		 				event.preventDefault();

						var rno = $(this).attr("href");
						$("#modalRno").val(rno);   
		 				if( $(this).hasClass("replyModify") ) {
							$(".modal-title").html("댓글수정");
							$("#modalReply").css("display", "inline");
							$("#modalModBtn").css("display", "inline");
							$("#modalDelBtn").css("display", "none");
							$("#replyModal").modal("show");
		 				} else {
							$(".modal-title").html("댓글삭제");
							$("#modalReply").css("display", "none");
							$("#modalModBtn").css("display", "none");
							$("#modalDelBtn").css("display", "inline");
							$("#replyModal").modal("show");
		 				}
		 			})
		     		
		 			//수정함수
		 			$("#modalModBtn").click(function() {
		 				
		 				var reply = $("#modalReply").val();
		 				var rno = $("#modalRno").val();
		 				var replyPw  = $("#modalPw").val();
		 				
		 				if(reply === "" || rno === "" || replyPw === "") {
		 					alert("내용, 비밀번호를 확인하세요");
		 					return;
		 				}
		 				
		 				$.ajax({
		 					type: "POST",
		 					url: "../reply/update",
		 					data: JSON.stringify({"reply": reply, "rno": rno, "replyPw": replyPw}),
		 					contentType: "application/json; charset=utf-8",
		 					success: function(data) {
		 						
		 						if(data == 1) {
		 							alert("댓글이 수정되었습니다");
		 							$("#modalReply").val("");
		 							$("#modalPw").val("");
		 							$("#replyModal").modal("hide");
		 							getList(1, true);
		 						} else {
		 							alert("댓글 수정에 실패했습니다. 비밀번호를 확인하세요");
		 							$("#modalPw").val("");
		 						}
		 						
		 					},
		 					error: function(status, error) {
		 						alert("수정에 실패했습니다. 관리자에게 문의하세요");
		 					}
		 				})
		 			})
		 			
		 			//삭제함수
		 			$("#modalDelBtn").click(function() {

		 				var rno = $("#modalRno").val();
		 				var replyPw = $("#modalPw").val();
		 				
		 				if(replyPw == "") {
		 					alert("비밀번호를 확인하세요.");
		 				}
		 				
		 				$.ajax({
		 					type:"POST",
		 					url: "../reply/delete",
		 					data: JSON.stringify({"rno": rno, "replyPw": replyPw}),
		 					contentType: "application/json; charset=utf-8",
		 					success:function(data) {
		 						
		 						if(data == 1) {
		 							alert("게시물이 삭제되었습니다");
		 							$("#modalPw").val("");
		 							$("#replyModal").modal("hide");
		 							getList(1, true);
		 						} else {
		 							alert("비밀번호를 확인하세요.");
		 						}
		 					},
		 					error:function(status, error) {
		 						alert("삭제에 실패했습니다. 관리자에게 문의하세요.")
		 					}
		 					
		 				})
		 			})
		     		 
		     		//날짜처리 함수
		     		function timeStamp(millis) {
		     			
		     			var date = new Date();
		     			var gap = date.getTime() - millis ;
		    			
		     			var time;
		     			if( gap < 1000 * 60 * 60 * 24 ) {
		     				if(gap < 1000 * 60 * 60) {
		     					time = "방금전";
		     				} else {
		     					time = parseInt(gap / (1000 * 60 * 60) ) + "시간전";
		     				}
		     			} else {
		     				var today = new Date(millis);
							var year = today.getFullYear();				
		     				var month = today.getMonth() + 1;
		     				var day = today.getDate();
		     				var hour = today.getHours();
		     				var minute = today.getMinutes();
		     				var second = today.getSeconds();
		 					
		     				time = year + "년" + month + "월" + day + "일 " + hour + ":" + minute + ":"  + second ;
		     			}
		     			return time;
		     		}
					
			})
	</script>

<div class="modal fade" id="replyModal" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="btn btn-default pull-right"
					data-dismiss="modal">닫기</button>
				<h4 class="modal-title">댓글수정</h4>
			</div>
			<div class="modal-body">
				<!-- 수정폼 id값을 확인하세요-->
				<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply"
						placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
							<input type="hidden" id="modalRno"> <input
								type="password" class="form-control" placeholder="비밀번호"
								id="modalPw">
						</div>
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>