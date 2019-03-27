<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

$().ready(function(){
    $("button").click(function(){
        var id = this.value;
		$.ajax({
			type : "GET",
			url : "/ajaxSuccess/"+id,
// 			data : id,
// 			contentType : "application/json;charset=UTF-8",
			success : function(data){
				var testD = data[0].writedate;
				alert("성공data는 무엇"+data);
				var html = "";
				for(var i = 0; i < data.length; i++){
					console.log(i);
					html += "<tr><td>"+data[i].no+"</td>"; 
					html += "<td>"+data[i].title+"</td>"; 
					html += "<td>"+data[i].viewcnt+"</td>"; 
					html += "<td>"+data[i].writedate+"</td></tr>";
					
				}
				$("#trTest").html(html);
				
			},
			error : function(){
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
		<button id="ajaxBtn" style="border : solid 1px;" value="1">GET 1</button>
		<button id="ajaxBtn" style="border : solid 1px;" value="2">GET 2</button>
		<button id="ajaxBtn" style="border : solid 1px;" value="3">GET 3</button>
		<button id="ajaxBtn" style="border : solid 1px;" value="4">GET 4</button>
	</div>
	<div id="input">여기로</div>
	
			<div class="listForm1">
										<table summary="공지사항의 번호, 제목, 조회수 등록일 목록">
											<caption>공지사항 목록</caption>
											<colgroup>
												<col width="8%">
												<col width="*">
												<col width="10%">
												<col width="12%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">번호</th> 
													<th scope="col">제목</th>
													<th scope="col">조회수</th>
								 					<th scope="col">등록일</th>
												</tr>
											</thead>
											<tbody id="trTest">
												<!-- ngRepeat: data in vm.noticeResult -->
												<!-- end ngRepeat: data in vm.noticeResult -->
											</tbody>
										</table>
									</div>
	
</body>
</html>