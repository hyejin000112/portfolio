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
		href="${pageContext.request.contextPath }/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/board.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="list3_img_box">
		<img
			src="${pageContext.request.contextPath }/resources/img/getImage.jpg">
	</div>

	<div class="container">
		<div class="row">
			<div class="location board-list-location">
				<span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
				<span>지역</span> <span class="ar">></span> <span>관광지</span>
			</div>
		</div>
	</div>
	<section class="article-list-element">
		<div class="container">
			<div class="row">
				<div class="page_title">지역별 &gt; 추천 관광지 검색</div>

				<div class="search_block flfull">
					<div class="fl">
						<div class="col-xs-12 col-sm-6 col-lg-3 tobacco">
							<span class="search_th">지역</span> <select class="recommend_area">
								<option>필수선택 해야합니다.</option>
								<option value="1">서울</option>
								<option value="2">인천</option>
								<option value="3">대전</option>
								<option value="4">대구</option>
								<option value="5">광주</option>
								<option value="6">부산</option>
								<option value="7">울산</option>
								<option value="8">세종</option>
								<option value="39">제주</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3 tobacco">
							<span class="search_th">대분류</span> <select
								class="recommend_large" onChange="changeLargeSelect();">
								<option value="">대분류를 선택하세요.</option>
							</select>
						</div>

						<div class="col-xs-12 col-sm-6 col-lg-3 tobacco">
							<span class="search_th">중분류</span> <select
								class="recommend_medium" onChange="changeLargeSelect2();">
								<option value="">중분류를 선택하세요.</option>
							</select>
						</div>

						<div class="col-xs-12 col-sm-6 col-lg-3 tobacco">
							<span class="search_th">소분류</span> <select
								class="recommend_small">
								<option value="">소분류를 선택하세요.</option>
							</select>
						</div>
					</div>
					<div class="fr">
						<div class="search_btn_area">
							<button type="button" class="normal_btn purplebtn"
								id="recommendBtn">추천 관광지 검색</button>
						</div>
					</div>
				</div>

				<div class="full_collum collum">
					<div class="page_title">추천 관광지 리스트</div>
					<span class="showtoggle minus"></span>
					<div class="kimhyejin" id="kimhyejin"></div>
				</div>
			</div>
		</div>
	</section>

	<!--페이지 네이션을 가져옴-->
	<div class="paging" id="paging">
		<ul class="pagingUl" id="pagingUl">

		</ul>
	</div>

	<%@ include file="../include/footer.jsp"%>
	<%@ include file="../users/user_modal.jsp" %>

	<script>
		var $id;
		var large1 = ['자연', '인문(문화/예술/역사)']
		var large1_value = ['A01', 'A02']

		var medium1 = ['자연관광지', '관광자원']
		var medium1_value = ['A0101', 'A0102']

		var medium2 = ['역사관광지', '휴양관광지', '체험관광지', '산업관광지', '건축/조형물']
		var medium2_value = ['A0201', 'A0202', 'A0203', 'A0204', 'A0205']

		var small1 = ['국립공원', '도립공원', '군립공원', '산', '자연생태관광지', '자연휴양림', '수목원', '폭포', '계곡', '약수터', '해안절경', '해수욕장', '섬', '항구/포구', '어촌', '등대', '호수', '강', '동굴']
		var small1_value = ['A01010100', 'A01010200', 'A01010300', 'A01010400', 'A01010500', 'A01010600', 'A01010700', 'A01010800', 'A01010900', 'A01011000', 'A01011100', 'A01011200', 'A01011300', 'A01011400', 'A01011500', 'A01011600', 'A01011700', 'A01011800', 'A01011900']

		var small2 = ['희귀동/식물', '기암괴석']
		var small2_value = ['A01020100', 'A01020200']

		var small3 = ['고궁', '성', '문', '고택', '생가', '민속마을', '유적지/사적지', '사찰', '종교성지', '안보관광']
		var small3_value = ['A02010100', 'A02010200', 'A02010300', 'A02010400', 'A02010500', 'A02010600', 'A02010700', 'A02010800', 'A02010900', 'A02011000', 'A02011100']

		var small4 = ['유원지', '관광단지', '온천/욕장/스파', '이색찜질방', '헬스투어', '테마공원', '공원', '유람선/잠수함관광']
		var small4_value = ['A02020100', 'A02020200', 'A02020300', 'A02020400', 'A02020500', 'A02020600', 'A02020700', 'A02020800']

		var small5 = ['농.산.어촌 체험', '전통체험', '산사체험', '이색체험', '관광농원', '이색거리']
		var small5_value = ['A02030100', 'A02030200', 'A02030300', 'A02030400', 'A02030500', 'A02030600']

		var small6 = ['제철소', '조선소', '공단', '발전소', '광산', '식음료', '화학/금속', '기타', '전자/반도체', '자동차']
		var small6_value = ['A02040100', 'A02040200', 'A02040300', 'A02040400', 'A02040500', 'A02040600', 'A02040700', 'A02040800', 'A02040900', 'A02040900', 'A02041000']

		var small7 = ['다리/대교', '기념탑/기념비/전망대', '분수', '동상', '터널', '유명건물']
		var small7_value = ['A02050100', 'A02050200', 'A02050300', 'A02050400', 'A02050500', 'A02050600']

		window.onload = function () {
			
			var recommend_large = document.querySelector(".recommend_large");
			for (i = 0; i < large1.length; i++) {
				var op3 = document.createElement("option");
				op3.value = large1_value[i]
				op3.appendChild(document.createTextNode(large1[i]))
				recommend_large.appendChild(op3)
			}
			var recommend_medium = document.querySelector(".recommend_medium");
			recommend_medium.style.display = "none";
			var recommend_small = document.querySelector(".recommend_small");
			recommend_small.style.display = "none";

		}

		function changeLargeSelect() {
			var recommend_large = document.querySelector(".recommend_large");
			var idx = recommend_large.options.selectedIndex;
			if (idx < 1 && idx > 3) {
				return;
			}
			changeMediumSelect(idx);
		}

		function changeMediumSelect(idx) {
			var recommend_medium = document.querySelector(".recommend_medium");
			var recommend_small = document.querySelector(".recommend_small");
			var data;
			var data_value;

			if (idx == 0) {
				recommend_medium.style.display = "none";
				recommend_small.style.display = "none";
				return;
			}
			if (idx == 1) {
				data = medium1
				data_value = medium1_value
			}
			if (idx == 2) {
				data = medium2
				data_value = medium2_value
			}

			recommend_medium.innerHTML = "";
			var etc = document.createElement("option");
			etc.appendChild(document.createTextNode("중분류를 선택하세요."));
			recommend_medium.appendChild(etc);

			for (i = 0; i < data.length; i++) {
				var op4 = document.createElement("option");
				op4.value = data_value[i];
				op4.appendChild(document.createTextNode(data[i]));
				recommend_medium.appendChild(op4);
			}

			recommend_medium.style.display = "";
		}

		function changeLargeSelect2() {
			var recommend_large = document.querySelector(".recommend_large");
			var recommend_medium = document.querySelector(".recommend_medium");
			var idx = recommend_large.options.selectedIndex;
			var idx2 = recommend_medium.options.selectedIndex;

			if (idx < 1 && idx > 3) {
				return;
			}

			changeMediumSelect2(idx, idx2);
		}

		function changeMediumSelect2(idx, idx2) {
			var recommend_medium = document.querySelector(".recommend_medium");
			var recommend_small = document.querySelector(".recommend_small");
			var data;
			var data_value;

			if (idx == 0) {
				recommend_medium.style.display = "none";
				recommend_small.style.display = "none";
				return;
			}
			if (idx2 == 0) {
				recommend_small.style.display = "none";
				return;
			}
			if (idx == 1 && idx2 == 1) {
				data = small1
				data_value = small1_value
			}
			if (idx == 1 && idx2 == 2) {
				data = small2
				data_value = small2_value
			}
			if (idx == 2 && idx2 == 1) {
				data = small3
				data_value = small3_value
			}
			if (idx == 2 && idx2 == 2) {
				data = small4
				data_value = small4_value
			}
			if (idx == 2 && idx2 == 3) {
				data = small5
				data_value = small5_value
			}
			if (idx == 2 && idx2 == 4) {
				data = small6
				data_value = small6_value
			}
			if (idx == 2 && idx2 == 5) {
				data = small7
				data_value = small7_value
			}

			recommend_small.innerHTML = "";
			var etc2 = document.createElement("option");
			etc2.appendChild(document.createTextNode("소분류를 선택하세요."));
			recommend_small.appendChild(etc2);

			for (i = 0; i < data.length; i++) {
				var op5 = document.createElement("option");
				op5.value = data_value[i];
				op5.appendChild(document.createTextNode(data[i]));
				recommend_small.appendChild(op5);
			}
			recommend_small.style.display = "";
		}
	
		$(document).ready(function(){
			
			var areaCode;
			var cat1;
			var cat2;
			var cat3;
			var imgurl = new Array();
			
			
			$('.recommend_area').change(function(){
				areaCode = $(this).val();
			})
			$('.recommend_large').change(function(){
				cat1 = $(this).val();
				cat2 = "";
				cat3 = "";
				
			})
			$('.recommend_medium').change(function(){
				cat2 = $(this).val();
				cat3 = "";
				
			})
			$('.recommend_small').change(function(){
				cat3 = $(this).val();
				
			})
			$('#recommendBtn').click(function() {
				if(areaCode == undefined) {
					alert("지역은 필수 선택부분입니다.")
				}
				var amount=8;
				var pageCount=10;
				if(cat1 === undefined || cat1==='') {
					var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&numOfRows=8&pageNo="+$id+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
				} else if(cat2 === undefined || cat2==='') {
					var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&numOfRows=8&pageNo="+$id+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
				} else if(cat3 === undefined || cat3==='') {
					var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&cat2="+cat2+"&numOfRows=8&pageNo="+$id+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
				} else {
					var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&cat2="+cat2+"&cat3="+cat3+"&numOfRows=8&pageNo="+$id+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
				}
				$.ajax({
				url: apiURI,
				dataType: "json",
				type: "GET",
				async: "false", 
				success: function(data) {
					console.log(data);
					var strAdd = "";
					for (i = 0; i < data.response.body.items.item.length; i++) {
						strAdd += '<div class="col-xs-12 col-sm-6 col-lg-3 lighter" id="lighter">'
						strAdd += '<a class="tobacco_lighter" href=boardForm?contentId='+data.response.body.items.item[i].contentid+'>'
						if(data.response.body.items.item[i].firstimage === undefined) {
                        strAdd += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
                        } else {
                        strAdd += '<img class="img_form_url" src=' + data.response.body.items.item[i].firstimage + '>'    
                        }
						strAdd += '<div class="tobacco_lighter_recommend">'
						strAdd += '<span class="tobacco_lighter_title">'+data.response.body.items.item[i].title+'</span>'
						strAdd += '</div>'
						strAdd += '</a>'
						strAdd += '</div>'
					}
					$("#kimhyejin").html(strAdd);
					
					
					total=data.response.body.totalCount
					function paging(total,amount,pageCount,pageNo) {
					var totalPage = Math.ceil(total/amount);
					var pageGroup = Math.ceil(pageNo/pageCount);

					var last= pageGroup * pageCount;
					if(last > totalPage) {
					last = totalPage;
					}
					var first = last - (pageCount-1);
					var next = last + 1;
					var prev = first -1;
					var html = "";
					if(prev > 0) {
						html += "<li class='pagingLi'><a href='#' id='prev'>prev</a><li>";
					}
					for(var i=first; i<=last; i++) {
						if(pageNo == i) {
							html += "<li class='pagingLi'><a class='active' href='#' value="+i+" id="+i+">"+i+"</a><li>";
						} else if (i>0) {
							html += "<li class='pagingLi'><a href='#' value="+i+" id="+i+">"+i+"</a><li>";
						}
					}
					if(last < totalPage)
						html += "<li class='pagingLi'><a href=#  id='next'>next</a><li>"
						$("#pagingUl").html(html);
						$("#pagingUl a#"+pageNo).css({"text-decoration" : "none",
													"color":"red",
													"font-weight":"bold"});

					$("#pagingUl a").click(function() {
						var $item = $(this);
						var $id = $item.attr("id");
						var selectedPage= $item.text();
						if($id=="next") {
							selectedPage=next;
						}
						if($id=="prev") {
							selectedPage=prev;
						}
						paging(total,amount,pageCount,selectedPage);
						var pageNum = $('.active').attr("id");
						if(cat1 === undefined || cat1==='') {
							var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&numOfRows=8&pageNo="+pageNum+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
						} else if(cat2 === undefined || cat2==='') {
							var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&numOfRows=8&pageNo="+pageNum+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
						} else if(cat3 === undefined || cat3==='') {
							var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&cat2="+cat2+"&numOfRows=8&pageNo="+pageNum+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
						} else {
							var apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&listYN=Y&contenttypeid=12&areaCode="+areaCode+"&cat1="+cat1+"&cat2="+cat2+"&cat3="+cat3+"&numOfRows=8&pageNo="+pageNum+"&MobileOS=ETC&MobileApp=AppTest&_type=json"
						}
						
						$.ajax({
							url: apiURI,
							dataType: "json",
							type: "GET",
							async: "false", 
							success: function(data2) {
								console.log(data2);
								var strAdd3 = "";
								for (i = 0; i < data2.response.body.items.item.length; i++) {
									strAdd3 += '<div class="col-xs-12 col-sm-6 col-lg-3 lighter" id="lighter">'
									strAdd3 += '<a class="tobacco_lighter" href=boardForm?contentId='+data2.response.body.items.item[i].contentid+'>'
									if(data.response.body.items.item[i].firstimage === undefined) {
				                    strAdd3 += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
				                    } else {
				                    strAdd3 += '<img class="img_form_url" src=' + data.response.body.items.item[i].firstimage + '>'    
				                    }
									strAdd3 += '<div class="tobacco_lighter_recommend">'
									strAdd3 += '<span class="tobacco_lighter_title">'+data2.response.body.items.item[i].title+'</span>'
									strAdd3 += '</div>'
									strAdd3 += '</a>'
									strAdd3 += '</div>'
								}
								$("#kimhyejin").html(strAdd3);
							}
						})						
					});
					}
					paging(total,amount,pageCount,1);
					
				}
    			})
			})	
		})


		
	</script>
</body>
</html>