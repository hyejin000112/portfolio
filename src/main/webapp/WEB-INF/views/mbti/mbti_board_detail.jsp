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
      href="${pageContext.request.contextPath }/resources/css/mbti.css">
   <script
      src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
<%@ include file="../include/header.jsp"%>
    <main class="sub-contents">
        <div class="container sub-contents-inner wide" id="container">
            <div class="row wide-inner">
                <div class="location">
                    <div class="location-first">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="ar">></span>
                    <span>여행지</span>
                    <span class="ar">></span>
                    <span>명소</span>
                    </div>
                </div>
                <section class="infor-element">
                    <div class="text-type">
                                                      미술관&박물관
                    </div>
                    <h3 class="h3 textcenter">${vo.title }</h3>
                    <d1 class="share-detial-element">
                        <input type="hidden" id="titleStatus" value="open">
                        <dt>Share</dt>
                       
                    </d1>
                    <div class="post-element">
                        <span>${vo.regdate }</span>
                   </div>
                </section>
                <hr>
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-xs-12" style="float: none; margin: 0 auto;" >
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">

                                  <div class="item active">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_1.jpg" alt="1" style="width: 100%;">
                                  </div>
                            
                                  <div class="item">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_2.jpg" alt="2" style="width: 100%;">
                                  </div>
                                
                                  <div class="item">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_3.jpg" alt="3" style="width: 100%;">
                                  </div>
                                </div>
                            
                                <!-- 좌우 버튼 -->
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                  <span class="glyphicon glyphicon-chevron-left"></span>
                                  <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                  <span class="glyphicon glyphicon-chevron-right"></span>
                                  <span class="sr-only">Next</span>
                                </a>
                              </div>
                            </div>
                        </div>
                    </div>
                </section>


                <div class="text-area">
                    ${vo.content }
                </div>
            </div>

            <div class="detial-cont-element active"><!-- 09-26 detial-cont-element 추가 -->
                <div class="detail-map-infor first border"><!-- 09-26 border 추가 -->
                    <dl>
                        <dt>주소</dt>
                        <dd>
                            ${vo.address }
                        </dd>
                    </dl>
                    <dl>
                        <dt>전화번호</dt>
                        <dd>${vo.phonenum }</dd>
                    </dl>
                    <dl>
                        <dt>이용시간</dt>
                        <dd>${vo.time }</dd>
                    </dl>
                    <dl>
                        <dt>이용요금</dt>
                        <dd>${vo.price }</dd>
                    </dl>
                </div>
            </div>
            <hr>
        </div>
    </main>
    
    <%@ include file="../include/footer.jsp"%>
</body>
</html>