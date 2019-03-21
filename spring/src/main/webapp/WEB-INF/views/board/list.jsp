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
											<tbody>
												<!-- ngRepeat: data in vm.noticeResult -->
												<tr ng-repeat="data in vm.noticeResult" class="ng-scope"
													style="">

													<td class="ng-binding">27</td>
													<td class="txt"><a
														ui-sref="portal.faq.noticeDetail({seq:27})"
														class="ng-binding" href="#/portal/faq/noticeDetail/27">내국인
															관광객 집계를 정교화하기 위해 현지인 관광객 지표 추가</a></td>
													<td class="ng-binding">781</td>
													<td class="ng-binding">2018-12-27</td>

												</tr>
												<!-- end ngRepeat: data in vm.noticeResult -->
											</tbody>
										</table>
									</div>

									<!-- paginate -->
									<div class="paginate mt20">
										<div class="paging">
											<ul uib-pagination="" boundary-links="true"
												num-pages="numpages" total-items="vm.pageTotal"
												max-size="vm.maxSize" ng-model="vm.pageInfo.pageNum"
												class="pagination-sm ng-pristine ng-untouched ng-valid ng-isolate-scope pagination ng-not-empty"
												previous-text="‹" next-text="›" rotate="false"
												first-text="«" last-text="»"
												ng-change="vm.pageChage($event)">
												<!-- ngIf: ::boundaryLinks -->
												<li ng-if="::boundaryLinks"
													ng-class="{disabled: noPrevious()||ngDisabled}"
													class="pagination-first ng-scope disabled"><a href=""
													ng-click="selectPage(1, $event)"
													ng-disabled="noPrevious()||ngDisabled"
													uib-tabindex-toggle="" class="ng-binding"
													disabled="disabled" tabindex="-1">«</a></li>
												<!-- end ngIf: ::boundaryLinks -->
												<!-- ngIf: ::directionLinks -->
												<li ng-if="::directionLinks"
													ng-class="{disabled: noPrevious()||ngDisabled}"
													class="pagination-prev ng-scope disabled"><a href=""
													ng-click="selectPage(page - 1, $event)"
													ng-disabled="noPrevious()||ngDisabled"
													uib-tabindex-toggle="" class="ng-binding"
													disabled="disabled" tabindex="-1">‹</a></li>
												<!-- end ngIf: ::directionLinks -->
												<!-- ngRepeat: page in pages track by $index -->
												<li ng-repeat="page in pages track by $index"
													ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}"
													class="pagination-page ng-scope active"><a href=""
													ng-click="selectPage(page.number, $event)"
													ng-disabled="ngDisabled&amp;&amp;!page.active"
													uib-tabindex-toggle="" class="ng-binding">1</a></li>
												<!-- end ngRepeat: page in pages track by $index -->
												<!-- ngIf: ::directionLinks -->
												<li ng-if="::directionLinks"
													ng-class="{disabled: noNext()||ngDisabled}"
													class="pagination-next ng-scope disabled"><a href=""
													ng-click="selectPage(page + 1, $event)"
													ng-disabled="noNext()||ngDisabled" uib-tabindex-toggle=""
													class="ng-binding" disabled="disabled" tabindex="-1">›</a></li>
												<!-- end ngIf: ::directionLinks -->
												<!-- ngIf: ::boundaryLinks -->
												<li ng-if="::boundaryLinks"
													ng-class="{disabled: noNext()||ngDisabled}"
													class="pagination-last ng-scope disabled"><a href=""
													ng-click="selectPage(totalPages, $event)"
													ng-disabled="noNext()||ngDisabled" uib-tabindex-toggle=""
													class="ng-binding" disabled="disabled" tabindex="-1">»</a></li>
												<!-- end ngIf: ::boundaryLinks -->
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