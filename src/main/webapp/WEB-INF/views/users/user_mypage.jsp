<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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

/* 회원정보-비밀번호변경 */
.project-regist-table-td-pwchange {
	margin-bottom: 30px;
	border-radius: 3px;
	display: block;
}

.project-regist-table-input-nowpw {
	margin-bottom: 10px;
	width: 65%;
	height: 40px;
	border: 1px solid #d9d9de;
	display: none;
}

.project-regist-table-input-updatepw {
	margin-bottom: 10px;
	width: 75%;
	height: 40px;
	border: 1px solid #d9d9de;
	display: none;
}

.project-regist-table-input-updatepwck {
	margin-bottom: 10px;
	width: 75%;
	height: 40px;
	border: 1px solid #d9d9de;
	display: none;
}

.project-login-table-td4 img {
	width: 100%;
	height: 50px;
	border-radius: 5px;
}
</style>

</head>

<body>
	<%@ include file="../include/header.jsp"%>

	<div class="mypage_dox">

		<section>

			<div class="container mypage_section">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-4 myPage_tit">
							<h1>MyPage</h1>
						</div>
						<div class="nav nav-tabs tabs-style my_list ">
							<div class="col-sm-6 mypage_user" id="mypage_menu1">
								<h3>회원정보</h3>
							</div>
							<div class="col-sm-6 mypage_user" id="mypage_menu2">
								<h3>여행지정보</h3>
							</div>
						</div>
						<!-- 첫번째 토글 시작 -->
						
						<!--추천여행지 끝-->
						<!-- 첫번째 토글 끝 -->
						<!-- 두번째 토글 시작 -->
						<div id="mp_toggle1">
							<div class="container">
								<div class="row">
									<div class="col-lg-9 col-xs-12 board-table">
										<div class="modal-header">
											<h4 class="modal-title">
												<span class="modal-span">ZERO STRESS</span> 회원정보 확인
											</h4>
										</div>
										<div class="modal-body">


											<form action="../users/updateForm" class="modal-form"
												method="post" name="updateForm" id="updateForm">
												<table class="project-regist-table">
													<tr>
														<td class="project-regist-table-td">
															<p>
																<strong>아이디</strong>&nbsp;&nbsp;&nbsp;<span id="msgId"></span>
															</p>
														</td>
													</tr>
													<tr>
														<td><input type="text"
															class="project-regist-table-input" name="userId"
															id="upuserId" value="${sessionScope.userId }" disabled></td>
													</tr>

													<tr>
														<td class="project-regist-table-td">
															<p>
																<strong>이름</strong>&nbsp;&nbsp;&nbsp;
															</p>
														</td>
													</tr>
													<tr>
														<td><input type="text"
															class="project-regist-table-input" name="userName"
															id="upuserName"></td>
													</tr>
													<tr>
														<td class="project-regist-table-td">
															<p>
																<strong>이메일</strong>&nbsp;&nbsp;&nbsp;
															</p>
														</td>
													</tr>
													<tr>
														<td><input type="email"
															class="project-regist-table-input" name="userEmail"
															id="upuserEmail"></td>
													</tr>
													<tr>
														<td class="project-regist-table-td">
															<p>
																<strong>주소</strong>&nbsp;&nbsp;&nbsp;
															</p>
														</td>
													</tr>

													<tr>
														<td><input type="text"
															class="project-update-table-input" name="userAddrZipNum"
															id="upuserAddrZipNum" placeholder="우편번호">
															<button type="button" class="btn btn-primary checkBtn"
																id="infoAddrBtn" value="infoAddrFind">주소찾기</button></td>
													</tr>

													<tr>
														<td><input type="text"
															class="project-regist-table-input" name="userAddrBasic"
															id="upuserAddrBasic" placeholder="기본주소"></td>
													</tr>

													<tr>
														<td><input type="text"
															class="project-regist-table-input" name="userAddrDetail"
															id="upuserAddrDetail" placeholder="상세주소"></td>
													</tr>
													<tr>
														<td class="project-regist-table-td2">
															<p>
																<strong>비밀번호 변경을 원하시면 아래의 버튼을 눌러주세요~~! (일반계정 사용자만 가능합니다)</strong>
															</p>
														</td>
													</tr>
													
													<tr>
														<td colspan="2" class="project-regist-table-td3"><button
																type="button" data-toggle="modal"
																class="project-regist-table-button1"
																data-target="#modal-updatePw">비밀번호 변경</button></td>
													</tr>
													
													<tr>
														<td class="project-regist-table-td2">
															<p>
																<strong>회원정보 수정을 원하시면 아래의 버튼을 눌러주세요~~! (일반계정 사용자만 가능합니다)</strong>
															</p>
														</td>
													</tr>
													<tr>
														<td colspan="2" class="project-regist-table-td3"><input
															type="button" value="회원정보수정"
															class="project-regist-table-button1" id="updateBtn"></td>
													</tr>
													<tr>
														<td class="project-regist-table-td2">
															<p>
																<strong>회원탈퇴를 원하시면 아래의 버튼을 눌러주세요~~! (일반계정 사용자만 가능합니다)</strong>
															</p>
														</td>
													</tr>
													<tr>
														<td colspan="2" class="project-regist-table-td3"><button
																type="button" data-toggle="modal"
																class="project-regist-table-button1"
																data-target="#modal-delete">회원탈퇴</button></td>
													</tr>
												</table>
											</form>


										</div>

									</div>
								</div>
							</div>
						</div>
						<!-- 두번째 토글 끝 -->
						 <!-- 첫번째 토글 시작 -->
		                  <div id="mp_toggle2">
		                     <div class="mypage_content">
		                        <div class="mypage_date" id="mbti_date">2020-12-10</div>
		                        <div class="mypage_content_inner">
		                           <div class="mypage_mbti_box">
		                              <div class="col-sm-3 mypage_mbti_tit">MBTI유형</div>
		                              <div>
		                                 <div class="col-sm-9 mypage_mbti_content ">
		                                    <div class="col-sm-12 mypage_mbti_tit_inner"
		                                       id="mbti_modal1">
		                                        <span class="glyphicon glyphicon-menu-down">-</span>
		                                    </div>
		                                    <div class="col-sm-12 mypage_mbti_content_inner"
		                                       id="mbti_modal2">-</div>
		                                 </div>
		                              </div>
		                           </div>
		
		                           <div class="character_box">
		                              <div class="col-sm-3 character_tit">성격별 추천 활동</div>
		                              <div class="col-sm-9 character_content" id="mbti_modal3">- / -</div>
		                           </div>
		                        </div>
		                        <!--contnet_innter끝-->
		
		                        <!--추천여행지-->
		
		                     </div>
		                     <!--mycontent끝-->
		                     <div class="mypage_tour">
		                        <h3>추천여행지</h3>
		                        <div class="col-sm-6 mypage_tour_box">
		                           <a class="my_tour_link" href="#"> <img src="${pageContext.request.contextPath }/resources/img/noimg.jpg" class="my_tour_img1" id="my_tour_img1" >
		                              <div class="mypage_tour_content">
		                                 <span class="my_tour_tit" id="my_tour_tit1">-</span> 
		                                 <span class="my_tour_content" id="my_tour_content1">-</span>
		                              </div>
		                           </a>
		                        </div>
		                        <div class="col-sm-6 mypage_tour_box">
		                           <a class="my_tour_link" href="#"> <img src="${pageContext.request.contextPath }/resources/img/noimg.jpg" class="my_tour_img2" id="my_tour_img2">
		                              <div class="mypage_tour_content">
		                                 <span class="my_tour_tit" id="my_tour_tit2">-</span> 
		                                 <span class="my_tour_content" id="my_tour_content2">-</span>
		                              </div>
		                           </a>
		                        </div>
		                     </div>
		                  </div>
		                  <!--추천여행지 끝-->
		                  <!-- 첫번째 토글 끝 -->
						
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 비밀번호 변경 Modal -->
	<div class="modal fade" id="modal-updatePw" role="dialog"
		data-backdrop="static">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 비밀번호 변경
					</h4>
				</div>
				<div class="modal-body">
					<form action="updatePwForm" class="modal-form"
						method="post" name="updatePwForm" id="updatePwForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>${sessionScope.userId }님의 현재 비밀번호를 입력해주세요</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwChk"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="hidden" class="project-update-table-input"
									value="${sessionScope.userId }" id="upuserId" name="userId">
									<input type="password" class="project-update-table-input"
									id="nowuserPw" name="userPw">
									<button type="button" class="btn btn-primary upPwCheckBtn"
										id="upPwCheckBtn">비밀번호확인</button></td>
							</tr>
							<tr>
								<td><input type="password"
									class="project-regist-table-input-updatepw" name="userPw"
									id="upuserPw" placeholder="변경할 비밀번호를 입력해주세요">&nbsp;&nbsp;&nbsp;<span
									id="msgUpPw"></span></td>
							</tr>
							<tr>
								<td><input type="password"
									class="project-regist-table-input-updatepwck" name="userPw"
									id="upuserPwCk" placeholder="변경할 비밀번호를 한번 더 입력해주세요">&nbsp;&nbsp;&nbsp;<span
									id="msgUpPwCheck"></span></td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="button" value="비밀번호 변경"
									class="project-regist-table-button1" id="updatePwBtn" ></td>
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


	<!-- 회원탈퇴 Modal -->
	<div class="modal fade" id="modal-delete" role="dialog"
		data-backdrop="static">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 회원탈퇴
					</h4>
				</div>
				<div class="modal-body">
					<form action="../users/deleteForm" class="modal-form" method="post"
						name="deleteForm" id="deleteForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>${sessionScope.userId }님의 비밀번호를 입력해주세요</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwChk"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="hidden" class="project-update-table-input"
									value="${sessionScope.userId }" id="deluserId" name="userId">
									<input type="password" class="project-update-table-input"
									id="deluserPw" name="userPw">

									<button type="button" class="btn btn-primary checkBtn"
										id="pwCheckBtn">비밀번호확인</button></td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="submit" value="회원탈퇴" class="project-regist-table-button1"
									id="deleteBtn"></td>
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


	<%@ include file="../include/footer.jsp"%>

	<script>
		//메세지 띄우기
		$(document).ready(function() {

			(function() {
				var msg = "${msg}";
				if (msg != '') {
					alert(msg);
				}
			})();

		})

		$(document).ready(
				function() {
					$(".mypage_mbti_tit_inner").click(function() {
						$(".mypage_mbti_content_inner").slideToggle("slow");
					})
					
					$("#mp_toggle2").hide();
					
					$("#mypage_menu2").click(function() {
						$.ajax({
							url : '../users/mypageInfo',
							type : 'GET',
							success : function(result) {
								console.log(result)
								if(!result) {
									alert("mbti 저장 후 확인 가능합니다.")
								} else {
									$('#mbti_modal1').html(result.type);
									$('#mbti_modal2').html(result.explain1);
									$('#mbti_modal3').html(result.activity1 + "  /  " + result.activity2);
									$('#my_tour_tit1').html(result.tour1);
									$('#my_tour_content1').html(result.content1);
									$('#my_tour_tit2').html(result.tour2);
									$('#my_tour_content2').html(result.content2);
			
									$('#my_tour_img1').attr("src", "${pageContext.request.contextPath }/resources/img/" + result.image1 + ".jpg");
									$('#my_tour_img2').attr("src", "${pageContext.request.contextPath }/resources/img/" + result.image2 + ".jpg");
									$("#mp_toggle2").show();
									$("#mp_toggle1").hide();
								}
							}
						})		
					})
				
					$("#mypage_menu1").click(function() {
						$("#mp_toggle1").show();
						$("#mp_toggle2").hide();
					})

					$.ajax({
						url : '../users/userInfo',
						type : 'POST',
						success : function(result) {
							console.log(result)
							$('#upuserName').val(result.userName);
							$('#upuserEmail').val(result.userEmail);
							$('#upuserAddrZipNum').val(result.userAddrZipNum);
							$('#upuserAddrBasic').val(result.userAddrBasic);
							$('#upuserAddrDetail').val(result.userAddrDetail);
						}
					})

				})


		//회원정보 비밀번호 확인 버튼
		$("#upPwCheckBtn").click(function() {
			var userId = $("#upuserId").val();
			console.log(userId);
			var userPw = $("#nowuserPw").val();
			console.log(userPw);
			$.ajax({
				type: "POST",
				url: "pwCheck",
				data: JSON.stringify({"userId":userId,"userPw":userPw}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					console.log(data);
					
					if(data == 1) { 
						alert("비밀번호가 확인되었습니다");
				    	$("#upuserPw").slideToggle("slow");
				   		$("#upuserPwCk").slideToggle("slow");
					} else { 
						alert("비밀번호를 확인해주세요");
						
					}
					
				},
				error: function(status, error) {
					
					alert("서버에러입니다. 다시시작하세요");
				}
				
			})

		})
		
		//회원정보 비밀번호 형식 검사
        var upuserPw = document.getElementById("upuserPw");
		upuserPw.onkeyup = function(){
            var regex = /^.*(?=^.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/
             if(regex.test(document.getElementById("upuserPw").value )) {
                document.getElementById("upuserPw").style.borderColor = "green";
                document.getElementById("msgUpPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("upuserPw").style.borderColor = "red";
                document.getElementById("msgUpPw").innerHTML = "";
            }
        }
		
		
		//회원정보 비밀번호 확인 형식 검사
        var upuserPwCk = document.getElementById("upuserPwCk");
        upuserPwCk.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("upuserPwCk").value == document.getElementById("upuserPw").value ) {
                document.getElementById("upuserPwCk").style.borderColor = "green";
                document.getElementById("msgUpPwCheck").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("upuserPwCk").style.borderColor = "red";
                document.getElementById("msgUpPwCheck").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        
		
        
        
		//회원정보 비밀번호 수정 버튼
		$("#updatePwBtn").click(function() {
			var userId = $("#upuserId").val();
			console.log(userId);
			var userPw = $("#upuserPw").val();
			console.log(userPw);
			$.ajax({
				type: "POST",
				url: "../users/pwUpdate",
				data: JSON.stringify({"userId":userId,"userPw":userPw}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					console.log(data);
						alert("비밀번호가 수정되었습니다");
						$("#modal-updatePw").modal('hide');

				},
				error: function(status, error) {
					
					alert("서버에러입니다. 다시시작하세요");
				}
				
			})

		})

        
		//회원정보 수정 버튼
		$("#updateBtn").click(function() {

			if ($("#upuserName").val() == '') {
				alert("이름은 필수사항 입니다");
				return;
			} else if ($("#upuserEmail").val() == '') {
				alert("이메일은 필수사항 입니다");
				return;
			} else if ($("#upuserAddrZipNum").val() == '') {
				alert("우편번호는 필수사항 입니다");
				return;
			} else if ($("#upuserAddrBasic").val() == '') {
				alert("주소는 필수사항 입니다");
				return;
			} else {
				$("#updateForm").submit();

			}

		})

		//회원정보 주소 버튼
		var infoAddrBtn = document.getElementById("infoAddrBtn")
		infoAddrBtn.onclick = function goPopup() {

			var pop = window
					.open(
							"${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp",
							"pop",
							"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {

			document.getElementById("upuserAddrZipNum").value = zipNo;
			document.getElementById("upuserAddrBasic").value = roadAddrPart1;
			document.getElementById("upuserAddrDetail").value = addrDetail;

		}

		//회원탈퇴시 비밀번호 확인 버튼
		$("#pwCheckBtn").click(function() {
			var userId = $("#deluserId").val();
			console.log(userId);
			var userPw = $("#deluserPw").val();
			console.log(userPw);
			$.ajax({
				type : "POST",
				url : "../users/pwCheck",
				data : JSON.stringify({
					"userId" : userId,
					"userPw" : userPw
				}),
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					console.log(data);

					if (data == 1) {
						alert("비밀번호가 확인되었습니다");

					} else {
						alert("비밀번호를 확인해주세요");

					}

				},
				error : function(status, error) {

					alert("서버에러입니다. 다시시작하세요");
				}

			})

		})

	</script>
</body>
</html>