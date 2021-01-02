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
		href="${pageContext.request.contextPath }/resources/css/board.css">
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
                    <span>관광지</span>
                    <span class="ar">></span>
                    <span>명소</span>
                    </div>
                </div>
                <section class="infor-element">
                    <div class="text-type">
                       	 미술관&박물관
                    </div>
                    <h3 class="h3 textcenter" id="textcenter"></h3>
                    
                </section>
                <hr>
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-xs-12" style="float: none; margin: 0 auto;" >
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                  
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
                <div id="text-area"></div>
            </div>

            <div class="detial-cont-element active"><!-- 09-26 detial-cont-element 추가 -->
                <div class="detail-map-infor first border"><!-- 09-26 border 추가 -->
                    <dl>
                        <dt>전화번호</dt>
                        <dd id="infocenter"></dd>
                    </dl>
                    <dl>
                        <dt>주차공간</dt>
                        <dd id="parking"></dd>
                    </dl>
                    <dl>
                        <dt>이용시기</dt>
                        <dd id="useseason"></dd>
                    </dl>
                    <dl>
                        <dt>이용시간</dt>
                        <dd id="usetime">AM 10:30 ~ PM 06:00 (입장 마감 PM 5:00)</dd>
                    </dl>
                    <dl>
                        <dt>휴무일</dt>
                        <dd id="restdate">일요일·신정·설날·추석연휴 휴관</dd>
                    </dl>
                </div>
            </div>
            <hr>
            <div class="detail-map-wrap">
                <div class="detail-map">
                    <p class="kakaomap">지도 보기</p>
                    <div>
                        <div class="kakaomap_view" id="map" style="width : 700px; height : 450px; margin: 0 auto;"></div>
                    </div>
                </div>
                <div class="detail-map-infor">
                    <dl>
                        <dt>주소</dt>
                        <dd id="addr1"></dd>
                    </dl>
                </div>
            </div><!--// detail-map-wrap -->
            <hr>
      
            	<div class="row tripadvisor-wrap">
				<h4>
					트립어드바이저 
					<span class="glyphicon glyphicon-eye-open"></span>
				</h4>
				<p class="trip-infor">
					여행자 랭킹<span class="glyphicon glyphicon-eye-open"></span> <span
						class="small">(Based on 4 Traveler Reviews)</span>
				</p>
				<div class="trip-lst-wrap">
					<p class="trip-lst-total">Latest 4 reviews of 호림 박물관 신사 분관</p>
					<div class="trip-lst-content " id="review_table">
						<div class="trip-lst-write">

						<a href="#modal-board-regist" data-toggle="modal"
							class="detail-button">리뷰 작성</a>
						<!--    <a href="#modal-board-content" data-toggle="modal" class="detail-button">리뷰 확인 및 삭제</a>
                        <a href="#modal-board-update" data-toggle="modal" class="detail-button">리뷰 수정</a> -->

					</div>
						<!--<c:forEach var="vo" items="${list}" varStatus="num">

							<div class="col-xs-12 col-lg-6 inner">
								<dl>
									<dt>${vo.title}</dt>
									<dd>${vo.content}</dd>
								</dl>
								<div class="count">

									<h3 class="sptitle4 review_evaluate">${vo.evaluate }</h3>
									<span class="trip-id">${vo.reviewId} 님 </span><span
										class="trip-data">${vo.regDate }</span>
									<button class="modal_modify" class='right' value="${vo.rno}">
										<span class='glyphicon glyphicon-pencil'></span>수정
									</button>
									<button class="modal_delete" class='right' value="${vo.rno}">
										<span class='glyphicon glyphicon-remove'></span>확인 및 삭제
									</button>
								</div>
							</div>
						</c:forEach>

-->
						<div class="col-xs-12 col-lg-6 inner loading " id="review_box">
							<div class="loading-box ">
								<div class="loading-box-inner">
									<a id="review_view" href="#review_view"> <span class="text">리뷰더보기</span>
									</a>
								</div>
							</div>
						</div>


					</div>

					
				</div>
			</div>
			<!--// tripadvisor-wrap -->
		</div>
	</main>

    
    <%@ include file="../include/footer.jsp"%>
	<%@ include file="board_modal.jsp"%>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2bc77ca67693e7633f95f1e279e4985"></script>
