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

	<!-- 로그인 Modal -->
	<div class="modal fade" id="modal-login" role="dialog"
		data-backdrop="static">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 로그인
					</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath }/users/loginForm" class="modal-form" method="post"
						id="loginForm" name="loginForm">
						<table class="project-login-table">
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="idCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input" type="text"
									name="userId" placeholder="최소 4자 최대15자"></td>
							</tr>
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input" name="userPw"
									type="password" placeholder="최소 8자"></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath }/email/pwFindMail">비밀번호를 잊어버리셨나요?</a></td>
							</tr>
							<tr>
								<td class="project-login-table-td2">
									<p>
										<strong>로그인하셔서 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td3"><input
									class="project-login-table-button1" type="submit" value="로그인"></td>
							</tr>


							<tr>
								<td colspan="2" class="project-login-table-td4"><a
									href="javascript:loginWithKakao()" id="kakaoLogin"> <img
										src="${pageContext.request.contextPath }/resources/img/kakao_login_img.png"
										width="100%" height="40px" /></a></td>
							</tr>

						</table>
					</form>

					<!-- 카카오톡으로 얻어온 값들을 가져오기 위해 hidden으로 input -->
					<form action="${pageContext.request.contextPath }/users/kakaoLoginForm" class="modal-form" method="post"
						id="kakaoLoginForm" name="kakaoLoginForm">
						<table class="project-login-table">

							<tr>
								<td><input class="project-login-table-input1" type="hidden"
									id="kakaoId" name="userId"></td>
							</tr>

							<tr>
								<td><input class="project-login-table-input1"
									id="kakaoName" name="userName" type="hidden"></td>
							</tr>

							<tr>
								<td><input class="project-login-table-input1"
									id="kakaoEmail" name="userEmail" type="hidden"></td>
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


	<!-- 회원가입 Modal -->
	<div class="modal fade" id="modal-regist" role="dialog"
		data-backdrop="static">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">ZERO STRESS</span> 회원가입
					</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath }/users/joinForm" class="modal-form" method="post"
						id="joinForm" name="joinForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp; <span
											id="msgId"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="text" class="project-update-table-input"
									id="userId" name="userId" placeholder="숫자, 영어로 4-12자">
									<button type="button" class="btn btn-primary checkBtn"
										id="idCheckBtn" value="N">아이디중복체크</button></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPw"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password"
									class="project-regist-table-input" id="userPw" name="userPw"
									placeholder="영문, 숫자, 특수문자를 포함한 최소 8자"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password" id="userPwCheck"
									name="userPwCheck" class="project-regist-table-input"
									placeholder="비밀번호가 일치해야합니다."></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									name="userName" id="userName" placeholder="OOO"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgEmail"></span>
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="email" class="project-regist-table-input"
									name="userEmail" id="userEmail" placeholder="email@example.com"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>주소를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-update-table-input"
									id="userAddrZipNum" name="userAddrZipNum" placeholder="우편번호">
									<button type="button" class="btn btn-primary checkBtn"
										id="joinAddrBtn" value="joinAddrFind">주소찾기</button></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrBasic" name="userAddrBasic" placeholder="기본주소"></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrDetail" name="userAddrDetail" placeholder="상세주소"></td>
							</tr>

							<tr>
								<td class="project-regist-table-td2">
									<p>
										<strong>회원가입하신 후, 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="button" value="회원가입" class="project-regist-table-button1"
									id="joinBtn"></td>
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


	<script>

	//메세지 띄우기
	$(document).ready(function() {
    	
    	(function() {
    		var msg = "${msg}";
    		if(msg!='') {
    			alert(msg);
    		}
    	})();
    	
    })

    //회원가입 버튼
	$("#joinBtn").click(function() {

		if ($("#userId").val() == '') {
			alert("아이디는 필수사항 입니다");
			return;
		} else if ($("#userPw").val() == '') {
			alert("비밀번호는 필수사항입니다");
			return;
		} else if ($("#userPw").val() != $("#userPwCheck").val()) {
			alert("비밀번호를 확인해주세요");
			return;
		} else if ($("#userName").val() == '') {
			alert("이름은 필수사항 입니다");
			return;
		} else if ($("#userEmail").val() == '') {
			alert("이메일은 필수사항 입니다");
			return;
		} else if ($("#userAddrZipNum").val() == '') {
			alert("우편번호는 필수사항 입니다");
			return;
		} else if ($("#userAddrBasic").val() == '') {
			alert("주소는 필수사항 입니다");
			return;
		} else if ($("#idCheckBtn").val() == 'N') {
			alert("아이디 중복체크를 해주세요");
			return;
		} else {
			$("#joinForm").submit();

		}

	})

	//아이디 형식 검사
	var id = document.getElementById("userId");
        id.onkeyup = function() {

            var regex = /^[A-Za-z0-9+]{4,15}$/; 
            if(regex.test(document.getElementById("userId").value )) {
                document.getElementById("userId").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("userId").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
        }

        //비밀번호 형식 검사
        var pw = document.getElementById("userPw");
        pw.onkeyup = function(){
            var regex = /^.*(?=^.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/
             if(regex.test(document.getElementById("userPw").value )) {
                document.getElementById("userPw").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("userPw").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }

        //비밀번호 확인 형식 검사
        var userPwCheck = document.getElementById("userPwCheck");
        userPwCheck.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("userPwCheck").value == document.getElementById("userPw").value ) {
                document.getElementById("userPwCheck").style.borderColor = "green";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("userPwCheck").style.borderColor = "red";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        

        //이메일 형식 검사
		var userEmail = document.getElementById("userEmail");
		userEmail.onkeyup = function() {
			var regex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(regex.test(document.getElementById("userEmail").value )) {
				document.getElementById("userEmail").style.borderColor = "green";
				document.getElementById("msgEmail").innerHTML = "이메일형식입니다";
			} else {
				document.getElementById("userEmail").style.borderColor = "red";
				document.getElementById("msgEmail").innerHTML = "이메일형식을 확인하세요";
			}
			
		}

		//회원가입 주소 버튼
		var joinAddrBtn = document.getElementById("joinAddrBtn")
		joinAddrBtn.onclick = function goPopup() {

			var pop = window
					.open(
							"${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp",
							"pop",
							"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {
			console.log(zipNo);
			console.log(roadAddrPart1);
			console.log(addrDetail);
			document.getElementById("userAddrZipNum").value = zipNo;
			document.getElementById("userAddrBasic").value = roadAddrPart1;
			document.getElementById("userAddrDetail").value = addrDetail;

		}
		

		//회원가입 아이디 중복 체크 버튼
		$("#idCheckBtn").click(function() {
			
			//console.log($("#userId").css("borderColor"))
			
			if($("#userId").val() == '' || $("#userId").css("borderColor") == "rgb(255, 0, 0)") {
				alert("아이디 규칙을 확인하세요");
				return;
			}
			
			
			var userId = $("#userId").val();
			console.log(userId);
			$.ajax({
				type: "POST",
				url: "idCheck",
				data: JSON.stringify({"userId":userId}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					//console.log(data);
					
					if(data == 0) { //아이디 중복이 없는 경우
						$("#msgId").html("사용가능한 아이디 입니다");
						$("#userId").attr("readonly", true);
						$("#idCheckBtn").attr("value","Y"); //아이디 중복체크를 했으면 value값을 Y로 변경
						
					} else { //아이디가 중복인 경우
						$("#msgId").html("중복된 아이디 입니다");
						$("#userId").focus(); //포커스
						
					}
					
				},
				error: function(status, error) {
					
					alert("서버에러입니다. 다시시작하세요");
				}
				
			})

		})


		
		//1. 카카오 초기화
        Kakao.init('e2bc77ca67693e7633f95f1e279e4985');

        //2. 카카오 로그인 버튼
        function loginWithKakao() {
            Kakao.Auth.login({

                success: function (authObj) {
                	
                    getInfo();
                },
                fail: function (err) {
                    alert('failed to login: ' + JSON.stringify(err))
                },

            })
        }

        //3. 사용자 정보 얻기
        function getInfo() {

            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    //alert(JSON.stringify(res))
                    console.log(res)
                    
                    //아래의 코드로 id추출
                    var id = res.id;
                    var name = res.kakao_account.profile.nickname;
                    var email = res.kakao_account.email;
					
               		var kakaoId = document.getElementById("kakaoId")			
               		var kakaoName = document.getElementById("kakaoName")
					var kakaoEmail = document.getElementById("kakaoEmail")
					
                    //폼 id의 value를 변경
					kakaoId.value=id;
               		kakaoName.value=name;
                    kakaoEmail.value=email;

					document.kakaoLoginForm.submit(); //서브밋
                    //document.loginForm.action = "";
                    //location.href="kakaoJoinForm?id="+userId+"&name="+userName+"&email="+userEmail;
                    
					

                },
                fail: function (error) {
                    alert("사용자 요청 정보에 실패했습니다. 동의항목을 확인하세요.");
                },
            })

        }
		console.log(id)
        
        //카카오톡 로그아웃
        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                alert('Not logged in.')
                return
            }
            Kakao.Auth.logout(function () {
            	alert('로그아웃 logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
            })
        }
        
	</script>

</body>
</html>