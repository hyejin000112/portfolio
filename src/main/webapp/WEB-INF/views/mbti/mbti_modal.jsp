<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

   <!-- MBTI Modal -->
   <div class="modal fade" id="modal-mbti" role="dialog">
      <div class="mbti-modal-dialog modal-center">

         <!-- Modal content-->
         <div class="mbti-modal modal-content"> 

            <!-- Modal Header -->
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">×</button>
               <h4 class="modal-title">
                  <span class="modal-span">ZERO STRESS</span>MBTI
               </h4>
            </div>
            <!-- Modal Body -->
            <div class="modal-body">
               <div class="mypage_content">


                  <div class="mypage_content_inner">


                     <div class="mypage_mbti_box">
                        <div class="col-sm-3 mypage_mbti_tit">MBTI유형</div>
                        <div>
                       <!-- 수정한 부분2020-08-04 -->
                           <div class="col-sm-9 mypage_mbti_content ">
                              <div class="my_mbti_tit_box">
                                 <div class="col-sm-12 mypage_mbti_tit_inner" name="type" id="mbti_modal1">
                                    ${vo.type }
                                 </div>
                                 <span class="glyphicon glyphicon-menu-down mypage_span"></span>
                              </div>
                              <div class="col-sm-12 mypage_mbti_content_inner" name="explain1" id="mbti_modal2">
                                   ${vo.explain1 }
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="character_box">
                     <div class="col-sm-3 character_tit">성격별 추천 활동</div>
                     <div class="col-sm-9 character_content" name="activity" id="mbti_modal3">${activity1 }, ${activity2 }</div>
                  </div>
               </div>
            </div>


            <div class="mbti_tour">
               <h3>추천여행지</h3>
               <div class="col-sm-6 mypage_tour_box">
                  <a class="my_tour_link" id="my_tour_link1" href="">
                     <img id="my_tour_img1" src="${pageContext.request.contextPath }/resources/img/img_01.jpg">
                     <div class="mbti_tour_content">
                        <span class="my_tour_tit" id="my_tour_tit1">${vo.tour1 }</span>
                        <span class="my_tour_content" id="my_tour_content1">${vo.content1 }</span>
                     </div>
                  </a>
               </div>
               <div class="col-sm-6 mypage_tour_box">
                  <a class="my_tour_link" id="my_tour_link2" href="">
                     <img id="my_tour_img2" src="${pageContext.request.contextPath }/resources/img/img_02.jpg">
                     <div class="mbti_tour_content">
                        <span class="my_tour_tit" id="my_tour_tit2">${vo.tour2 }</span>
                        <span class="my_tour_content" id="my_tour_content2">${vo.content2 }</span>
                     </div>
                  </a>
               </div>
            </div>

            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal" id="mbti_Save_Btn">Save</button>
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
            
         </div>

      </div>
   </div>

</body>
</html>