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
	href="<c:url value="/static/css/alp/ui.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/bootstrap.min.css"/>">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/static/js/Chart.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/views/chart/js/chartController.js"/>"
	type="text/javascript"></script>
</head>


<body>
	<div>
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
				<div id="header" ui-view="header" class="ng-scope">
					<!-- uh -->
					<div class="uh ng-scope">
						<div class="gRt">
							<span class="log"> <!-- <span class="txt"><strong ng-hide="UserInfo.bdipUserId==''">{{ UserInfo.alpUseYn == 'N' ? '준회원 / ' : UserInfo.alpClasNM ? UserInfo.alpClasNM  + ' / ' : '' }}{{UserInfo.userNm}}{{ UserInfo.alpClasNM ? '(' + UserInfo.alpClasNM + ')' : ''}}</strong></span></span> -->
								<span class="txt"><strong
									ng-hide="UserInfo.bdipUserId==''" class="ng-binding">프리미엄
										/ </strong></span></span> <a href="javascript:;" ng-show="UserInfo.bdipUserId!=''"
								class="btn" ng-click="logOutClick()">로그아웃</a>
							<!-- <a href="javascript:;" class="btn Help" ng-click="onTourHelp('helpPopup');">도움말</a> -->

						</div>
					</div>

					<!-- mh -->
					<div class="mh ng-scope">
						<h1>
							<a href="/bdip/index.html"><img
								src="../../assets/img/alp/common/bigsight_logo.png"
								alt="KT BigSight">KT BigSight</a><a href="#/alp/dashboard"
								ui-sref="alp.dashboard"><img
								src="../../assets/img/alp/common/logo.png" alt="LplP 생활인구솔루션">ㅣLplP
								생활인구솔루션</a>
						</h1>
						<!-- gnb -->
						<div class="gnb">
							<h2 class="hidden">주요메뉴</h2>
							<ul id="gnbNavi">
								<!-- ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope selected" style=""><strong><a
										href="#/alp/dashboard" ui-sref="alp.dashboard"><span
											ng-bind="menu.title" class="ng-binding">생활인구현황</span></a></strong></li>
								<!-- end ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope"><strong><a
										href="#/alp/mapservice" ui-sref="alp.mapservice"><span
											ng-bind="menu.title" class="ng-binding">GIS분석</span></a></strong></li>
								<!-- end ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope"><strong><a
										href="#/alp/sidoStatus" ui-sref="alp.sidoStatus"><span
											ng-bind="menu.title" class="ng-binding">광역시도현황</span></a></strong></li>
								<!-- end ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope"><strong><a
										href="#/alp/sggStatus" ui-sref="alp.sggStatus"><span
											ng-bind="menu.title" class="ng-binding">지자체별현황</span></a></strong></li>
								<!-- end ngRepeat: menu in pvm.menuList -->
							</ul>

						</div>
					</div>
				</div>

				<div id="body" ui-view="body" class="ng-scope">

					<style type="text/css" class="ng-scope">
