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
		$("#form_btn").click(function() {
			$("#thisForm").attr({
				"method" : "post",
				"action" : "<c:url value="/writeAction"/>"
			}).submit();
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
								<h2>글작성</h2>

								<div class="conDiv mt35">


									<div class="cs_faq mt20">
										<div>
										</div>
									</div>

									<div class="title-area mt30">
										<h3 class="fL">문의내용 작성</h3>
										<span class="txt-right"><span class="asterisk mr3">필수입력항목</span>는
											필수 입력사항입니다.</span>
									</div>
									<form  id = "thisForm">
									<div class="listForm3 mt10">
										<table summary="문의내용 입력">
											<caption>문의내용 입력</caption>

											<colgroup>
												<col width="17%">
												<col width="*">
												<col width="15%">
												<col width="*">
											</colgroup>
											<tbody>
												<tr>
													<th>문의자명</th>
													<td class="ng-binding"></td>
													<th>이메일</th>
													<td class="ng-binding">91209***@ktfriend.com</td>
												</tr>
												<tr>
													<th>문의제목<span class="asterisk">필수입력항목</span></th>
													<td class="tal" colspan="3"><input id="inquery_title"
														ng-model="vm.inquiryData.bdipInqrTitleNm" type="text"
														name="title"  title="문의제목입력" style="width: 99%;"
														class="ng-pristine ng-untouched ng-valid ng-empty"></td>
												</tr>
												<tr>
													<th>문의내용<span class="asterisk">필수입력항목</span></th>
													<td class="tal" colspan="3"><textarea id="inquery_txt" 
															 maxlength="500" 
															name="body" style="width: 99%; height: 200px;"
															placeholder="500자 이내로 입력해 주세요."
															class="ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength"></textarea></td>
												</tr>
												<tr>
													<th>파일첨부</th>
													<td colspan="3">
														<div class="btn-wrap">
															<a href="#" class="fL file_btn">파일등록</a> <input
																name="Filedata" tabindex="-1" id="fileup"
																ng-file-select="vm.onfileSelect($files)"
																style="width: 60px; height: 22px; margin: 0px; padding: 0px; top: 0px; left: 0px; position: absolute; cursor: pointer; opacity: 0;"
																type="file">
															<div class="help fL ml10 mt4">※ 10MByte 이하의 파일만
																가능합니다.</div>
														</div>
														<div class="file-w ng-hide"
															ng-show="vm.selectedfile != null">
															<a class="file ng-binding"></a><span
																class="file-size ng-binding">(0MB)</span>
														</div>
													</td>

												</tr>
											</tbody>
										</table>
									</div>
									</form>
									<!-- 버튼 -->
									<div class="btn-wrap taC mt20">
										<button type="button" id="form_btn">등록</button> 
										<a href="javascript:;" class="form_btn cancel">취소</a>
									</div>
<!-- 									<div class="btn-wrap taC mt20"> -->
<%-- 										<a href="<c:url value="/writeAction"/>" class="form_btn" ">등록</a>  --%>
<!-- 										<a href="javascript:;" class="form_btn cancel">취소</a> -->
<!-- 									</div> -->

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