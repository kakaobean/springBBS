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
									공지사항 <span class="empPhrase">kt BigSight의 소식을 한눈에
										전해드립니다.</span>
								</h2>

								<div class="conDiv mt35">

									<div class="viewForm1">
										<table summary="공지사항 상세보기">
											<caption>공지사항 상세</caption>
											<colgroup>
												<col width="*">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">
														<div class="eventTit">
															<p class="txt ng-binding">${viewData.title}</p>
															<p class="txt-fR">
																<span class="date">${viewData.writeDate}</span> 
																<span class="count">${viewData.viewCnt}</span>
															</p>
														</div>
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="viewDiv">
														<div class="txt">

															<textarea id="txt_sbst" ng-model="vm.detailData.sbst"
																disabled="disabled"
																style="width: 99%; height: 270px; overflow: auto;"
																class="ng-pristine ng-untouched ng-valid ng-not-empty">${viewData.body}</textarea>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>

									<!-- 버튼 -->
									<div class="btn-wrap taC mt20">
										<a ng-click="vm.backListClick()" href="javascript:;"
											class="form_btn">목록</a>
									</div>

									<div class="listForm2 mt50">
										<table summary="이전 다음 글 보기">
											<caption>내용 보기</caption>
											<colgroup>
												<col width="12%">
												<col width="*">
												<col width="12%">
												<col width="9%">
											</colgroup>
											<tbody>

												<!-- ngRepeat: d in vm.preNextDatas | filter : {type : 'p'} as p -->
												<tr class="prvLine ng-scope"
													ng-repeat="d in vm.preNextDatas | filter : {type : 'p'} as p"
													style="">
													<th scope="row"><span>이전글</span></th>
													<td class="txt"><a href="javascript:;"
														ng-click="vm.reloadDetail(24)" class="ng-binding">[시스템
															정기점검 공지] 2018.04.19(목) 18:00~20:00</a></td>
													<td class="ng-binding"></td>
													<td class="ng-binding"></td>

												</tr>
												<!-- end ngRepeat: d in vm.preNextDatas | filter : {type : 'p'} as p -->
												<!-- ngIf: p.length==0 -->

												<!-- ngRepeat: d in vm.preNextDatas | filter : {type : 'n'} as f -->
												<tr class="nxtLine ng-scope"
													ng-repeat="d in vm.preNextDatas | filter : {type : 'n'} as f"
													style="">

													<th scope="row"><span>다음글</span></th>
													<td class="txt"><a href="javascript:;"
														ng-click="vm.reloadDetail(26)" class="ng-binding">[시스템
															정기점검 공지] 2018.11.23(금) 19:00~23:00</a></td>
													<td class="ng-binding"></td>
													<td class="ng-binding"></td>

												</tr>
												<!-- end ngRepeat: d in vm.preNextDatas | filter : {type : 'n'} as f -->
												<!-- ngIf: f.length==0 -->

												<!-- 
							<tr class="prvLine">
								<th scope="row"><span>이전글</span></th>
								<td class="txt">이전글이 없습니다.</td>
								<td>2006-07-25</td>
								<td>25</td>
							</tr>
							<tr class="nxtLine">
								<th scope="row"><span>다음글</span></th>
								<td class="txt"><a href="#">익스플로러 11에서 서비스 이용방법 안내
										내용입니다.</a></td>
								<td>2005-06-24</td>
								<td>1225</td>
							</tr>
							 -->
											</tbody>
										</table>
									</div>
									<!--//listForm2-->

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