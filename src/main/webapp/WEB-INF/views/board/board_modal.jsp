<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

</head>
<body>
	<p data-toggle="modal" data-target="#modal-board-regist">게시판 등록</p>
	<p data-toggle="modal" data-target="#modal-board-content">게시판 상세보기</p>

	<!-- 게시판 등록 Modal -->
	<div class="modal fade" id="modal-board-regist" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 리뷰 등록
					</h4>
				</div>
				<div class="modal-body">
					<form action="replyRegist" class="modal-form" method="post">
						<table class="project-board-table">
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>작성자</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text" value="${sessionScope.userId}"
									name="reviewId" id="reviewId" placeholder="최대 10자"></td>
							</tr>
							
							<tr>
								<td><input class="project-board-table-input" type="hidden" value="${contentId}"
									name="contentId" id="contentId" ></td>
							</tr>

							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>제목</strong>&nbsp;&nbsp;&nbsp;<span id="titleCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text"
									name="title" id="title" placeholder="최소 8자"></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>내용</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td"><textarea
										class="form-control project-board-table-textarea" rows="5"
										name="content" id="content"></textarea></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>평가</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td1"><label><input
										type='radio' name="evaluate" value="5" />★★★★★</label> <label><input
										type='radio' name="evaluate" value="4" />★★★★☆</label> <label><input
										type='radio' name="evaluate" value="3" />★★★☆☆</label> <label><input
										type='radio' name="evaluate" value="2" />★★☆☆☆</label> <label><input
										type='radio' name="evaluate" value="1" />★☆☆☆☆</label></td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button1" type="button"
									id="reviewRegist" value="등록"></td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button2" type="button" value="취소"
									id="cancleBtn"></td>
							</tr>
						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!-- 게시판 확인 및 삭제 Modal -->
	<div class="modal fade" id="modal-board-content" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 리뷰 확인 및 삭제
					</h4>
				</div>
				<div class="modal-body">
					<form action="" class="modal-form" method="post">
						<table class="project-board-table">

							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>글번호</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span>
									</p>
								</td>
							</tr>
							
							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_delete_rno" name="rno" readonly></td>
							</tr>
							
							

							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>작성자</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_delete_writer" readonly></td>
							</tr>

							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>제목</strong>&nbsp;&nbsp;&nbsp;<span id="titleCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_delete_title" readonly></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>내용</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td"><textarea
										class="form-control project-board-table-textarea"
										id="modal_delete_content" rows="5" name='bContent' readonly></textarea></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>평가</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td1"><label><input
										type='radio' name="evaluate" value="" checked
										onclick="return(false);" />★★★★★</label> <label><input
										type='radio' name="evaluate" value="" onclick="return(false);" />★★★★☆</label>
									<label><input type='radio' name="evaluate" value=""
										onclick="return(false);" />★★★☆☆</label> <label><input
										type='radio' name="evaluate" value="" onclick="return(false);" />★★☆☆☆</label>
									<label><input type='radio' name="evaluate" value=""
										onclick="return(false);" />☆☆☆☆☆</label></td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button1" type="button" value="확인">
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button2" type="button" value="삭제"
									id="modal_delete"></td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button3" type="button" value="취소">
								</td>
							</tr>
						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 게시판 수정 Modal -->
	<div class="modal fade" id="modal-board-update" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 리뷰 수정
					</h4>
				</div>
				<div class="modal-body">
					<form action="../review/review_modifyForm" class="modal-form"
						method="post">
						<table class="project-board-table">
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>글번호</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span>
									</p>
								</td>
							</tr>

							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_modify_rno" name="rno" readonly></td>
							</tr>

							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>작성자</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_modify_writer" readonly></td>
							</tr>


							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>제목</strong>&nbsp;&nbsp;&nbsp;<span id="titleCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-board-table-input" type="text"
									id="modal_modify_title" name="title"></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>내용</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td"><textarea
										class="form-control project-board-table-textarea" rows="5"
										name='content' id="modal_modify_content"></textarea></td>
							</tr>
							<tr>
								<td class="project-board-table-td">
									<p>
										<strong>평가</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="project-board-table-td1 modal_modi_td"><label><input
										type='radio' name="evaluate" value="5" checked />★★★★★</label> <label><input
										type='radio' name="evaluate" value="4" />★★★★☆</label> <label><input
										type='radio' name="evaluate" value="3" />★★★☆☆</label> <label><input
										type='radio' name="evaluate" value="2" />★★☆☆☆</label> <label><input
										type='radio' name="evaluate" value="1" />★☆☆☆☆</label></td>
							</tr>

							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button2" type="submit" value="수정">
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-board-table-td3"><input
									class="project-board-table-button3" type="button" value="취소">
								</td>
							</tr>
						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>

<script>
	
	$(document).ready(function() {
		
	
		$("#modal_delete").click(function(){
			var rno = $("#modal_delete_rno").val();
			console.log(rno);
			$.ajax({
				url : "../review/modal_deleteForm?rno=" + rno,
				type : "GET",
				async : "false",
				success : function(data) {
				
					if(data==1){
						alert("삭제 성공");
						$("#modal-board-content").modal('hide');
					}else{
						alert("삭제 실패");
					}
				}
					
			})
		})
		
		
		
		
/* 	$('#modal-board-regist').modal({backdrop: 'static'});
	$('#modal-board-content').modal({backdrop: 'static'});
	$('#modal-board-update').modal({backdrop: 'static'}); */
     	$("#reviewRegist").click(function(){
     		add();
     	})
     	
     	
	     function add() {
	     	var contentId = $("#contentId").val();
	     	var reviewId = $("#reviewId").val();
			var title = $("#title").val();     	
	     	var content = $("#content").val();
	     	var evaluate= $("input[name='evaluate']:checked").val();
	     	
	     	$.ajax({
	     		type : "POST", 
	     		url : "../review/reviewRegist",
	     		data : JSON.stringify({"contentId" : contentId,  "reviewId" : reviewId, "title" : title, "content" : content, "evaluate" : evaluate}),
	     		dataType : "text", 
	     		contentType : "application/json; charset=utf-8",
	     		success : function(data) { 
	     			if(data == 1) {
	     				$("#contentId").val("");
	     				$("#title").val("");
	     				$("#content").val("");
	     				$("#evaluate").val("");  
	     				alert("등록에 성공했습니다.")
	     				$("#modal-board-regist").modal("hide");

	     			} else {
	     				alert("등록에 실패했습니다. 잠시 후에 다시 시도하세요");
	     			}
	     		},
	     		error : function(status, error) {
	     			alert("등록에 실패했습니다. 관리자에게 문의하세요");
	     		}
	     	})
	     }
	 })
</script>
</html>