<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		var validCheck = false;
		$("#register").click(function() {
			if ($("#id").val() == "") {
				alert("아이디 입력하세요");
			} else if (validCheck == false) {
				alert("중복검사를 해주세요");
			} else if ($("#pw1").val() == "") {
				alert("비번 입력해주세요");
			} else if ($("#pw1").val() != $("#pw2").val()) {
				alert("비번이 일치하지 않습니다.");
			} else if ($("#name").val() == "") {
				alert("이름을 입력해주세요"); 
			} else {
				$("#thisForm").attr({
					"method" : "post",
					"action" : "<c:url value="/registAction"/>"
				}).submit();
			}
		});
		$("#duplicateCheck").click(function() {
			alert();
			validCheck = true;
		});
		// 아작 테스트
		$(".btnSrch").click(function() { 
		    	  		alert(data);
		});
		
		
	});
 
	    var totalData = ${readAllCnt};    // 총 데이터 수
	    var currentPage = 0;
	    var dataPerPage = 10;    // 한 페이지에 나타낼 데이터 수
	    var pageCount = 0;        // 한 화면에 나타낼 페이지 수
	    if((totalData % dataPerPage) > 0){ 
	    	pageCount = Math.floor(totalData / dataPerPage) + 1;
	    } else {
	    	pageCount = (totalData / dataPerPage) ;
	    }
	    if(pageCount > 10){
	    	pageCount = 10;
	    }
	    
	    function paging(totalData, dataPerPage, pageCount, currentPage){
	         
	        console.log("currentPage : " + currentPage);
	   
	        // 총 페이지 수
	        var totalPage = Math.ceil(totalData/dataPerPage);    
	        // 페이지 그룹
	        var pageGroup = Math.ceil(currentPage/pageCount);    
	         
	        console.log("pageGroup : " + pageGroup);
	        
	        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
	        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
	        if(last > totalPage)
	            last = totalPage;
	        var next = last+1;
	        var prev = first-1;
	        
	        console.log("last : " + last);
	        console.log("first : " + first);
	        console.log("next : " + next);
	        console.log("prev : " + prev);
	 
	        var $pingingView = $("#paging");
	        
	        var html = "";
	        
	        if(prev > 0)
	            html += "<a href=# id='prev'><</a> ";
	        
	        var href = '';
	        for(var i=first; i <= last; i++){
// 	        	href = href = '/board/list/'+i;
	        	href = '#';
	            html += "<a  id=" + i + ">" + i + "</a> ";
// 	            html += "<a href="+href +  " id=" + i + ">" + i + "</a> ";
	        }
	        
	        if(last < totalPage)
	            html += "<a href=# id='next'>></a>";
	        
	        $(".pagination-page").html(html);    // 페이지 목록 생성
	        $(".pagination-page").html(html);    // 페이지 목록 생성
	        $(".pagination-page a").css("color", "black");
	        $(".pagination-page a#" + currentPage).css({"text-decoration":"none", 
	                                           "color":"red", 
	                                           "font-weight":"bold"});    // 현재 페이지 표시
	                 
     $.ajax({
                
                type : "GET",
                url : "/ajaxSuccess/"+currentPage,
//                 dataType : "text",
                error : function(){
                    alert('통신실패!!');
                },
                success : function(data){
                	var html = "";
                	var dataTemp = null;
                	dataTemp = data;
                	console.log("dataTemp");
                	console.log(dataTemp);
                	console.log("data");
                	console.log(data);
    				for(var i = 0; i < data.length; i++){
    					console.log(i);
    					html += "<tr><td>"+data[i].no+"</td>"; 
    					html += "<td>"+data[i].title+"</td>"; 
    					html += "<td>"+data[i].viewcnt+"</td>"; 
    					html += "<td>"+data[i].writedate+"</td></tr>";
    					
    				}
    				$("#trTest").html(html);
    				
                	console.log(html);
//                     $("html").html(data) ;
// 	        $("tbody").html(document.querySelectorAll("tbody")[0].innerHTML);
// 					console.log(${boardData});
                }
            });	                                           
	                                           
	        $(".pagination-page a").click(function(){
	            
	            var $item = $(this); 
	            var $id = $item.attr("id");
	            var selectedPage = $item.text();
	            
	            if($id == "next")    selectedPage = next;
	            if($id == "prev")    selectedPage = prev;
	            console.log("클릭했다"+selectedPage);
	            
	          


	            paging(totalData, dataPerPage, pageCount, selectedPage);
	        });
	    }
	    
	    $("document").ready(function(){        
	        paging(totalData, dataPerPage, pageCount, 1);
	    });

