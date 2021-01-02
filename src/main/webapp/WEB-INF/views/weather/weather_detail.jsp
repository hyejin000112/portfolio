<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	
</head>
<body>
   <div class="modal fade" id="myLargeModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg modal-center weather_container" role="document">
         <!-- Modal content-->
         <div class="mbti-modal modal-content weather_row"> 
            <!-- Modal Header -->
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">×</button>
               <div class="location_weather">  
	                <span class="glyphicon glyphicon-home"></span> 
	                <span class="ar">></span>
	                <span>날씨</span>
	            </div>
	            <h1 class="weather-city-name"></h1><h2 class="weather-time"></h2>
	            <div class="weather-temp-div">
	                <img class="weather-temp-img" src="${pageContext.request.contextPath }/resources/img/1.png"/>
	                <div class="weather-temp">
	                    <h2></h2>
	                    <h2></h2>
	                    <h2></h2>
	                </div>
	            </div>
            </div>
            <!-- Modal Body -->
            <div class="modal-body">
            	<div class="mypage_content">
					<div class="mypage_content_inner">
						<div class="mypage_mbti_box">
                        	<div class="weather-wind-div">
                        		<p></p>
		                	</div>
			                <div class="weather-humidity-div">
			                    <p></p>
			                </div>
		            		<div class="weather-temp-table">
				                <table class="weather_table_detail">
				                    <tr class="tr1">
				                        <th>날짜</th>
				                        <td>오늘</td>
				                        <td colspan="8">내일</td>
				                        <td>모레</td>
				                    </tr>
				                    <tr class="tr2">
				                        <th>시간</th>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                 
				                    <tr class="tr7">
				                        <th>날씨</th>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr class="tr3">
				                        
				                        <th>기온</th>
				                        <td colspan="16">
				                            <canvas id="myChart" width="1000px" height="150px"></canvas>
				                        </td>
				                    </tr>
				                    <tr class="tr4">
				                        <th>강수확률</th>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr class="tr5">
				                        <th>바람</th>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td ></td>
				                        <td ></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                
				                    <tr class="tr6">
				                        <th rowspan="2">습도</th>
				                        <td rowspan="2" colspan="16"><canvas id="myChart2" width="1000px" height="100px"></canvas></td>
				                    </tr>
				                </table>
		 					</div>
				            <div class="modal-footer">
				               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				            </div>
						</div>
					</div>
			      </div>
			   </div>
			</div>
		</div>
	</div>
</body>
</html>