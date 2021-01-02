<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.css">

    <!-- 제이쿼리 추가 (순서 중요)-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/home.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/activity.css">

</head>
<body>
<%@ include file="../include/header.jsp"%>

	<div class="list3_img_box">
		<img src="${pageContext.request.contextPath }/resources/img/culture.jpg">
	</div>
    <div class="container">
		<div class="row">
			<div class="location board-list-location">
				<span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
				<span>날짜</span> <span class="ar">></span> <span>행사/공연/축제</span>
			</div>
		</div>
	</div>
	<section class="article-list-element">
		<div class="container">
			<div class="row">
				<div class="page_title">날짜별 &gt; 추천 활동 검색</div>

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
							<span class="search_th">시작 일자</span> 
							<input type="text" id="datepicker_start" class="datepicker_start">
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3 tobacco">
							<span class="search_th">종료 일자</span> 
							<input type="text" id="datepicker_end" class="datepicker_end">
						</div>
                    </div>
					<div class="fr">
						<div class="search_btn_area">
							<button type="button" class="normal_btn purplebtn"
								id="recommendBtn">추천 활동 검색</button>
						</div>
					</div>
				</div>
				<div class="full_collum collum">
					<div class="page_title">추천 활동 리스트</div>
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
    
    <script>
        var eventStartDate;
        var eventEndDate;
        var areaCode;

        $(document).ready(function(){
            $(function() {
                //모든 datepicker에 대한 공통 옵션 설정
                $.datepicker.setDefaults({
                    dateFormat: 'yymmdd' //Input Display Format 변경
                    ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                    ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                    ,changeYear: true //콤보박스에서 년 선택 가능
                    ,changeMonth: true //콤보박스에서 월 선택 가능                
                    ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                    ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                    ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                    ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                    ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                    ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                    ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                    ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                    ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트                  
                });
    
                //input을 datepicker로 선언
                $("#datepicker_start").datepicker();                
                $("#datepicker_end").datepicker();
                
                //From의 초기값을 오늘 날짜로 설정
                $('#datepicker_start').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
                //To의 초기값을 내일로 설정
                $('#datepicker_end').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
            });

            $('.recommend_area').change(function(){
                areaCode = $(this).val();
                console.log(areaCode);
            })
            $('#datepicker_start').change(function(){
            eventStartDate = $("#datepicker_start").val(); 
            console.log(eventStartDate);
            })
            $('#datepicker_end').change(function(){
            eventEndDate = $("#datepicker_end").val();   
            console.log(eventEndDate);
            })
            $('#recommendBtn').click(function() {
            	if(areaCode == undefined) {
					alert("지역은 필수 선택부분입니다.")
				}
                var amount=8;
				var pageCount=10;
                var apiURI="http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&areaCode="+areaCode+"&numOfRows=8&pageNo=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate="+eventStartDate+"&eventEndDate="+eventEndDate+""  
                $.ajax({
					url: apiURI,
                    dataType: "json",
                    type: "GET",
                    async: "false",
                    success: function (data) {
                        console.log(data);
                        var strAdd = "";
                        for (i = 0; i < data.response.body.items.item.length; i++) {
                            strAdd += '<div class="col-xs-12 col-sm-6 col-lg-3 lighter" id="lighter">'
                            if(data.response.body.items.item[i].firstimage === undefined) {
                            strAdd += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
                            } else {
                            strAdd += '<img class="img_form_url" src=' + data.response.body.items.item[i].firstimage + '>'    
                            }
                            strAdd += '<div class="tobacco_lighter_recommend">'
                            strAdd += '<div>'
                            strAdd += '<span class="tobacco_lighter_title">' + data.response.body.items.item[i].title + '</span>'
                            strAdd += '</div>'
                            strAdd += '<div>'
                            strAdd += '<sapn class="tobacco_lighter_startDate">' + data.response.body.items.item[i].eventstartdate + '~</span>'
                            strAdd += '<sapn class="tobacco_lighter_startDate">' + data.response.body.items.item[i].eventenddate + '</span>'
                            strAdd += '</div>'
                            strAdd += '</div>'
                            strAdd += '</div>'
                        }
                        $("#kimhyejin").html(strAdd);


                        total = data.response.body.totalCount
                        function paging(total, amount, pageCount, pageNo) {
                            var totalPage = Math.ceil(total / amount);
                            var pageGroup = Math.ceil(pageNo / pageCount);

                            var last = pageGroup * pageCount;
                            if (last > totalPage) {
                                last = totalPage;
                            }
                            var first = last - (pageCount - 1);
                            var next = last + 1;
                            var prev = first - 1;
                            var html = "";
                            if (prev > 0) {
                                html += "<li class='pagingLi'><a href='#' id='prev'>prev</a><li>";
                            }
                            for (var i = first; i <= last; i++) {
                                if (pageNo == i) {
                                    html += "<li class='pagingLi'><a class='active' href='#' value=" + i + " id=" + i + ">" + i + "</a><li>";
                                } else if (i > 0) {
                                    html += "<li class='pagingLi'><a href='#' value=" + i + " id=" + i + ">" + i + "</a><li>";
                                }
                            }
                            if (last < totalPage)
                                html += "<li class='pagingLi'><a href=#  id='next'>next</a><li>"
                            $("#pagingUl").html(html);
                            $("#pagingUl a#" + pageNo).css({
                                "text-decoration": "none",
                                "color": "red",
                                "font-weight": "bold"
                            });

                            $("#pagingUl a").click(function () {
                                var $item = $(this);
                                var $id = $item.attr("id");
                                var selectedPage = $item.text();
                                if ($id == "next") {
                                    selectedPage = next;
                                }
                                if ($id == "prev") {
                                    selectedPage = prev;
                                }
                                paging(total, amount, pageCount, selectedPage);
                                var pageNum = $('.active').attr("id");

                                apiURI = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=4sOG4cRfYth4mJu9%2F8cItVkByS3IGrfbfCNE%2BJpncmTBwVm3X8n6lCVAoSdZmhjtLO2L%2BycmUU6Pm0TSY6bqzQ%3D%3D&areaCode=" + areaCode + "&numOfRows=8&pageNo=" + pageNum + "&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=" + eventStartDate + "&eventEndDate=" + eventEndDate + "&_type=json"

                                $.ajax({
                                    url: apiURI,
                                    dataType: "json",
                                    type: "GET",
                                    async: "false",
                                    success: function (data2) {
                                        console.log(data2);
                                        var strAdd3 = "";
                                        for (i = 0; i < data2.response.body.items.item.length; i++) {
                                            strAdd3 += '<div class="col-xs-12 col-sm-6 col-lg-3 lighter" id="lighter">'
                                            if(data2.response.body.items.item[i].firstimage === undefined) {
                                            strAdd3 += '<img class="img_form_url" src=${pageContext.request.contextPath }/resources/img/no-image-available.png>'
                                            } else {
                                            strAdd3 += '<img class="img_form_url" src=' + data2.response.body.items.item[i].firstimage + '>'    
                                            }
                                            strAdd3 += '<div class="tobacco_lighter_recommend">'
                                            strAdd3 += '<div>'
                                            strAdd3 += '<span class="tobacco_lighter_title">' + data2.response.body.items.item[i].title + '</span>'
                                            strAdd3 += '</div>'
                                            strAdd3 += '<div>'
                                            strAdd3 += '<sapn class="tobacco_lighter_startDate">' + data2.response.body.items.item[i].eventstartdate + '~</span>'
                                            strAdd3 += '<sapn class="tobacco_lighter_startDate">' + data2.response.body.items.item[i].eventenddate + '</span>'
                                            strAdd3 += '</div>'
                                            strAdd3 += '</div>'
                                            strAdd3 += '</div>'
                                        }
                                        $("#kimhyejin").html(strAdd3);
                                    }
                                })
                            });
                        }
                        paging(total, amount, pageCount, 1);
                    }
                })			
            })
    })
    </script>
    <%@ include file="../include/footer.jsp"%>
    <%@ include file="../users/user_modal.jsp" %>
</body>
</html>