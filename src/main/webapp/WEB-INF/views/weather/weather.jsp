<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>



    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/all.css">
<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/weather.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>

<body>

    <%@ include file="../include/header.jsp"%>

    <section>
        <div class="weather_img_box">
			 <img src="${pageContext.request.contextPath }/resources/img/weather_bg.jpg" />
		</div>


        <div class="container">
            <div class="row">
                <div class="col-sm-12">
					
                    <div class="location">
                    <span class="glyphicon glyphicon-home"></span> <span class="ar">></span>
					<span>날씨</span>
              			<a href="#"><span class="glyphicon glyphicon-plus sptitle_span" id="weatherBtn">날씨 자세히 보기</span></a>
                    </div>
                    <div class="tit_weather">
                        <span>날씨</span>

                        <select id="weather_list">
                            <option value="seoul" selected>서울</option>
                            <option value="incheon">인천</option>
                            <option value="Gangneung">강릉</option>
                            <option value="Cheongju">청주</option>
                            <option value="Chuncheon">춘천</option>
                            <option value="Sejong">세종</option>
                            <option value="Daejeon">대전</option>
                            <option value="Pohang">포항</option>
                            <option value="Daegu">대구</option>
                            <option value="Jeonju">전주</option>
                            <option value="Ulsan">울산</option>
                            <option value="Gwangju">광주</option>
                            <option value="Busan">부산</option>
                            <option value="Mokpo">목포</option>
                            <option value="Jeju">제주</option>
                        </select>

                    </div>

                    <table class="weather_table_hyejin">

                        <tr class="tr1_hyejin">
                            <th>날짜</th>
                            <td>2020-07-31 </td>
                        </tr>
                        <tr>
                            <th rowspan="2">날씨</th>
                            <td><img class="wt_td_img" src=""></td>

                        </tr>
                        <tr>
                            <td class="wt_td_weather">흐리고 비</td>

                        </tr>
                        <tr>
                            <th>현재기온</th>
                            <td class="wt_td_temp"></td>

                        </tr>
                        <tr>
                            <th>최저/최고기온(ºC)</th>
                            <td class="wt_temp_min_max"></td>

                        </tr>

                        <tr>
                            <th>습도</th>
                            <td class="temp_humidity"></td>

                        </tr>

                    </table>

                </div>
            </div>
        </div>
    </section>
    	<%@ include file="../include/footer.jsp"%>
    	<%@ include file="../weather/weather_detail.jsp"%>
    	<%@ include file="../users/user_modal.jsp" %>

    <script>


    var city;
    var lat;
    var lon;
    var time;
    var temp;
    var temp_min;
    var temp_max;
    var humidity;
    var pop;
    var weather;
    var wind;
    var humidity;
    var description;
    var icon;
    var imgURL;
    var city = "seoul";

    function weather_f(city) {
        var apiURI = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=19f6cd3639d10ef1e0e81d0cef9c1995";
        $.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            success: function (data) {
                weather = data.weather[0].id;//날씨id
                temp_min = data.main.temp_min - 273.15;//최저기온
                temp_max = data.main.temp_max - 273.15;//최고기온
                temp = data.main.temp - 273.15; //현재기온
                humidity = data.main.humidity; //습도
                lat = data.coord.lat;//위도 
                lon = data.coord.lon;//경도
                /*날씨 아이콘*/
                icon = data.weather[0].icon;//날씨아이콘 
                imgURL = "http://openweathermap.org/img/w/" + icon + ".png";
                $(".wt_td_img").attr("src", imgURL);
                /*날씨 아이콘*/
                $(".wt_td_temp").html((Math.round(temp * 100)) / 100 + "ºC");
                $(".wt_temp_min_max").html((Math.round(temp_min * 100)) / 100 + "ºC / " + (Math.round(temp_max * 100)) / 100 + "ºC");
                $(".temp_humidity").html(humidity + "%");
                $(".weather_go").attr("href","weather_detail?lat="+lat+"&lon="+lon);
                console.log(data);
                var w_id_arr = [201,200,202,210,211,212,221,230,231,232,
                300,301,302,310,311,312,313,314,321,500,
                501,502,503,504,511,520,521,522,531,600,
                601,602,611,612,615,616,620,621,622,701,
                711,721,731,741,751,761,762,771,781,800,
                801,802,803,804,900,901,902,903,904,905,
                906,951,952,953,954,955,956,957,958,959,
                960,961,962];
                var w_kor_arr = ["가벼운 비를 동반한 천둥구름","비를 동반한 천둥구름","폭우를 동반한 천둥구름","약한 천둥구름",
                "천둥구름","강한 천둥구름","불규칙적 천둥구름","약한 연무를 동반한 천둥구름","연무를 동반한 천둥구름",
                "강한 안개비를 동반한 천둥구름","가벼운 안개비","안개비","강한 안개비","가벼운 적은비","적은비",
                "강한 적은비","소나기와 안개비","강한 소나기와 안개비","소나기","악한 비","중간 비","강한 비",
                "매우 강한 비","극심한 비","우박","약한 소나기 비","소나기 비","강한 소나기 비","불규칙적 소나기 비",
                "가벼운 눈","눈","강한 눈","진눈깨비","소나기 진눈깨비","약한 비와 눈","비와 눈","약한 소나기 눈",
                "소나기 눈","강한 소나기 눈","박무","연기","연무","모래 먼지","안개","모래","먼지","화산재","돌풍",
                "토네이도","구름 한 점 없는 맑은 하늘","약간의 구름이 낀 하늘","드문드문 구름이 낀 하늘","구름이 거의 없는 하늘",
                "구름으로 뒤덮인 흐린 하늘","토네이도","태풍","허리케인","한랭","고온","바람부는","우박","바람이 거의 없는",
                "약한 바람","부드러운 바람","중간 세기 바람","신선한 바람","센 바람","돌풍에 가까운 센 바람","돌풍",
                "심각한 돌풍","폭풍","강한 폭풍","허리케인"];
                for(var i=0; i<w_id_arr.length; i++) {
                if(w_id_arr[i]==weather) {
                    $(".wt_td_weather").html(w_kor_arr[i]);
                
                }
                }
           		
                $("#weatherBtn").click(function(event){
                	event.preventDefault();
                	lat = data.coord.lat;//위도 
                    lon = data.coord.lon;//경도
                	$("#myLargeModal").modal("show");
                    
                	 var apiURI = "http://api.openweathermap.org/data/2.5/forecast?lat="+data.coord.lat+"&lon="+data.coord.lon+"&appid=cf8a9dfe6e5c816522c05f932940d7cf";
                     
                     var city;
                     var lat;
                     var lon;
                     var today;
                     var mondth;
                     var date;
                     var day;
                     var hours;
                     var pop;
                     var wind;
                     var temp_min;
                     var temp_max;
                     var temp = new Array();
                     var main = new Array();
                     var humidity = new Array();
                     var time = new Array();
                     var now = new Date();

                     $.ajax({ 
                         url: apiURI,
                         dataType: "jsonp",
                         type: "GET",
                         async: "false",
                         success: function(resp) {
                             console.log(resp);

                             city=resp.city.name;
                             var h1 = document.querySelector(".weather-city-name");
                             h1.innerHTML=city;
                             
                             var hour=now.getHours();
                             var minutes=now.getMinutes();
                             hour = (hour < 10) ? "0" + hour : hour;
                             minutes = (minutes < 10) ? "0" + minutes : minutes;
                             var h2 = document.querySelector(".weather-time");
                             h2.innerHTML=hour + ":" + minutes + ' ' +"현재"

                             var h3 = document.querySelectorAll(".weather-temp h2");
                       
                             var min=Math.round((resp.list[0].main.temp_min- 273.15)*10)/10
                             var max=Math.round((resp.list[0].main.temp_max- 273.15)*10)/10
                             h3[0].innerHTML="현재 날씨 : " + resp.list[2].weather[0].main;
                             for(i = 0; i < 16; i++) {
                                 if(min>Math.round((resp.list[i].main.temp_min- 273.15)*10)/10) {
                                     min=Math.round((resp.list[i].main.temp_min- 273.15)*10)/10;
                                 }
                             }
                             for(i = 0; i < 16; i++) {
                                 if(max<Math.round((resp.list[i].main.temp_max- 273.15)*10)/10) {
                                     max=Math.round((resp.list[i].main.temp_max- 273.15)*10)/10;
                                 }
                             }
                             h3[1].innerHTML="오늘의 최저 온도 : " + min+"°C";
                             h3[2].innerHTML="오늘의 최고 온도 : " + max+"°C";

                             var p1 = document.querySelector(".weather-wind-div p");
                             p1.innerHTML= "현재 바람 : " + resp.list[2].wind.speed+"m/s";

                             var p2 = document.querySelector(".weather-humidity-div p");
                             p2.innerHTML= "현재 습도 : " + resp.list[2].main.humidity+"%";

                             var td4 = document.querySelectorAll(".tr7 td");
                             for (i = 0; i < 16; i++) {
                                 main=resp.list[i].weather[0].main; 
                                 td4[i].innerHTML=main
                             }

                             var td1 = document.querySelectorAll(".tr2 td");
                             for (i = 0; i < 16; i++) {
                                 today = resp.list[i].dt_txt;
                                 hours = today.substr(11,2);
                                 time[i] = hours;
                                 td1[i].innerHTML=hours+"시";
                             }

                           
                             var td10 = document.querySelectorAll(".tr2 td");
                             var td11 = document.querySelectorAll(".tr1 td");
                             console.log(td10[0].innerHTML=="09시");
                             console.log(td11);
                             if(td10[0].innerHTML=="03시") { 
                                 td11[0].colSpan="7";
                                 td11[2].colSpan="1";
                             } else if(td1[0].innerHTML=="06시") {
                                 td11[0].colSpan="6";
                                 td11[2].colSpan="2";  
                             } else if(td1[0].innerHTML=="09시") {
                                 td11[0].colSpan="5";
                                 td11[2].colSpan="3";
                             } else if(td1[0].innerHTML=="12시") {
                                 td11[0].colSpan="4";
                                 td11[2].colSpan="4";
                             } else if(td1[0].innerHTML=="15시") {
                                 td11[0].colSpan="3";
                                 td11[2].colSpan="5";
                             } else if(td1[0].innerHTML=="18시") {
                                 td11[0].colSpan="2";
                                 td11[2].colSpan="6";
                             } else if(td1[0].innerHTML=="21시") {
                                 td11[0].colSpan="1";
                                 td11[2].colSpan="7";
                             }

                             for(i=0; i < 16; i++) {
                                 temp[i]=resp.list[i].main.temp- 273.15;
                             }
                             var ctx = document.getElementById('myChart');
                             var myChart = new Chart(ctx, {
                             type:'line',
                             data: {
                                 labels: time,
                                 datasets: [{
                                     label: '기온',
                                     fill: false,
                                     data: temp,
                                     borderColor: ['rgba(255, 99, 132, 1)'],
                                     borderWidth: 1
                                 }],
                             },
                             options: {
                                 tooltips: {
                                     enabled: false
                                 },
                                 hover: {
                                     animationDuration: 0
                                 },
                                 animation: {
                                     duration: 1,
                                     onComplete: function () {
                                         var chartInstance = this.chart,
                                             ctx = chartInstance.ctx;
                                             ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                                             ctx.fillStyle = 'black';
                                             ctx.textAlign = 'center';
                                             ctx.textBaseline = 'bottom';
                                             this.data.datasets.forEach(function (dataset, i) {
                                                 var meta = chartInstance.controller.getDatasetMeta(i);
                                                 meta.data.forEach(function (bar, index) {
                                                     var data = (Math.round(dataset.data[index] * 10))/10;					
                                                     ctx.fillText(data, bar._model.x, bar._model.y - 5);
                                             });
                                         });
                                     }
                                 },
                                 responsive : false,
                                 scales: {
                                         yAxes: [{
                                             display : false
                                         }]
                                     }
                                 }
                             });

                             var td2 = document.querySelectorAll(".tr4 td");
                             for (i = 0; i < 16; i++) {
                                 pop = resp.list[i].pop;
                                 td2[i].innerHTML=Math.round(pop*100)+"%";
                             }

                             var td3 = document.querySelectorAll(".tr5 td");
                             for (i = 0; i < 16; i++) {
                                 wind = resp.list[i].wind.speed ;
                                 td3[i].innerHTML=wind+"m/s";
                             }

                             for (i = 0; i < 16; i++) {
                                 humidity[i] = resp.list[i].main.humidity;
                             }
                             var ctx2 = document.getElementById('myChart2');
                             var myChart2 = new Chart(ctx2, {
                             type: 'bar',
                             data: {
                                 labels: time,
                                 datasets: [{
                                     label: '습도',
                                     data: humidity,
                                     backgroundColor: [
                                         '#808080'      
                                     ],
                                 }]
                             },
                             options: {
                                 tooltips: {
                                     enabled: false
                                 },
                                 hover: {
                                     animationDuration: 0
                                 },
                                 animation: {
                                     duration: 1,
                                     onComplete: function () {
                                         var chartInstance = this.chart,
                                             ctx2 = chartInstance.ctx;
                                             ctx2.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                                             ctx2.fillStyle = 'black';
                                             ctx2.textAlign = 'center';
                                             ctx2.textBaseline = 'bottom';
                                             this.data.datasets.forEach(function (dataset, i) {
                                                 var meta = chartInstance.controller.getDatasetMeta(i);
                                                 meta.data.forEach(function (bar, index) {
                                                     var data = dataset.data[index];							
                                                     ctx2.fillText(data, bar._model.x, bar._model.y - 5);
                                             });
                                         });
                                     }
                                 },
                                 scales: {
                                     yAxes: [{
                                         display : false
                                     }]
                                 }
                             }
                         });
                                 
                         }
                     })
                })
                
              
                
            }
        })
    }
    $(document).ready(function () {
        city = $("#weather_list option:selected").val();
        weather_f(city);



        $("#weather_list").change(function () {
            city = $("#weather_list option:selected").val();
            weather_f(city);


        })


    })


</script>

</body>

</html>