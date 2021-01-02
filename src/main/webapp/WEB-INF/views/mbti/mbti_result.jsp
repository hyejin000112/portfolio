<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/all.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mbti.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mbti2.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>

<body>
	<%@ include file="../include/header.jsp"%>
	<div class="list3_img_box">
		<img
			src="${pageContext.request.contextPath }/resources/img/mbti_header.jpg">
	</div>
	 <div class="container">
		<div class="row">
			<div class="location board-list-location">
				<span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
				<span>MBTI</span> <span class="ar">></span> <span>여행지 추천</span>
			</div>
	
	
			<div class="mbti_title_head">
				<h1>MBTI 결과를 선택하시면 여행지를 추천해드려요</h1>
			</div>
			<hr>

     		<div class="mbti_list_div">
            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ISTJ" class="mbti_list">
                     <button class="mbti_list_tit" id ="mbtiBtn" value="5">I S T J</button>
                     <p class="mbti_list_content">청렴결백한 논리주의 자</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ISFJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="1">I S F J</button>
                     <p class="mbti_list_content">용감한 수호자</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="INFJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="13">I N F J</button>
                     <p class="mbti_list_content">선의의 옹호자</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="INTJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="9">I N T J</button>
                     <p class="mbti_list_content">용의주도한 전략가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ISTP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="6">I S T P</button>
                     <p class="mbti_list_content">만능 재주꾼</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ISFP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="2">I S F P</button>
                     <p class="mbti_list_content">호기심 많은 예술가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="INFP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="14">I N F P</button>
                     <p class="mbti_list_content">열정적인 중재자</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="INTP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="10">I N T P</button>
                     <p class="mbti_list_content">논리적인 사색가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ESTP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="8">E S T P</button>
                     <p class="mbti_list_content">모험을 즐기는 사업가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ESFP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="4">E S F P</button>
                     <p class="mbti_list_content">자유로운 영혼의 연예인</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ENFP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="16">E N F P</button>
                     <p class="mbti_list_content">재기발랄한 활동가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ENTP" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="12">E N T P</button>
                     <p class="mbti_list_content">뜨거운 논쟁을 즐기는 변론가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ESTJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="7">E S T J</button>
                     <p class="mbti_list_content">엄격한 관리자</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ESFJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="3">E S F J</button>
                     <p class="mbti_list_content">사교적인 외교관</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ENFJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="15">E N F J</button>
                     <p class="mbti_list_content">정의로운 사회운동가</p>
               </div>
            </div>

            <div class="col-md-3 col-sm-12 mbti_list_box">
               <div id="ENTJ" class="mbti_list">
                      <button class="mbti_list_tit" id ="mbtiBtn" value="11">E N T J</button>
                     <p class="mbti_list_content">정의로운 사회운동가</p>
               </div>
            </div>
            </div>
        

   		<hr>
   	
   			<img class="mbti_result_img1" src="${pageContext.request.contextPath }/resources/img/mbti_result1.png">
   		
   	 </div>
   </div>
   <%@ include file="../include/footer.jsp"%>
   <%@ include file="../mbti/mbti_modal.jsp" %>
   <%@ include file="../users/user_modal.jsp" %>
   <script>
        $(document).ready(function () {
            $(".my_mbti_tit_box").click(function () {
                $(".mypage_mbti_content_inner").slideToggle("slow");
            })
  
        $('.mbti_list_tit').click(function() {
        var pno = $(this).val();
         $.ajax({
          url : 'mbtiForm?pno='+pno,
          type : 'GET',
          success : function(result) {
             console.log(result)
              $('#mbti_modal1').html(result.type);
              $('#mbti_modal2').html(result.explain1);
              $('#mbti_modal3').html(result.activity1 + "  /  " + result.activity2);
              $('#my_tour_tit1').html(result.tour1);
              $('#my_tour_content1').html(result.content1);
              $('#my_tour_tit2').html(result.tour2);
              $('#my_tour_content2').html(result.content2);
              
              $('#my_tour_img1').attr("src","${pageContext.request.contextPath }/resources/img/"+result.image1+".jpg");
              $('#my_tour_img2').attr("src","${pageContext.request.contextPath }/resources/img/"+result.image2+".jpg");
              $('#my_tour_link1').attr("href","../board/recommend?title="+result.tour1);
         	  $('#my_tour_link2').attr("href","../board/recommend?title="+result.tour2);
              $('#modal-mbti').modal('show');
              
              pno = result.pno;
              var type=result.type;
              var explain1=result.explain1;
              var activity1=result.activity1;
              var activity2=result.activity2;
              var tour1=result.tour1;
              var content1=result.content1;
              var tour2=result.tour2;
              var content2=result.content2;
              var image1=result.image1;
              var image2=result.image2;
              
              $("#mbti_Save_Btn").click(function() {
            	  if(${sessionScope.userId != null }) {
		              if(confirm("저장하시겠습니까?")) {
		            	  console.log(type)
			              $.ajax({
			              url : '../mbti/mypageUpdate',
			              type : 'POST',
			              data : JSON.stringify({"pno":pno, "type":type, "explain1":explain1, "image1":image1, "image2":image2, "tour1":tour1, "tour2":tour2,
		           			   "content1":content1, "content2":content2, "activity1":activity1, "activity2":activity2}),
			              dataType : "text", 
				     	  contentType : "application/json; charset=utf-8",
			              success : function(result) {
				              alert("저장이 완료되었습니다. My Page에서 확인해주세요");
				              $("#modal-mbti").modal("hide");
			              	}
		              	})
	              		} else {
	            	  		self.close();
	              			return false;
	              		}  
            	  } else {
            		  alert("로그인 후 저장가능합니다.");
            		  $("#modal-mbti").modal("hide");
				      $("#modal-login").modal("show");
            	  }
              	})
         	 }
         })
      })
	})
        
    </script>

</body>
</html>