<script>
$(document).ready(function(){
var mapx;
var mapy;
var apiURI="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=C7in%2FEJmCV77FFS%2B8mUgm%2FZFcZRLgy4xaqvr0s8sp9FfEtS4zF3aBE47vibxO74QRX1RdW0cj8a%2BlhcRuOpxRQ%3D%3D&contentId="+${contentId}+"&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTest"
$.ajax({
	url: apiURI,
	dataType: "json",
	type: "GET",
	async: "false", 
	success: function(data) {
        $("#textcenter").html(data.response.body.items.item.title)
        $("#text-area").html(data.response.body.items.item.overview)
        $("#addr1").html(data.response.body.items.item.addr1)
        mapx = data.response.body.items.item.mapx
        mapy = data.response.body.items.item.mapy
		
        var x = mapy;
        var y = mapx;
        console.log(x);
        console.log(y);
        var place = "Mani House";
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커가 표시될 위치입니다 
        var markerPosition = new kakao.maps.LatLng(x, y);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        var iwContent = '<div style="padding:5px;">'+data.response.body.items.item.title+' <br><a href="https://map.kakao.com/link/map/'+data.response.body.items.item.title+','+x+','+y+'" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/'+data.response.body.items.item.title+','+x+','+y+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position: iwPosition,
            content: iwContent
        });

        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker);
    }  
})
var apiURI2 = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?ServiceKey=C7in%2FEJmCV77FFS%2B8mUgm%2FZFcZRLgy4xaqvr0s8sp9FfEtS4zF3aBE47vibxO74QRX1RdW0cj8a%2BlhcRuOpxRQ%3D%3D&contentId="+${contentId}+"&contentTypeId=12&MobileOS=ETC&MobileApp=AppTest&_type=json"

$.ajax({
	url: apiURI2,
	dataType: "json",
	type: "GET",
	async: "false", 
	success: function(data2) {
		console.log(data2);
		if(data2.response.body.items.item.infocenter === undefined) {
			$("#infocenter").html("ㅡ")
		} else {
        	$("#infocenter").html(data2.response.body.items.item.infocenter);	
		}
		if(data2.response.body.items.item.restdate === undefined) {
			$("#restdate").html("ㅡ")
		} else {
        	$("#restdate").html(data2.response.body.items.item.restdate);	
		}
		if(data2.response.body.items.item.usetime === undefined) {
			$("#usetime").html("ㅡ")
		} else {
			$("#usetime").html(data2.response.body.items.item.usetime);
		}
		if(data2.response.body.items.item.parking === undefined) {
			$("#parking").html("ㅡ")
		} else {
			$("#parking").html(data2.response.body.items.item.parking);
		}
		if(data2.response.body.items.item.useseason === undefined) {
			$("#useseason").html("ㅡ")
		} else {
			$("#useseason").html(data2.response.body.items.item.useseason);
		}
	}
})
var apiURI3 = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey=C7in%2FEJmCV77FFS%2B8mUgm%2FZFcZRLgy4xaqvr0s8sp9FfEtS4zF3aBE47vibxO74QRX1RdW0cj8a%2BlhcRuOpxRQ%3D%3D&contentId="+${contentId}+"&imageYN=Y&MobileOS=ETC&MobileApp=AppTest_type=json"
		