</style>

					<!-- 생활인구 현황 -->
					<div class="mainCon ng-scope">
						<div class="serviceDiv">

							<!-- Bar Chart -->

							<div class="bg ng-scope">
								<div class="mainCon">
									<div class="serviceDiv">
										<!-- ngInclude:  -->
										<ng-include
											src="'../../components/alp/dashboard/dashboard_top.html'"
											class="ng-scope" style=""><!-- 대쉬보드상단  -->

										<div class="alp_dashboard_top_01 ng-scope">
											<li><img src="../../assets/img/alp/main/apl_icon_01.png"></li>
											<li>
												<dd class="alp_dashboard_dd1">
													<span class="alp_dashboard_text_01 ng-binding">55</span><span
														class="alp_dashboard_text_02 ng-binding">백만명</span>
												</dd>
												<dd class="alp_dashboard_dd2">
													<span class="alp_dashboard_text_03">내국인 생활인구수</span>
												</dd>
											</li>
										</div>
										<div class="alp_dashboard_top_02 ng-scope">
											<li><img src="../../assets/img/alp/main/apl_icon_02.png"></li>
											<li>
												<dd class="alp_dashboard_dd1">
													<span class="alp_dashboard_text_01 ng-binding">1</span><span
														class="alp_dashboard_text_02 ng-binding">백만명</span>
												</dd>
												<dd class="alp_dashboard_dd2">
													<span class="alp_dashboard_text_04">외국인 생활인구수(장기)</span>
												</dd>
											</li>
										</div>
										<div class="alp_dashboard_top_02 ng-scope">
											<li><img src="../../assets/img/alp/main/apl_icon_03.png"></li>
											<li>
												<dd class="alp_dashboard_dd1">
													<span class="alp_dashboard_text_01 ng-binding">54</span><span
														class="alp_dashboard_text_02 ng-binding">만명</span>
												</dd>
												<dd class="alp_dashboard_dd2">
													<span class="alp_dashboard_text_05">외국인 생활인구수(단기)</span>
												</dd>
											</li>
										</div>
										<!-- 대쉬보드상단  --></ng-include>
										<div id="contents">
											<div class="search">
												<table class="srch_table">
													<colgroup>
														<col width="10%">
														<col width="12%">
														<col width="*">
													</colgroup>
													<tbody>
														<tr>
															<th>조회기준 <select id="rank_year" ng-model="vm.search"
																class="apl_dashboard_search ng-pristine ng-untouched ng-valid ng-not-empty">
																	<option value="">::연월선택::</option>
																	<!-- ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201902" class="ng-binding ng-scope" style="">2019년02월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201901" class="ng-binding ng-scope">2019년01월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201812" class="ng-binding ng-scope">2018년12월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201811" class="ng-binding ng-scope">2018년11월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201810" class="ng-binding ng-scope">2018년10월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201809" class="ng-binding ng-scope">2018년09월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201808" class="ng-binding ng-scope">2018년08월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201807" class="ng-binding ng-scope">2018년07월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201806" class="ng-binding ng-scope">2018년06월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201805" class="ng-binding ng-scope">2018년05월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201804" class="ng-binding ng-scope">2018년04월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
																	<option  
																		value="201803" class="ng-binding ng-scope">2018년03월</option>
																	<!-- end ngRepeat: item in vm.yearMonthInfoList -->
															</select>
															</th>
															<td></td>
														</tr>
													</tbody>
												</table>

												<!-- search_button -->
												<div class="button" >
													<a id="doSearch"class="btn1 posRt">조회</a>
												</div>
												
												<!-- //search_button -->
											</div>
											<div id="tab0">
												<div class="reportpopup body-cont" style="width: 1080px;">
													<h1 class="ng-binding">전국 업종 현황</h1>
													<!-- {{vm.dashboardSumryAlp}} -->
													<div class="guideCont">
														<!-- 타이틀 -->
														<!-- 전체그래프 -->
														<div class="titwrap full">
															<h3 class="tit2">업종 소분류</h3>
														</div>
														<div class="graph-box full mt15">
															<ul>
																<li>
																	<div class="graph" style="height: 230px;">
																		<div style="width: 995px;" id="canvasReset">
																			<iframe class="chartjs-hidden-iframe"
																				style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
																			<canvas height="176" width="995" id="canvas"
																				style="padding: 10px 0px 0px; display: block; width: 995px; height: 176px;">
																			</canvas>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
														<!-- 전체그래프 -->
														<!-- 전체그래프 -->
														<div class="titwrap full">
															<h3 class="tit2">외국인 생활인구</h3>
														</div>
														<div class="graph-box full mt15">
															<ul>
																<li>
																	<div class="graph" style="height: 230px;">
																		<div style="width: 995px;">
																			<iframe class="chartjs-hidden-iframe"
																				style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
																			<canvas height="176" width="995"
																				class="chart chart-bar ng-isolate-scope"
																				style="padding: 10px 0px 0px; display: block; width: 995px; height: 176px;"
																				chart-series="wcntyFornAlpStatsSeries"
																				chart-colors="wcntyFornAlpStatsColor"
																				chart-options="wcntyFornAlpStatsOption"
																				chart-labels="vm.wcntyFornAlpStatsLabel"
																				chart-data="vm.wcntyFornAlpStatsData">
												</canvas>
																		</div>
																	</div>
																</li>
															</ul>
														</div>


													</div>

												</div>
												<!-- 체크박스 테스트-->
												<!-- ngInclude:  -->
												<ng-include
													src="'../../components/alp/dashboard/dashboard_city.html'"
													class="ng-scope" style=""> <!-- 타이틀 -->
												<div class="apl_Metropolitan_text_01 ng-scope">
													<img src="../../assets/img/alp/main/apl_title_01.png">
												</div>
												<!-- 타이틀 --> <!-- 서울 ~ 경남 반복문 --> <!-- ngRepeat: x in sidoList -->
												<!-- 시별 라인 리스트 -->
												<div class="apl_Metropolitan_box">
													<ul class="apl_Metropolitan_title_01">
														<li class="apl_Metropolitan_text_02 ng-binding">서울특별시</li>
														<li class="apl_Metropolitan_text_03 ng-binding">Seoul</li>
													</ul>
													<ul class="apl_Metropolitan_blank">
														<div class="apl_Metropolitan_box_top_01">내국인</div>
														<div class="apl_Metropolitan_box_bg">
															<li class="apl_Metropolitan_line_01"><span
																class="apl_Metropolitan_text_04">거주인구 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">5,584천명</span>
																<span class="apl_Metropolitan_text_04">방문인구 :</span><span
																class="apl_Metropolitan_text_05 ng-binding">4,970천명</span>
															</li>
															<li class="apl_Metropolitan_line_02"><span
																class="apl_Metropolitan_text_06">주민등록 인구대비</span></li>
															<li><span><img
																	src="../../assets/img/alp/main/apl_icon_04.png"></span>
																<!-- ngIf: vm.nativeResnoPopulNum[x.even] > 100 --> <span
																ng-if="vm.nativeResnoPopulNum[x.even] > 100"
																class="apl_Metropolitan_text_07 ng-binding ng-scope"
																style="">107.43%</span> <!-- end ngIf: vm.nativeResnoPopulNum[x.even] > 100 -->
																<!-- ngIf: vm.nativeResnoPopulNum[x.even] < 100 --> <!-- ngIf: vm.nativeResnoPopulNum[x.even] > 100 -->
																<span ng-if="vm.nativeResnoPopulNum[x.even] > 100"
																class="ng-scope" style=""><img
																	src="../../assets/img/alp/main/apl_icon_up.png"></span>
																<!-- end ngIf: vm.nativeResnoPopulNum[x.even] > 100 -->
																<!-- ngIf: vm.nativeResnoPopulNum[x.even] < 100 --> <!-- ngIf: vm.nativeResnoPopulNum[x.even] == 100 -->
															</li>
														</div>
														<div class="apl_Metropolitan_box_bottom"></div>
													</ul>
													<ul class="apl_Metropolitan_blank">
														<div class="apl_Metropolitan_box_top_02">외국인</div>
														<div class="apl_Metropolitan_box_bg">
															<li class="apl_Metropolitan_line_01"><span
																class="apl_Metropolitan_text_04">장기체류 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">378천명</span>
																<span class="apl_Metropolitan_text_04">단기체류 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">183천명</span>
															</li>
															<li class="apl_Metropolitan_line_02"><span
																class="apl_Metropolitan_text_06">국적별 Top3(십명)</span></li>
															<li>
																<!-- 국가별 탑3 -->
																<div>
																	<ul>

																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="중국"><img
																				ng-src="../../assets/img/alp/flag/China.png"
																				src="../../assets/img/alp/flag/China.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">27,022</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">7,344</li>
																	</ul>
																	<ul>
																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="미국"><img
																				ng-src="../../assets/img/alp/flag/United-States-of-America.png"
																				src="../../assets/img/alp/flag/United-States-of-America.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">4,268</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">2,031</li>
																	</ul>
																	<ul>
																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="태국"><img
																				ng-src="../../assets/img/alp/flag/Thailand.png"
																				src="../../assets/img/alp/flag/Thailand.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">200</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">2,080</li>
																	</ul>
																</div> <!-- 국가별 탑3 -->
															</li>
														</div>
														<div class="apl_Metropolitan_box_bottom"></div>
													</ul>
												</div>
												<!-- 시별 라인 리스트 --> <!-- 시별 라인 리스트 --> <!-- 시별 라인 리스트 --> <!-- end ngRepeat: x in sidoList -->
												<!-- 시별 라인 리스트 --> <!-- 시별 라인 리스트 --> <!-- end ngRepeat: x in sidoList -->
												<!-- 서울 ~ 경남 반복문 --> <!-- 제주 라인 리스트 -->
												<div class="apl_Metropolitan_box ng-scope">
													<ul class="apl_Metropolitan_title_01">
														<li class="apl_Metropolitan_text_02">제주특별자치도</li>
														<li class="apl_Metropolitan_text_03">Jeju</li>
													</ul>
													<ul class="apl_Metropolitan_blank">
														<div class="apl_Metropolitan_box_top_01">내국인</div>
														<div class="apl_Metropolitan_box_bg">
															<li class="apl_Metropolitan_line_01"><span
																class="apl_Metropolitan_text_04">거주인구 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">561천명</span>
																<span class="apl_Metropolitan_text_04">방문인구 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">403천명</span>
															</li>
															<li class="apl_Metropolitan_line_02"><span
																class="apl_Metropolitan_text_06">주민등록 인구대비</span></li>
															<li><span><img
																	src="../../assets/img/alp/main/apl_icon_04.png"></span>
																<!-- ngIf: vm.nativeResnoPopulNum[16] > 100 --> <span
																ng-if="vm.nativeResnoPopulNum[16] > 100"
																class="apl_Metropolitan_text_07 ng-binding ng-scope"
																style="">145.09%</span> <!-- end ngIf: vm.nativeResnoPopulNum[16] > 100 -->
																<!-- ngIf: vm.nativeResnoPopulNum[16] < 100 --> <!-- ngIf: vm.nativeResnoPopulNum[16] > 100 -->
																<span ng-if="vm.nativeResnoPopulNum[16] > 100"
																class="ng-scope" style=""><img
																	src="../../assets/img/alp/main/apl_icon_up.png"></span>
																<!-- end ngIf: vm.nativeResnoPopulNum[16] > 100 --> <!-- ngIf: vm.nativeResnoPopulNum[16] < 100 -->
																<!-- ngIf: vm.nativeResnoPopulNum[16] == 100 --></li>
														</div>
														<div class="apl_Metropolitan_box_bottom"></div>
													</ul>
													<ul class="apl_Metropolitan_blank">
														<div class="apl_Metropolitan_box_top_02">외국인</div>
														<div class="apl_Metropolitan_box_bg">
															<li class="apl_Metropolitan_line_01"><span
																class="apl_Metropolitan_text_04">장기체류 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">24천명</span>
																<span class="apl_Metropolitan_text_04">단기체류 :</span> <span
																class="apl_Metropolitan_text_05 ng-binding">43천명</span></li>
															<li class="apl_Metropolitan_line_02"><span
																class="apl_Metropolitan_text_06">국적별 Top3(십명)</span></li>
															<li>
																<div>
																	<ul>
																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="중국"><img
																				src="../../assets/img/alp/flag/China.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">1,175</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">3,222</li>
																	</ul>
																	<ul>
																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="태국"><img
																				src="../../assets/img/alp/flag/Thailand.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">15</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">328</li>
																	</ul>
																	<ul>
																		<li class="apl_Metropolitan_country"><a
																			class="tooltip" aria-label="베트남"><img
																				src="../../assets/img/alp/flag/Vietnam.png"></a></li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">장기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">298</li>
																	</ul>
																	<ul class="apl_Metropolitan_country_01">
																		<li class="apl_Metropolitan_text_08">단기</li>
																		<li class="apl_Metropolitan_text_09 ng-binding">31</li>
																	</ul>
																</div>
															</li>
														</div>
														<div class="apl_Metropolitan_box_bottom"></div>
													</ul>
												</div>
												<!-- 제주 라인 리스트 --> <!-- 광역시도 인구 --></ng-include>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //생활인구 현황 -->
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