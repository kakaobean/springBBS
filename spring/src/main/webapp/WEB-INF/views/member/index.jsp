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
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
</head>
<body>

	<div ui-view="" class="ng-scope" style="">
		<div ng-hide="pvm.isHide" class="portal_common ng-scope" style="">
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
				<jsp:include page="/WEB-INF/views/common/header.jsp"/>
				<!-- [HEADER] -->
				<!-- uiView: header -->

				<!-- [BODY] -->
				<!-- uiView: body -->
				<div id="cBody" class="cBody ng-scope" ui-view="body">
					<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

					<div class="mainBody ng-scope">

						<div class="mainVisualDiv">
							<div class="visualDiv">

								<!-- 지난달/지난주 -->
								<!-- <div class="fright"><span><a href="#" class="month on">지난달</a></span><span><a href="#" class="week">지난주</a></span></div> -->

								<div class="top-wrap">
									<!-- 슬라이드 -->
									<div class="visual_list">
										<div class="bx-wrapper" style="max-width: 100%;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 324px;">
												<ul style="width: 515%; position: relative; left: -1060px;">
													<li class="visual-view visual03 bx-clone"
														style="float: left; list-style: none; position: relative; width: 1060px;">
														<div class="top-logo">
															<img
																src="https://bigsight.kt.com/bdip/assets/img/portal/common/bigsight_logo.png"
																alt="KT BigSight">
														</div>
														<p class="top-logo-txt">
															KT의 통신데이터, BC카드 등 관계사 다양한 Data Source를 통해 얻어지는<br>BigData를
															활용하여 여러분의 정책, 비지니스에 Insight를 제공하고 있습니다.
														</p>
														<div class="top-logo-banner">
															<div class="banner-box trip"
																ng-click="vm.linkHome('tour');" style="cursor: pointer;">
																<div class="trip-icon">
																	TrIP<br>관광솔루션
																</div>
															</div>
															<div class="banner-box grip"
																ng-click="vm.linkHome('trade');"
																style="cursor: pointer;">
																<div class="grip-icon">
																	GrIP<br>상권솔루션
																</div>
															</div>
															<div class="banner-box alp"
																ng-click="vm.linkHome('alp');" style="cursor: pointer;">
																<div class="alp-icon">
																	ALP<br>생활인구솔루션
																</div>
															</div>
															<div class="banner-box datastore last"
																ng-click="vm.linkHome('portal.datastore.openapi');"
																style="cursor: pointer;">
																<div class="datastore-icon">데이터스토어</div>
															</div>
														</div>
													</li>
													<li class="visual-view visual01 on"
														style="float: left; list-style: none; position: relative; width: 1060px;">
														<!-- ngIf: vm.topBannerFstIndex==0 -->
														<div ng-if="vm.topBannerFstIndex==0" class="ng-scope">
															<div class="top-suject">
																<span>전월에 전국민들은 어디로 관광을 많이 했을까?</span>
															</div>
															<div class="top-result">
																<div class="top_chart_rankingBg">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding"
																			title="종로1.2.3.4가동">종로1.2.3.4가동</span> <span
																			class="txt-right ng-binding">5,135,018명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[3].siterRate+&quot;%&quot;}"
																			style="left: 5.40134%;"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[3].siterRate+&quot;%&quot;}"
																			style="left: 5.40134%;">
																			<span>전국평균</span>466,855명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[0].siterRate+&quot;%&quot;}"
																			style="width: 59.4102%;">59.4102222709689%</div>
																	</div>
																</div>
																<div class="top_chart_rankingBg">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding"
																			title="고양 관광특구">고양 관광특구</span> <span
																			class="txt-right ng-binding">8,643,324명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[4].siterRate+&quot;%&quot;}"
																			style="left: 0.842963%;"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[4].siterRate+&quot;%&quot;}"
																			style="left: 0.842963%;">
																			<span>전국평균</span>72,860명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[1].siterRate+&quot;%&quot;}"
																			style="width: 100%;">100%</div>
																	</div>
																</div>
																<div class="top_chart_rankingBg last">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding"
																			title="광주프린지페스티벌 2018">광주프린지페스티벌 2018</span> <span
																			class="txt-right ng-binding">7,736,547명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[5].siterRate+&quot;%&quot;}"
																			style="left: 1.41965%;"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[5].siterRate+&quot;%&quot;}"
																			style="left: 1.41965%;">
																			<span>전국평균</span>122,705명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[2].siterRate+&quot;%&quot;}"
																			style="width: 89.5089%;">89.50893198033533%</div>
																	</div>
																</div>
															</div>
														</div> <!-- end ngIf: vm.topBannerFstIndex==0 --> <!-- ngIf: vm.topBannerFstIndex==1 -->
														<!-- ngIf: vm.topBannerFstIndex==2 --> <!-- ngIf: vm.topBannerFstIndex==3 -->
														<!-- ngIf: vm.topBannerFstIndex==4 -->

														<div class="top-icon">
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==0 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=0;" href="#/portal"
																class="on">
																<div class="icon-bg icon-img01"></div>
																<p>관광객</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==1 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=1;" href="#/portal">
																<div class="icon-bg icon-img02"></div>
																<p>관광지</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==2 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=2;" href="#/portal">
																<div class="icon-bg icon-img03"></div>
																<p>축제</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==3 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=3;" href="#/portal">
																<div class="icon-bg icon-img04"></div>
																<p>보행인구</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==4 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=4;" class="last"
																href="#/portal">
																<div class="icon-bg icon-img05"></div>
																<p>매출</p>
															</div>
														</div>
													</li>
													<li class="visual-view visual02"
														style="float: left; list-style: none; position: relative; width: 1060px;">
														<p class="visual_ktbigsight_map_title">내국인, 외국인 관광객
															GIS 분석</p>
														<div class="visual_ktbigsight_map">
															<div class="map-area-wrap">
																<div class="map-area-box">
																	<a href="#/portal" ui-sref="portal"
																		ng-class="vm.topBannerThrdIndex==0 ? 'on' : ''"
																		ng-click="vm.topBannerThrdIndex=0" class="on">서울</a>
																</div>
																<div class="map-area-box">
																	<a href="#/portal" ui-sref="portal"
																		ng-class="vm.topBannerThrdIndex==1 ? 'on' : ''"
																		ng-click="vm.topBannerThrdIndex=1">대전</a>
																</div>
																<div class="map-area-box">
																	<a href="#/portal" ui-sref="portal"
																		ng-class="vm.topBannerThrdIndex==2 ? 'on' : ''"
																		ng-click="vm.topBannerThrdIndex=2">부산</a>
																</div>
															</div>

															<!-- ngIf: vm.topBannerThrdIndex==0 -->
															<div ng-if="vm.topBannerThrdIndex==0" class="ng-scope">
																<img
																	src="../../assets/img/portal/main/visual_ktbigsight_map01.png"
																	alt="서울">
															</div>
															<!-- end ngIf: vm.topBannerThrdIndex==0 -->
															<!-- ngIf: vm.topBannerThrdIndex==1 -->
															<!-- ngIf: vm.topBannerThrdIndex==2 -->
														</div>
													</li>
													<li class="visual-view visual03"
														style="float: left; list-style: none; position: relative; width: 1060px;">
														<div class="top-logo">
															<img
																src="https://bigsight.kt.com/bdip/assets/img/portal/common/bigsight_logo.png"
																alt="KT BigSight">
														</div>
														<p class="top-logo-txt">
															KT의 통신데이터, BC카드 등 관계사 다양한 Data Source를 통해 얻어지는<br>BigData를
															활용하여 여러분의 정책, 비지니스에 Insight를 제공하고 있습니다.
														</p>
														<div class="top-logo-banner">
															<div class="banner-box trip"
																ng-click="vm.linkHome('tour');" style="cursor: pointer;">
																<div class="trip-icon">
																	TrIP<br>관광솔루션
																</div>
															</div>
															<div class="banner-box grip"
																ng-click="vm.linkHome('trade');"
																style="cursor: pointer;">
																<div class="grip-icon">
																	GrIP<br>상권솔루션
																</div>
															</div>
															<div class="banner-box alp"
																ng-click="vm.linkHome('alp');" style="cursor: pointer;">
																<div class="alp-icon">
																	ALP<br>생활인구솔루션
																</div>
															</div>
															<div class="banner-box datastore last"
																ng-click="vm.linkHome('portal.datastore.openapi');"
																style="cursor: pointer;">
																<div class="datastore-icon">데이터스토어</div>
															</div>
														</div>
													</li>
													<li class="visual-view visual01 bx-clone"
														style="float: left; list-style: none; position: relative; width: 1060px;">
														<!-- ngIf: vm.topBannerFstIndex==0 -->
														<div ng-if="vm.topBannerFstIndex==0" class="ng-scope">
															<div class="top-suject">
																<span>전월에 전국민들은 어디로 관광을 많이 했을까?</span>
															</div>
															<div class="top-result">
																<div class="top_chart_rankingBg">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding" title=""></span>
																		<span class="txt-right ng-binding">-명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[3].siterRate+&quot;%&quot;}"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[3].siterRate+&quot;%&quot;}">
																			<span>전국평균</span>-명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[0].siterRate+&quot;%&quot;}">%</div>
																	</div>
																</div>
																<div class="top_chart_rankingBg">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding" title=""></span>
																		<span class="txt-right ng-binding">-명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[4].siterRate+&quot;%&quot;}"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[4].siterRate+&quot;%&quot;}">
																			<span>전국평균</span>-명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[1].siterRate+&quot;%&quot;}">%</div>
																	</div>
																</div>
																<div class="top_chart_rankingBg last">
																	<div class="top_chart_datawrap">
																		<span class="txt-left ellipsis ng-binding" title=""></span>
																		<span class="txt-right ng-binding">-명</span>
																	</div>
																	<div class="top_chart_rangeBg">
																		<div class="top_chart_rangeBar"
																			ng-style="{&quot;left&quot;: topBannerSiter[5].siterRate+&quot;%&quot;}"></div>
																		<div class="top_chart_areaAverage ng-binding"
																			ng-style="{&quot;left&quot;: topBannerSiter[5].siterRate+&quot;%&quot;}">
																			<span>전국평균</span>-명
																		</div>
																		<div class="top_chart_rangeData ng-binding"
																			ng-style="{&quot;width&quot;: topBannerSiter[2].siterRate+&quot;%&quot;}">%</div>
																	</div>
																</div>
															</div>
														</div> <!-- end ngIf: vm.topBannerFstIndex==0 --> <!-- ngIf: vm.topBannerFstIndex==1 -->
														<!-- ngIf: vm.topBannerFstIndex==2 --> <!-- ngIf: vm.topBannerFstIndex==3 -->
														<!-- ngIf: vm.topBannerFstIndex==4 -->

														<div class="top-icon">
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==0 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=0;" href="#/portal"
																class="on">
																<div class="icon-bg icon-img01"></div>
																<p>관광객</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==1 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=1;" href="#/portal">
																<div class="icon-bg icon-img02"></div>
																<p>관광지</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==2 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=2;" href="#/portal">
																<div class="icon-bg icon-img03"></div>
																<p>축제</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==3 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=3;" href="#/portal">
																<div class="icon-bg icon-img04"></div>
																<p>보행인구</p>
															</div>
															<div ui-sref="portal"
																ng-class="vm.topBannerFstIndex==4 ? 'on' : ''"
																ng-click="vm.topBannerFstIndex=4;" class="last"
																href="#/portal">
																<div class="icon-bg icon-img05"></div>
																<p>매출</p>
															</div>
														</div>
													</li>
												</ul>
											</div>
											<div
												class="bx-controls bx-has-pager bx-has-controls-direction bx-has-controls-auto">
												<div class="bx-pager bx-default-pager">
													<div class="bx-pager-item">
														<a href="" data-slide-index="0"
															class="bx-pager-link active">1</a>
													</div>
													<div class="bx-pager-item">
														<a href="" data-slide-index="1" class="bx-pager-link">2</a>
													</div>
													<div class="bx-pager-item">
														<a href="" data-slide-index="2" class="bx-pager-link">3</a>
													</div>
												</div>
												<div class="bx-controls-direction">
													<a class="bx-prev" href="">Prev</a><a class="bx-next"
														href="">Next</a>
												</div>
												<div class="bx-controls-auto">
													<div class="bx-controls-auto-item">
														<a class="bx-start active" href="">Start</a>
													</div>
													<div class="bx-controls-auto-item">
														<a class="bx-stop" href="">Stop</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!--//mainVisualDiv-->

						<div class="mainCon">
							<div class="serviceDiv">

								<div class="soluitonBox">
									<div class="soluiton">
										<p class="soluiton_logo">
											<img src="../../assets/img/portal/main/logo_trip.png"
												alt="TrIP (관광분석솔루션)">
										</p>
										<p class="soluiton_bline"></p>
										<ul class="sol-cont">
											<li class="sol-icon-wrap"><img
												src="../../assets/img/portal/main/trip_icon.png"
												alt="TrIP (관광분석솔루션)"></li>
											<li>
												<p class="soluiton_name">전국 관광분석</p>
												<p class="soluiton_stxt">
													BigData 기반한<br>관광, 축제 정책수립 / 수요예측 및<br>관광객 유동인구
													분석 / 레포트
												</p>
												<p class="btn-sol-detalil">
													<a href="#/portal/intro/tour" ui-sref="portal.intro.tour"
														class="btn-act">서비스소개</a>
												</p>
											</li>
										</ul>
										<p class="sol-btn-wrap">
											<a href="" class="sol-btn1"><strong>TrIP</strong>
												바로가기</a>
										</p>
									</div>

									<div class="soluiton">
										<p class="soluiton_logo">
											<img src="../../assets/img/portal/main/logo_grip.png"
												alt="GrIP (상권분석솔루션)">
										</p>
										<p class="soluiton_bline"></p>
										<ul class="sol-cont">
											<li class="sol-icon-wrap"><img
												src="../../assets/img/portal/main/grip_icon.png"
												alt="GrIP (상권분석솔루션)"></li>
											<li>
												<p class="soluiton_name">지역 상권분석</p>
												<p class="soluiton_stxt">
													고객의 지역상권 환경 이해 및<br>주요 경쟁사 환경 모니터링<br>알림기능
												</p>
												<p class="btn-sol-detalil">
													<a href="#/portal/intro/trade" ui-sref="portal.intro.trade"
														class="btn-act">서비스소개</a>
												</p>
											</li>
										</ul>
										<p class="sol-btn-wrap">
											<a href="" ng-click="vm.linkHome('trade');" class="sol-btn2"><strong>GrIP</strong>
												바로가기</a>
										</p>
									</div>

									<div class="soluiton last-list">
										<p class="soluiton_logo">
											<img src="../../assets/img/portal/main/logo_alp.png"
												alt="MoIP (모바일콘텐츠분석솔루션)">
										</p>
										<p class="soluiton_bline"></p>
										<ul class="sol-cont">
											<li class="sol-icon-wrap"><img
												src="../../assets/img/portal/main/alp_icon.png"
												alt="MoIP (모바일콘텐츠분석솔루션)"></li>
											<li>
												<p class="soluiton_name">전국 생활인구 분석</p>
												<p class="soluiton_stxt">
													Bigdata기반 실제 생활 인구를<br>분석 행정서비스 수요 파악 및<br>도시계획
													수립
												</p>
												<p class="btn-sol-detalil">
													<a href="#/portal/intro/alp" ui-sref="portal.intro.alp"
														class="btn-act">서비스소개</a>
												</p>
											</li>
										</ul>
										<p class="sol-btn-wrap">
											<a href="" ng-click="vm.linkHome('alp');" class="sol-btn3"><strong>ALP</strong>
												바로가기</a>
										</p>
									</div>
								</div>

								<div class="serviceBox">
									<div class="chartWrap">
										<div class="chart_slide_list">
											<div class="bx-wrapper" style="max-width: 100%;">
												<div class="bx-viewport"
													style="width: 100%; overflow: hidden; position: relative; height: 281px;">
													<ul style="width: 515%; position: relative; left: -698px;">
														<li class="chart-view chart_slide05 bx-clone"
															style="float: left; list-style: none; position: relative; width: 698px;">
															<div style="height: 210px; padding: 10px 10px 0px 5px;">
																<canvas height="200" width="700"
																	class="chart chart-pie ng-isolate-scope"
																	style="padding: 10px 0px 0px 5px"
																	chart-colors="listPieChartColor"
																	chart-labels="listBodyRollingSaleLabel"
																	chart-options="listPieChartOptions"
																	chart-data="listBodyRollingSaleData">
							</canvas>
															</div>
															<div class="chart-subject">
																<p class="tit">지난 주에 가장 많은 관광객이 모였던</p>
																<p class="date">
																	<strong class="ng-binding"></strong>의 업종별 매출비율
																</p>
															</div>
														</li>
														<!-- ngIf: listBodyRollingTimeData!=null -->
														<li class="chart-view chart_slide01 ng-scope"
															ng-if="listBodyRollingTimeData!=null"
															style="float: left; list-style: none; position: relative; width: 698px;">
															<div style="height: 210px; padding: 10px 10px 0px 5px;">
																<iframe class="chartjs-hidden-iframe"
																	style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
																<canvas height="195" width="683"
																	class="chart chart-line ng-isolate-scope"
																	style="padding: 10px 0px 0px 5px; display: block; width: 683px; height: 195px;"
																	chart-colors="listLineChartColor"
																	chart-labels="listBodyRollingTimeLabel"
																	chart-options="lineChartOptions"
																	chart-data="listBodyRollingTimeData"
																	chart-series="listBodyRollingTimeSeries">
							</canvas>
															</div>
															<div class="chart-subject">
																<p class="tit">지난 주에 가장 많은 관광객이 모였던</p>
																<p class="date">
																	<strong class="ng-binding">고양 관광특구,광주프린지페스티벌
																		2018</strong>의 시간대비율
																</p>
															</div>
														</li>
														<!-- end ngIf: listBodyRollingTimeData!=null -->




														<!-- ngIf: listBodyRollingSexAgeData!=null -->
														<li class="chart-view chart_slide04 ng-scope"
															ng-if="listBodyRollingSexAgeData!=null"
															style="float: left; list-style: none; position: relative; width: 698px;">
															<div class="dashboard-chart-wrap">
																<div class="dashboard-data-wrap">
																	<iframe class="chartjs-hidden-iframe"
																		style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
																	<canvas id="horizontalBar2" height="128" width="481"
																		class="chart chart-horizontal-bar ng-isolate-scope"
																		style="padding: 10px 0px 0px 5px; display: block; width: 481px; height: 128px;"
																		chart-colors="horizontalColors"
																		chart-labels="listBodyRollingSexAgeLabel"
																		chart-series="listBodyRollingSexAgeSeries"
																		chart-options="horizontalOptions"
																		chart-data="listBodyRollingSexAgeData">
								</canvas>
																</div>

																<div class="dashboard-range-wrap">
																	<div class="range01">남성</div>
																	<div class="range02">여성</div>
																</div>
															</div>
															<div class="dashboard-chart-wrap last">
																<div class="dashboard-legend-wrap"
																	style="padding: 20px 0 0 0;">
																	<div class="legend">
																		<span class="legend01"></span>00~06시
																	</div>
																	<div class="legend">
																		<span class="legend02"></span>06~11시
																	</div>
																	<div class="legend">
																		<span class="legend03"></span>11~14시
																	</div>
																	<div class="legend">
																		<span class="legend04"></span>14~18시
																	</div>
																	<div class="legend">
																		<span class="legend05"></span>18~21시
																	</div>
																	<div class="legend">
																		<span class="legend06"></span>21~24시
																	</div>
																</div>
															</div>
															<div class="chart-subject">
																<p class="tit">지난 주에 가장 많은 보행인구가 모였던</p>
																<p class="date">
																	<strong class="ng-binding">서울특별시 역삼1동</strong> 의
																	남여·시간대비율
																</p>
															</div>
														</li>
														<!-- end ngIf: listBodyRollingSexAgeData!=null -->
														<li class="chart-view chart_slide05"
															style="float: left; list-style: none; position: relative; width: 698px;">
															<div style="height: 210px; padding: 10px 10px 0px 5px;">
																<iframe class="chartjs-hidden-iframe"
																	style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
																<canvas height="195" width="683"
																	class="chart chart-pie ng-isolate-scope"
																	style="padding: 10px 0px 0px 5px; display: block; width: 683px; height: 195px;"
																	chart-colors="listPieChartColor"
																	chart-labels="listBodyRollingSaleLabel"
																	chart-options="listPieChartOptions"
																	chart-data="listBodyRollingSaleData">
							</canvas>
															</div>
															<div class="chart-subject">
																<p class="tit">지난 주에 가장 많은 관광객이 모였던</p>
																<p class="date">
																	<strong class="ng-binding">서울특별시 역삼1동</strong>의 업종별
																	매출비율
																</p>
															</div>
														</li>
														<li class="chart-view chart_slide01 ng-scope bx-clone"
															ng-if="listBodyRollingTimeData!=null"
															style="float: left; list-style: none; position: relative; width: 698px;">
															<div style="height: 210px; padding: 10px 10px 0px 5px;">
																<canvas height="200" width="700"
																	class="chart chart-line ng-isolate-scope"
																	style="padding: 10px 0px 0px 5px"
																	chart-colors="listLineChartColor"
																	chart-labels="listBodyRollingTimeLabel"
																	chart-options="lineChartOptions"
																	chart-data="listBodyRollingTimeData"
																	chart-series="listBodyRollingTimeSeries">
							</canvas>
															</div>
															<div class="chart-subject">
																<p class="tit">지난 주에 가장 많은 관광객이 모였던</p>
																<p class="date">
																	<strong class="ng-binding">,</strong>의 시간대비율
																</p>
															</div>
														</li>
													</ul>
												</div>
												<div
													class="bx-controls bx-has-pager bx-has-controls-direction bx-has-controls-auto">
													<div class="bx-pager bx-default-pager">
														<div class="bx-pager-item">
															<a href="" data-slide-index="0"
																class="bx-pager-link active">1</a>
														</div>
														<div class="bx-pager-item">
															<a href="" data-slide-index="1" class="bx-pager-link">2</a>
														</div>
														<div class="bx-pager-item">
															<a href="" data-slide-index="2" class="bx-pager-link">3</a>
														</div>
													</div>
													<div class="bx-controls-direction">
														<a class="bx-prev" href="">Prev</a><a class="bx-next"
															href="">Next</a>
													</div>
													<div class="bx-controls-auto">
														<div class="bx-controls-auto-item">
															<a class="bx-start active" href="">Start</a>
														</div>
														<div class="bx-controls-auto-item">
															<a class="bx-stop" href="">Stop</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="bdintroWrap">
										<dl>
											<dt>BigData 활용사례 소개</dt>
											<dd>
												<ul class="bulDotList">
													<li><a
														href="javascript:open_window('win','../../components/portal/intro/ktcenter_pop_01.html', 0, 0, 812, 545, 0, 0, 0, 0, 0);">동물감염병
															확산 방지 시스템</a></li>
													<li><a
														href="javascript:open_window('win','../../components/portal/intro/ktcenter_pop_02.html', 0, 0, 812, 466, 0, 0, 0, 0, 0);">서울시
															심야버스 노선 최적화</a></li>
													<li><a
														href="javascript:open_window('win','../../components/portal/intro/ktcenter_pop_03.html', 0, 0, 812, 530, 0, 0, 0, 0, 0);">BigData를
															통한 맞춤형 쇼핑 서비스</a></li>
													<li><a
														href="javascript:open_window('win','../../components/portal/intro/ktcenter_pop_04.html', 0, 0, 812, 818, 0, 0, 0, 0, 0);">로밍
															BigData를 활용</a></li>
												</ul>
											</dd>
										</dl>
									</div>
									<div class="serviceWrap">
										<dl>
											<dt>BigSight 이용안내</dt>
											<dd>
												<ul class="bulDotList">
													<li class="service-icon01"><a
														href="#/portal/intro/ktcenter"
														ui-sref="portal.intro.ktcenter">kt BigData센터 소개</a></li>
													<li class="service-icon02"><a
														href="#/portal/policy/service"
														ui-sref="portal.policy.service">회원등급/서비스</a></li>
													<li class="service-icon03"><a
														href="#/portal/policy/price" ui-sref="portal.policy.price">이용요금
															안내</a></li>
													<li class="service-icon04"><a
														href="#/portal/faq/faqlist" ui-sref="portal.faq.faqlist">자주묻는
															질문(FAQ)</a></li>
												</ul>
											</dd>
										</dl>
									</div>
								</div>

								<div class="boradBox">
									<div class="noticeWrap">
										<div class="btn-more">
											<a href="#/" ui-sref="portal.faq.notice"><img
												src="" alt="더보기"></a>
										</div>
										<dl>
											<dt>공지사항</dt>
											<dd>
												<ul class="bulDotList">
													<!-- ngRepeat: i in vm.listNotice -->
													<li ng-repeat="i in vm.listNotice" class="ng-scope"
														style=""><a href="#/portal/faq/noticeDetail/27"
														ui-sref="portal.faq.noticeDetail({seq:27})"
														class="ng-binding">내국인 관광객 집계를 정교화하기 위해 현지인 관광객 지표 추가</a></li>
													<!-- end ngRepeat: i in vm.listNotice -->
													<li ng-repeat="i in vm.listNotice" class="ng-scope"><a
														href="#/portal/faq/noticeDetail/26"
														ui-sref="portal.faq.noticeDetail({seq:26})"
														class="ng-binding">[시스템 정기점검 공지] 2018.11.23(금)
															19:00~23:00</a></li>
													<!-- end ngRepeat: i in vm.listNotice -->
													<li ng-repeat="i in vm.listNotice" class="ng-scope"><a
														href="#/portal/faq/noticeDetail/25"
														ui-sref="portal.faq.noticeDetail({seq:25})"
														class="ng-binding">[시스템 정기점검 공지] 2018.11.19(월)
															20:00~23:00</a></li>
													<!-- end ngRepeat: i in vm.listNotice -->
													<li ng-repeat="i in vm.listNotice" class="ng-scope"><a
														href="#/portal/faq/noticeDetail/24"
														ui-sref="portal.faq.noticeDetail({seq:24})"
														class="ng-binding">[시스템 정기점검 공지] 2018.04.19(목)
															18:00~20:00</a></li>
													<!-- end ngRepeat: i in vm.listNotice -->
												</ul>
											</dd>
										</dl>
									</div>

									<div class="qnaWrap">
										<div class="tit" style="cursor: pointer;" href="#"
											ng-click="vm.linkHome('portal.faq.inquery')">
											1:1문의하기<br> <span>궁금한 사항을 신속하게 답변드립니다.</span>
										</div>
									</div>

									<div class="apiWrap">
										<div class="btn-more">
											<a ng-click="vm.linkHome('portal.datastore.openapi')"
												style="cursor: pointer;"><img
												src="" alt="더보기"></a>
										</div>
										<dl>
											<dt>Open API</dt>
											<dd>
												<ul class="bulDotList">
													<!-- ngRepeat: i in vm.listOpenapi -->
													<li ng-repeat="i in vm.listOpenapi" class="ng-scope"
														style=""><a href=""
														ng-click="vm.linkHome('portal.datastore.openapi',i.bdipApiId,i.bdipApiPgmId,i.bdipApiApySeq);"
														class="ng-binding">[유동인구] 50셀별 성별 연령별 시간대 유동인구수</a></li>
													<!-- end ngRepeat: i in vm.listOpenapi -->
												</ul>
											</dd>
										</dl>
									</div>

									<div class="bannerWrap">
										<div class="banner01">
											<a ng-click="vm.linkHome('portal.datastore.map')"
												class="bg-peomap" style="cursor: pointer">유동인구 Map</a>
										</div>
										<div class="banner02">
											<a ng-click="vm.linkHome('portal.datastore.dataset')"
												class="bg-dataset" style="cursor: pointer;">데이터셋</a>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!--//mainCon-->

					</div>
					<!--//mainBody-->
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