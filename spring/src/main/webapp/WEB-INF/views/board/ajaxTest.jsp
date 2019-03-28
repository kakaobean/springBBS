<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/ui.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/bootstrap.min.css"/>">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>

<script type="text/javascript">
	$().ready(function() {
		$("button").click(function() {
			var id = this.value;
			$.ajax({
				type : "GET",
				url : "/ajaxSuccess/" + id,
				// 			data : id,
				// 			contentType : "application/json;charset=UTF-8",
				success : function(data) {
					var testD = data[0].writedate;
					alert("성공data는 무엇" + data);
					var html = "";
					for (var i = 0; i < data.length; i++) {
						console.log(i);
						html += "<tr><td>" + data[i].no + "</td>";
						html += "<td>" + data[i].title + "</td>";
						html += "<td>" + data[i].viewcnt + "</td>";
						html += "<td>" + data[i].writedate + "</td></tr>";

					}
					$("#trTest").html(html);

				},
				error : function() {
					alert("실패");
				}
			});
		});
		//		$("#input").html(${test});
	});

	/* 	$(function(){
	 main.init();
	 });
	 var main = (function(){
	 //var polygonPath = [];
	 return{
	 init : function(){
	 var htmstr = '';
	 console.log("init"); 
	 ajax.post('/di/getSeoulList.gistar', {}, main.slist);
	 }//init 끝
	 ,slist : function(data){
	 alert("test"+data);
	 // 				if(data.result && data.result != ''){
	 // 					$('#lmit10').val(data.result.resultlist[0].sggNm); //초기값 설정
	 // 					list.selbox(data.result.resultlist, $('#selectgu')); //드롭박스 데이터 채움
	 // 				}else{
	 // 					console.log('error');
	 // 				}
	 }//slist 끝

	 }//main 끝
	 })(); */
</script>
</head>

<body>
	<div id="get">
		<button id="ajaxBtn" style="border: solid 1px;" value="1">GET
			1</button>
		<button id="ajaxBtn" style="border: solid 1px;" value="2">GET
			2</button>
		<button id="ajaxBtn" style="border: solid 1px;" value="3">GET
			3</button>
		<button id="ajaxBtn" style="border: solid 1px;" value="4">GET
			4</button>
	</div>
	<div id="input">여기로</div>

	<div class="listForm1">
		<table summary="공지사항의 번호, 제목, 조회수 등록일 목록">
			<caption>공지사항 목록</caption>
			<colgroup>
				<col width="60%">
				<col width="10%">
				<col width="10%">
				<col width="20%">
			</colgroup>
			<tbody>
				<tr class="headerrow">
					<td>Job Title</td>
					<td>Organisation</td>
					<td>Job Function</td>
					<td>Job Destination</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl03_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=140184">QR20567
							- Cabin Crew Recruitment Event Sarajevo | 07th April 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl04_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=140140">QR20544
							- Cabin Crew Recruitment Event Liverpool | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl05_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=140093">QR20533
							- Cabin Crew Recruitment Event Kolkata | 21st April 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl06_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=140102">QR20535
							- Cabin Crew Recruitment Event Bogota | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl07_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=140033">QR20523
							- Cabin Crew Recruitment Event Taipei | 20th April 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl08_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139982">QR20511
							- Cabin Crew Recruitment Event Mumbai | 14th April 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl09_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139984">QR20513
							- Cabin Crew Recruitment Event Brussels | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl10_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139923">QR20490
							- Cabin Crew Recruitment Event Mexico City | 13th April 2019 |
							Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl11_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139948">QR20497
							- Cabin Crew Recruitment Event Dublin | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl12_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139889">QR20476
							- Cabin Crew Recruitment Event Marseille | 14th April 2019 |
							Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl13_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139868">QR20467
							- Cabin Crew Recruitment Event Ljubljana | 07th April 2019 |
							Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl14_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139801">QR20440
							- Cabin Crew Recruitment Event Kingston | 13th April 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl15_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139815">QR20442
							- Cabin Crew Recruitment Event Johannesburg | 06th April 2019 |
							Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl16_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139555">QR20368
							- Cabin Crew Recruitment Event Rome | TBA | Qatar Airways | Doha</a>
					</td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl17_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139556">QR20369
							- Cabin Crew Recruitment Event Darjeeling | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl18_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=138485">QR20015
							- Cabin Crew Recruitment Event Karachi | Shortlisted | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl19_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139390">QR20307
							- Cabin Crew Recruitment Event Tirana | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl20_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139391">QR20308
							- Cabin Crew Recruitment Event Lima | TBA | Qatar Airways | Doha</a>
					</td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl21_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139400">QR20313
							- Cabin Crew Recruitment Event Barcelona | 06th April 2019 |
							Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl22_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139408">QR20317
							- Cabin Crew Recruitment Event Panama City | TBA | Qatar Airways
							| Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl23_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139412">QR20319
							- Cabin Crew Recruitment Event Bandar Seri Begawan | TBA | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl24_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=129652">QR16554
							- Executive Cabin Crew | Qatar Executive | Doha</a></td>
					<td>Qatar Executive</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl25_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=139291">QR20264
							- Cabin Crew Recruitment Event Warsaw | 31st March 2019 | Qatar
							Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="alt-data">
					<td><a id="dgVacancyList_ctl26_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=138271">QR19937
							- Cabin Crew Recruitment Event Toronto | TBA | Qatar Airways |
							Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
				<tr class="data">
					<td><a id="dgVacancyList_ctl27_hlnkVacTitle"
						class="actionlink" href="VacancyDetail.aspx?VacancyID=70101">QR4263
							- Rejoining Qatar Airways Cabin Crew | Qatar Airways | Doha</a></td>
					<td>Qatar Airways</td>
					<td>Cabin Crew</td>
					<td>Middle East | Qatar | Doha</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>