</script>
</head>
<body>
	<div>
	
	
		<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->


		<div>
			<!-- s:skip navigation -->
			<div id="skipnavigation">
				<ul class="skip">
					<li><a href="#cBody">본문내용 바로가기</a></li>
					<li><a href="#gnbNavi">메인메뉴 바로가기</a></li>
				</ul>
			</div>
			<!-- e:skip navigation vm.isLogin -->
			<!-- ui-sref="portal.join" -->
			<div id="wrapper">
				<!-- [HEADER] -->
				<jsp:include page="/WEB-INF/views/common/header.jsp" />
				<!-- [HEADER] -->


				<!-- [BODY] -->
				<!-- uiView: body -->
				<div id="cBody" class="cBody ng-scope">
					<div class="cBody ng-scope" id="cBody">

						<div class="container">
							<div class="content">
								<h2>
									게시글<span class="empPhrase">kt BigSight의 소식을 한눈에
										전해드립니다.</span>
								</h2>

								<div class="conDiv mt35">

									<!-- 게시판 검색 -->
									<div class="srchBox taC">
										<form name="" action="" method="get"
											class="ng-pristine ng-valid">
											<fieldset>
												<legend>게시판 검색</legend>
												<select id="sel_searchType"
													ng-model="vm.notreqData.searchType"
													ng-change="vm.selChange()"
													class="ng-pristine ng-untouched ng-valid ng-not-empty">
													<option value="1">제목</option>
													<option value="2">내용</option>
												</select> <input id="txt_search" type="text"
													placeholder="검색어를 입력하세요." ng-model="vm.notreqData.title"
													class="inputTxt ng-pristine ng-untouched ng-valid ng-empty"
													ng-keypress="vm.searchKeypress($event)"> <input
													type="button" ng-hide="UserInfo.posIsttDivCd=='G'"
													class="btnSrch" value="검색" ng-click="vm.searchClick()">
											</fieldset>

										</form>
									</div>
									<!-- // 게시판 검색 -->
									<div class="info-area mt20">
										<div class="info-l">
											<dl class="info-txt">
												<dt>현재 :</dt>
												<dd class="ng-binding">
													<em class="ng-binding">1</em>/1page
												</dd>
											</dl>
										</div>
									</div>

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
<!-- 													<tr> -->
<%-- 														<td>${boardData.no}</td> --%>
<%-- 														<td class="txt"><a href="/board/list/listView/${boardData.rownum}">${boardData.title}</a></td> --%>
<%-- 														<td>${boardData.viewcnt}</td> --%>
<%-- 														<td>${boardData.writedate}</td> --%>
<!-- 													</tr> -->
												<!-- end ngRepeat: data in vm.noticeResult -->
											</tbody>
										</table>
									</div>

									<!-- paginate -->
									<div class="paginate mt20">
										<div class="paging">
											<ul class="pagination-sm ng-pristine ng-untouched ng-valid ng-isolate-scope pagination ng-not-empty"
												previous-text="‹" next-text="›" rotate="false"
												first-text="«" last-text="»"
												ng-change="vm.pageChage($event)">
												<!-- ngIf: ::boundaryLinks -->
												<li class="pagination-page">
												</li>
												<!-- end ngRepeat: page in pages track by $index -->
												<!-- ngIf: ::directionLinks -->
											</ul>

										</div>
									</div>
									<!-- // paginate -->
									<div style="text-align:right;">
										<a type="button" style="border:solid 1px;"class="form_btn" href="/board/write">글 쓰기</a>
									</div>
										

								</div>
								<!--//conDiv-->

							</div>
						</div>
						<!--//container-->
<div id="paging"></div>
					</div>
					<!--//cBody-->
				</div>
				<!-- //[BODY] -->

				<!-- [FOOTER] -->
				<!-- uiView: footer -->
				<div id="footer" class="footDiv ng-scope" ui-view="footer">
					<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

					<div class="footerMenuDiv ng-scope">
						<div class="itop-wrap" style="display: none;">
							<a href="javascript:;" class="iTop"><span>TOP</span></a>
						</div>

						<!-- 	회원폼 작성  -->



						<!-- 	회원폼 작성  -->

						<div class="footerMenu">
							<ul class="link-area">
								<li class="first"><a
									href="javascript:open_window('win','../../components/portal/intro/terms_pop.html', 0, 0, 808, 545, 0, 0, 0, 0, 0);">이용약관</a></li>
								<li class="emp"><a
									href="javascript:open_window('win','../../components/portal/intro/privacy_policy_pop.html', 0, 0, 808, 545, 0, 0, 0, 0, 0);">개인정보처리방침</a></li>
								<li><a href="#/portal/intro/bigsight"
									ui-sref="portal.intro.bigsight">BigSight 소개</a></li>
								<li><a href="#/portal/faq/notice"
									ui-sref="portal.faq.notice">고객센터</a></li>
							</ul>
							<p class="copy1">(주)케이티 대표이사
								황창규&nbsp;&nbsp;사업자등록번호102-81-42945&nbsp;&nbsp;케이티&nbsp;&nbsp;통신판매업신고2002-경기성남-0048</p>
							<address>(13606) 경기도 성남시 분당구 불정로 90 (정자동
								206번지)&nbsp;&nbsp;이메일 bigsight@kt.com</address>
							<p class="copy">Copyright © 2016 kt corp. All rights
								reserved.</p>
						</div>
					</div>
				</div>
				<!-- //[FOOTER] -->

			</div>
		</div>
	</div>
</body>
</html>