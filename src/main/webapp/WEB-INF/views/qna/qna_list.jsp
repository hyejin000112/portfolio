<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href="${pageContext.request.contextPath }/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>

	<%@ include file="../include/header.jsp"%>
	<div class="list3_img_box">
		<img
			src="${pageContext.request.contextPath }/resources/img/img_ask.jpg">
	</div>
	 <section>
      <div class="container">
         <div class="row row_qna">
         	<div class="location board-list-location">
				<span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
				<span>문의사항</span> <span class="ar">></span> <span>1:1 문의하기</span>
			</div>
            <!--lg에서 9그리드, xs에서 전체그리드-->
            <div class="col-lg-9 col-xs-12 board-table">
               <div class="titlebox">
                  <p>1:1 문의 게시판</p>
               </div>
               <hr>

               <!--form select를 가져온다 -->
               <form action="qna_list">
                  <div class="search-wrap">
                     <span>총 ${pageVO.total }글</span>

                     <button type="submit" class="btn btn-info search-btn qna-list-btn">검색</button>
                     <input type="text" class="form-control search-input"
                        id="searchName" name="searchName"
                        value="${pageVO.cri.searchName }"> <select
                        class="form-control search-select" name="searchType">
                        <option value="title"
                           ${pageVO.cri.searchType eq 'title' ? 'selected' : ''  }>제목</option>
                        <option value="content"
                           ${pageVO.cri.searchType eq 'content' ? 'selected' : ''  }>내용</option>
                        <option value="writer"
                           ${pageVO.cri.searchType eq 'writer' ? 'selected' : ''  }>작성자</option>
                        <option value="titcont"
                           ${pageVO.cri.searchType eq 'titcont' ? 'selected' : ''  }>제목+내용</option>
                     </select>
                  </div>

                  <input type="hidden" name="pageNum" value="1"> <input
                     type="hidden" name="amount" value="${pageVO.cri.amount }">

               </form>

               <table class="table table-bordered">
                  <thead>
                     <tr>
                        <th>번호</th>
                        <th class="board-title">제목</th>
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>수정일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="vo" items="${qna_list }">
                        <tr>
                           <td>${vo.bno }</td>
                           <td><a href="qna_detail?bno=${vo.bno }">${vo.title }</a></td>
                           <td>${vo.writer }</td>
                           <td><fmt:formatDate value="${vo.regDate }"
                                 pattern="yyyy-MM-dd HH:mm:ss" /></td>
                           <td><fmt:formatDate value="${vo.updateDate }"
                                 pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>

               <!--페이지 네이션을 가져옴-->
               <form action="qna_list" name="pageForm">
                  <div class="text-center">
                     <hr>
                     <ul class="pagination pagination-sm" id="pagination">
                        <c:if test="${pageVO.prev}">
                           <li><a href="#" data-pageNum="${pageVO.startPage-1}">이전</a>
                           </li>
                        </c:if>
                        <c:forEach var="num" begin="${pageVO.startPage}"
                           end="${pageVO.endPage}">
                           <li class=${pageVO.pageNum == num ? "active":"" }><a
                              href="#" data-pageNum="${num}">${num}</a></li>
                        </c:forEach>
                        <c:if test="${pageVO.next}">
                           <li><a href="#" data-pageNum="${pageVO.endPage+1}">다음</a>
                           </li>
                        </c:if>
                     </ul>

                     <!-- 페이지 클릭시 숨겨서 보낼 값 -->
                     <input type="hidden" name="pageNum"
                        value="${pageVO.cri.pageNum }"> <input type="hidden"
                        name="amount" value="${pageVO.cri.amount }"> <input
                        type="hidden" name="searchType"
                        value="${pageVO.cri.searchType }"> <input type="hidden"
                        name="searchName" value="${pageVO.cri.searchName }">

                     <button type="button" class="btn btn-info qna-list-btn"
                        onclick="location.href='qna_regist'">글쓰기</button>
                  </div>
               </form>

            </div>
         </div>
      </div>
   </section>
   <%@ include file="../include/footer.jsp"%>

   <script>
      window.onload = function() {

         if (history.state === '') {
            return;
         }

         var msg = '${msg}';
         if (msg !== '') {
            alert(msg);
            history.replaceState('', null, null);
         }
      }
      
      var pagination = document.getElementById("pagination");
      pagination.onclick = function() {
         
         event.preventDefault();
         document.pageForm.pageNum.value = event.target.dataset.pagenum;
         document.pageForm.submit();
      }
   </script>

</body>
</html>