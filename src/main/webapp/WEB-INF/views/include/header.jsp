<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<header>
	<h1>
		<a href="${pageContext.request.contextPath }" class="logo_a">ZERO STRESS</a>
	</h1>
	<div class="logo-box header_logo_box">
		<ul class="login-register">
			<li>
			<c:choose>
               <c:when test="${sessionScope.userId != null }">
                  <p>
                  	<a href="${pageContext.request.contextPath }/users/user_mypage">My Page</a>
                  </p>
                  <p>
                     <a href="${pageContext.request.contextPath }/users/userLogout">로그아웃</a>
                  </p>
               </c:when>
               <c:otherwise>
                  <p data-toggle="modal" data-target="#modal-login">로그인</p>
                  <p data-toggle="modal" data-target="#modal-regist">회원가입</p>
               </c:otherwise>
            </c:choose>
         </li>
		</ul>

	</div>
	<nav class="navbar navbar-inverse">

		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>

		<div class="collapse navbar-collapse" id="myNavbar">
			<div class="container-fluid">
				<ul class="navbox header_nav">
					<li class="navbox-li">
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">소개</p>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/intro/intro">인사말</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">추천</p>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/mbti/mbti_result">성격유형별 여행지</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">여행지</p>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/board/board_list">지역별 여행지</a></li>
								<li><a href="${pageContext.request.contextPath }/activity/activity">날짜별 행사/공연/축제</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">날씨</p>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/weather/weather">기상정보</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">문의사항</p>
							<ul class="dropdown-menu">	
								<li><a href="${pageContext.request.contextPath }/qna/qna_list">1:1문의하기</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<p class="dropdownbtn" type="button" data-toggle="dropdown">FAQ</p>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/intro/faq">FAQ</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</header>


</html>