$.ajax({
	url: apiURI3,
	dataType: "json",
	type: "GET",
	async: "false", 
	success: function(data3) {
		console.log(data3);
        var strAdd = "";
            strAdd += '<div class="item active">'
            if(data3.response.body.items.item[0].originimgurl === undefined)  {
            	strAdd += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
            } else {
				strAdd += ' <img class="item_img" src="'+data3.response.body.items.item[0].originimgurl+'" style="width: 100%;">'
            }
			strAdd += '</div>'
		for (i = 1; i < data3.response.body.items.item.length ; i++) {
			strAdd += '<div class="item">'
			if(data3.response.body.items.item[i].originimgurl === undefined)  {
		    	strAdd += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
		    } else {
		    	strAdd += ' <img class="item_img" src="'+data3.response.body.items.item[i].originimgurl+'" style="width: 100%;">'
		    }
			strAdd += '</div>'
		}
		$(".carousel-inner").html(strAdd);
	}
})
})
	</script>
	<script>
		var review_evaluate = document.querySelectorAll(".review_evaluate");

		for (var j = 0; j < review_evaluate.length; j++) {
			var count = review_evaluate[j].innerHTML;

			var str = "";
			for (var i = 1; i <= count; i++) {
				console.log("as")
				str += "★";
			}
			for (var i = 1; i < 6 - count; i++) {
				str += "☆";
			}

			review_evaluate[j].innerHTML = "평점 : " + str;

		}
	</script>

	<script>
		$(document)
				.ready(
						function() {				

							var count = 0;
							function view(){

								$.ajax({
											url : "../review/modal_reivew_view?contentId="+${contentId},
											type : "GET",
											async : "false",
											success : function(data) {
												
												console.log(count)
												
												
												var str = "";
												
												
												for (var i = count; i < count+4; i++) {
													
													if(i == data.length-1){
														break;
														}
													
													
												
													str += "<div class='col-xs-12 col-lg-6 inner  board_content_box'>";
													str += "<dl><dt class='board_dt'>"
															+ data[i].title
															+ "</dt><dd class='board_dd'>"
															+ data[i].content.substring(0,150)+"...";
															+ "</dd></dl>";
													str += "<div class='count'>";
													str += "<h3 class='sptitle4 review_evaluate'></h3>";
													str += "<span class='trip-id'>"
															+ data[i].reviewId
															+ " 님 </span><span class='trip-data'>${vo.regDate }</span>"
													str += "<button class='modal_modify' class='right' value="+data[i].rno+">";
													str += "<span class='glyphicon glyphicon-pencil'></span>수정</button>";
													str += "<button class='modal_delete' class='right' value="+data[i].rno+">";
													str += "<span class='glyphicon glyphicon-remove'></span>확인 및 삭제";
													str += "</button></div></div>";
													
													$(".board_content_box").css("border","1px solid #a9abbf");
													
												}
												$("#review_table").append(str);
											}
										})
							}
							
								view();
							
								
								$("#review_view").click(function() {
									
								$.ajax({
									url : "../review/modal_reivew_view?contentId="+${contentId},
								type : "GET",
								async : "false",
								success : function(data) {
									if (count+4 >= data.length) {
										//
										count = data.length;
										alert("더이상 리뷰가 없습니다");
										$(".review_more").css("display","none");
									}else{
										count+= 4;
									} 
									
								}
								})
									
									view();
									

								})
								
								
								

								/*리뷰 더보기*/
								/*var str2 = "<div class='col-xs-12 col-lg-6 inner loading'>";
								str2 += "<div class='loading-box'>";
								str2 += "<div class='loading-box-inner'>";
								str2 += "<a id='review_view' href='#'> <span class='text'>리뷰더 보기</span>";
								str2 += "</a> </div> <div> <div>";
								$("#review_table").append(str2);*/

								$("#review_table").on("click",".modal_modify",
										function(event) {

											var rno = $(this).val();

											$.ajax({
												url : "modal_modify?rno=" + rno,
												type : "GET",
												async : "false",
												success : function(data) {

													$("#modal_modify_writer").val(
															data.reviewId);
													$("#modal_modify_title").val(
															data.title);
													$("#modal_modify_content").val(
															data.content);
													$("#modal_modify_writer").val(
															data.reviewId);

													$("#modal-board-update").modal(
															"show");

													$('input[name="evaluate"]')
															.removeAttr('checked');
													$(
															'input:radio[name=evaluate]:input[value='
																	+ data.evaluate
																	+ ']').attr(
															"checked", true);

													$("#modal_modify_rno").val(
															data.rno);
												}

											})
										})

								$("#review_table").on("click",".modal_delete",
										function(event) {
											var rno = $(this).val();
											console.log(rno);
											$.ajax({
												url : "modal_modify?rno=" + rno,
												type : "GET",
												async : "false",
												success : function(data) {
													console.log(data);
													$("#modal_delete_writer").val(
															data.reviewId);
													$("#modal_delete_title").val(
															data.title);
													$("#modal_delete_content").val(
															data.content);

													$("#modal-board-content")
															.modal("show");

													$('input[name="evaluate"]')
															.removeAttr('checked');
													$(
															'input:radio[name=evaluate]:input[value='
																	+ data.evaluate
																	+ ']').attr(
															"checked", true);

													$("#modal_delete_rno").val(
															data.rno);
												}
											})

										})

						})
	</script>
	
</body>

</html>