<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>




<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
   src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script
   src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>   
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/home.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/all.css">

<body>

   <%@ include file="include/header.jsp"%>

   <section class="main">
      <div class="background-img">
         <video width="320" height="240" loop=100 controls id="vid"
            autoplay="autoplay" muted="muted">
            <source
               src="${pageContext.request.contextPath }/resources/img/videoplayback.mp4"
               type="video/mp4">
         </video>
         <div class="bg-box"></div>
         <div class="main_text">
            <p>당신의 특별한 여행</p>
            <h3>Enjoy as you worked hard</h3>
            <p></p>
         </div>
      </div>
   </section>

   <section class="recommend">
      <div class="container">
         <div class="row">
            <h2 class="sptitle">스페셜 오퍼</h2>
            <h2 class="sptitle2">S P E C I A L O F F E R S</h2>
            <div>
               <div class="col-xs-12 col-sm-6 col-lg-4 special_box">

                  <a class="sp_menu" href="#toup"> <img class="sp_img"
                     src="${pageContext.request.contextPath }/resources/img/sp1.png"> 여행지추천
                  </a>
               </div>
               <div class="col-xs-12 col-sm-6 col-lg-4 special_box">

                  <a class="sp_menu" href="#activity"> <img class="sp_img"
                     src="${pageContext.request.contextPath }/resources/img/sp2.png"> 활동
                  </a>
               </div>

               <div class="col-xs-12 col-sm-6 col-lg-4 special_box">

                  <a class="sp_menu" href="#mbti"> <img class="sp_img"
                     src="${pageContext.request.contextPath }/resources/img/sp3.png"> MBTI 검사
                  </a>

               </div>
            </div>
         </div>

      </div>
   </section>

   <section class="contents">
      <div class="container">
         <div class="row">
            <div class=sptitle_div>
               <h2 class="sptitle" id="toup">여 행 지 추 천</h2>
               <h2 class="sptitle2">T O U R</h2>
               <a href="${pageContext.request.contextPath }/board/board_list"><span class="glyphicon glyphicon-plus sptitle_span" id="tourBtn">더보기</span></a>
            </div>
            <div class="sptitle_div2">
               
            </div>
         </div>
      </div>
   </section>

   <section class="contents">
      <div class="container">
         <div class="row">
            <div class=sptitle_div>
            <h2 class="sptitle" id="activity">활 동</h2>
            <h2 class="sptitle2">A C T I V I T Y</h2>
            <a href="${pageContext.request.contextPath }/activity/activity">
            <span class="glyphicon glyphicon-plus sptitle_span" id="activityBtn">더보기</span>
            </a>
            </div>
            <div class="acti">
               <div class="col-xs-12 col-sm-6 col-lg-6 acti-image">
                  <div class="color-box">
                     <div class="color-box-tit">
                        <p>알파카월드</p>
                     </div>
                  </div>
                  <div class="acti_box">
                     <img class="acti_img" src="${pageContext.request.contextPath }/resources/img/acti1.jpg">
                  </div>
               </div>

               <div class="col-xs-12 col-sm-6 col-lg-6 acti-image">
                  <div class="color-box">
                     <div class="color-box-tit">
                        <p>어드벤처타워</p>
                     </div>
                  </div>
                  <div class="acti_box">
                     <div class="acti_box">
                        <img class="acti_img" src="${pageContext.request.contextPath }/resources/img/acti2.jpg">
                     </div>
                  </div>
               </div>



               <div class="col-xs-12 col-sm-6 col-lg-6 acti-image">
                  <div class="color-box">
                     <div class="color-box-tit">
                        <p>서핑</p>
                     </div>
                  </div>
                  <div class="acti_box">
                     <div class="acti_box">
                        <img class="acti_img" src="${pageContext.request.contextPath }/resources/img/acti3.jpg">
                     </div>
                  </div>
               </div>

               <div class="col-xs-12 col-sm-6 col-lg-6 acti-image">
                  <div class="color-box">
                     <div class="color-box-tit">
                        <p>레일바이크</p>
                     </div>
                  </div>

                  <div class="acti_box">
                     <div class="acti_box">
                        <img class="acti_img" src="${pageContext.request.contextPath }/resources/img/acti4.jpg">
                     </div>
                  </div>
               </div>


            </div>
         </div>
      </div>

   </section>

   <section class="contents">
      <div class="container">
         <div class="row">
            <div class=sptitle_div>
            <h2 class="sptitle" id="mbti">성 격 검 사</h2>
               
            </div>
            <div class="mbti_tit_box">


               <div class="col-xs-12 col-sm-12 col-lg-12 mbti">
                  <div class="mbti_tit">
                     
                     <a href="https://www.16personalities.com/ko/%EB%AC%B4%EB%A3%8C-%EC%84%B1%EA%B2%A9-%EC%9C%A0%ED%98%95-%EA%B2%80%EC%82%AC" target = "_blank">
                        <h2>M B T I 검사하러 가기</h2>
                        
                     </a>
                     
                     
                  </div>   
               </div>
            </div>
            
            <div class="mbti_tit_box">


               <div class="col-xs-12 col-sm-12 col-lg-12 mbti2">
                  <div class="mbti_tit">
                     
                     <a href="${pageContext.request.contextPath }/mbti/mbti_result">
                        <h2 id="activityBtn">유형에 따른 여행지 추천 보러가기</h2>
                     </a>
                     
                     
                  </div>   
               </div>
            </div>
               
         </div>
      </div>
   </section>
   
   
   <%@ include file="users/user_modal.jsp"%>
   <%@ include file="include/footer.jsp"%>

   <script>
   $(document).ready(function(){
       $('#modalContent').on('click', function() {
            $.ajax({
               //경로 메서드 데이터 컨텐츠타입
               url : 'detailForm',
               type : 'POST',
               success : function(result) {
                  $('#upuserName').val(result.userName);
                  $('#upuserEmail').val(result.userEmail);
                  $('#upuserAddrZipNum').val(result.userAddrZipNum);
                  $('#upuserAddrBasic').val(result.userAddrBasic);
                  $('#upuserAddrDetail').val(result.userAddrDetail);
                  $('#modal-update').modal('show');
               }
            })
         })
      
      var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode=1&numOfRows=6&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json"
      $.ajax({
         url: apiURI,
         dataType: "json",
         type: "GET",
         async: "false", 
         success: function(data) {
            console.log(data);
            var str3 = "";
            for(i = 0; i < data.response.body.items.item.length; i++) {
               str3 += '<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">';
               str3 += '<div class="aside-inner">'
               str3 += '<ul class="clearfix">'
               str3 += '<li><img src='+data.response.body.items.item[i].firstimage+' class="product">'
               str3 += '<h2>'+data.response.body.items.item[i].title+'</h2>'
               str3 += '</li>'
               str3 += '</ul>'
               str3 += '</div>'
               str3 += '</div>'
            }
            $(".sptitle_div2").html(str3); //innerHTML
         }
      })
   })
      
   </script>


</body>
</html>