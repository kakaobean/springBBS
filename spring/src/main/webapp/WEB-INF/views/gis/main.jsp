<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
[uib-typeahead-popup].dropdown-menu {
	display: block;
}
</style>
<style type="text/css">
.uib-time input {
	width: 50px;
}
</style>
<style type="text/css">
.uib-datepicker-popup.dropdown-menu {
	display: block;
	float: none;
	margin: 0;
}

.uib-button-bar {
	padding: 10px 9px 2px;
}
</style>
<style type="text/css">
.uib-position-measure {
	display: block !important;
	visibility: hidden !important;
	position: absolute !important;
	top: -9999px !important;
	left: -9999px !important;
}

.uib-position-scrollbar-measure {
	position: absolute !important;
	top: -9999px !important;
	width: 50px !important;
	height: 50px !important;
	overflow: scroll !important;
}

.uib-position-body-scrollbar-measure {
	overflow: scroll !important;
}
</style>
<style type="text/css">
.uib-datepicker .uib-title {
	width: 100%;
}

.uib-day button, .uib-month button, .uib-year button {
	min-width: 100%;
}

.uib-left, .uib-right {
	width: 100%
}
</style>
<style type="text/css">
.ng-animate.item:not (.left ):not (.right ){
	-webkit-transition: 0s ease-in-out left;
	transition: 0s ease-in-out left
}
</style>
<style type="text/css">
@charset "UTF-8"; 

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not (.ng-hide-animate ){
	display: none !important;
}

ng\:form {
	display: block;
}

.ng-animate-shim {
	visibility: hidden;
}

.ng-anchor {
	position: absolute;
}
</style>
<meta http-equiv="Content-Type"
	content="application/xhtml+xml; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>kt BigSight</title>

<!--layered popup  -->
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/alp/map.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/alp/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/alp/ui.css"/>">
<script src="<c:url value="/static/js/Chart.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/OpenLayers.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/Daum.js"/>" type="text/javascript"></script>
<script src="<c:url value="/views/gis/js/gisController.js"/>" type="text/javascript"></script>
<!--layered popup  -->
<style type="text/css">
.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
}
#map {
	width: 100%;
	height: 824px;
}

.smallmap {
	width: 100%;
	height: 100%;
	position: relative;
	overflow: hidden;
}



.control-zoombar-active {
	background-position: 0 0;
	width: 26px;
	height: 180px
}

.control-zoombar-deactive {
	background-position: -26px 0;
	width: 26px;
	height: 180px
}

.control-traffic-info {
	background-position: 0 -180px;
	width: 142px;
	height: 63px
}

.control-pan {
	background-position: -52px 0;
	width: 60px;
	height: 63px
}

.control-zoomout {
	background-position: -112px 0;
	width: 26px;
	height: 26px
}

.control-zoomin {
	background-position: -112px -26px;
	width: 26px;
	height: 26px
}

.control-distance-selected {
	background-position: -112px -52px;
	width: 26px;
	height: 25px
}

.control-distance-out {
	background-position: -52px -63px;
	width: 26px;
	height: 25px
}

.control-shape-out {
	background-position: -78px -63px;
	width: 26px;
	height: 25px
}

.control-shape-selected {
	background-position: -104px -77px;
	width: 26px;
	height: 25px
}

.control-change:hover {
	background-position: -52px -88px;
	width: 26px;
	height: 24px
}

.control-change {
	background-position: -78px -88px;
	width: 26px;
	height: 24px
}

.control-roadmap-out {
	background-position: -52px -112px;
	width: 55px;
	height: 22px
}

.control-roadmap-selected {
	background-position: -52px -156px;
	width: 55px;
	height: 22px
}

.control-hybrid-out {
	background-position: 0 -265px;
	width: 75px;
	height: 22px
}

.control-hybrid-selected {
	background-position: -52px -134px;
	width: 75px;
	height: 22px
}

.control-satellite-out {
	background-position: 0 -243px;
	width: 55px;
	height: 22px
}

.control-satellite-selected {
	background-position: -55px -243px;
	width: 55px;
	height: 22px
}

.control-measure-distance-start {
	background-position: -75px -265px;
	width: 37px;
	height: 21px
}

.control-measure-area-delete {
	background-position: -107px -112px;
	width: 18px;
	height: 17px
}

.control-measure-distance-delete {
	background-position: -107px -156px;
	width: 18px;
	height: 17px
}

.control-measure-redmouse {
	background-position: -112px -254px;
	width: 11px;
	height: 16px
}

.control-measure-bluemouse {
	background-position: -124px -254px;
	width: 11px;
	height: 16px
}

.control-level1 {
	background-position: -75px -286px;
	width: 39px;
	height: 15px
}

.control-level5 {
	background-position: 0 -287px;
	width: 39px;
	height: 15px
}

.control-level3 {
	background-position: -39px -301px;
	width: 39px;
	height: 15px
}

.control-level13 {
	background-position: -78px -301px;
	width: 39px;
	height: 15px
}

.control-level11 {
	background-position: 0 -302px;
	width: 39px;
	height: 15px
}

.control-level8 {
	background-position: -39px -316px;
	width: 39px;
	height: 15px
}

.control-panleft {
	background-position: -104px -63px;
	width: 8px;
	height: 13px
}

.control-panright {
	background-position: -130px -77px;
	width: 8px;
	height: 13px
}

.control-panleft:hover {
	background-position: -130px -90px;
	width: 8px;
	height: 13px
}

.control-panright:hover {
	background-position: -125px -112px;
	width: 9px;
	height: 12px
}

.control-area-icon {
	background-position: -127px -134px;
	width: 11px;
	height: 11px
}

.control-distance-icon {
	background-position: -127px -145px;
	width: 11px;
	height: 11px
}

.control-zoomslider {
	background-position: -110px -243px;
	width: 20px;
	height: 11px
}

.control-scale {
	background-position: -78px -332px;
	width: 54px;
	height: 10px
}

.control-panup:hover {
	background-position: -125px -156px;
	width: 12px;
	height: 10px
}

.control-panup {
	background-position: -125px -166px;
	width: 12px;
	height: 10px
}

.control-pandown:hover {
	background-position: -125px -124px;
	width: 12px;
	height: 9px
}

.control-pandown {
	background-position: -130px -243px;
	width: 12px;
	height: 9px
}

.control-traffic-bullet {
	background-position: -138px 0;
	width: 4px;
	height: 1px
}

.control-gauge {
	background-position: -130px -103px;
	width: 8px;
	height: 1px
}

.infowin-shadow {
	background-position: 0 0;
	width: 1068px;
	height: 347px
}

.infowin-tip {
	background-position: 0 -347px;
	width: 18px;
	height: 25px
}

.infowin-close {
	background-position: -18px -347px;
	width: 13px;
	height: 13px
}


</style>
<style type="text/css">
.ollehmap {
	cursor: default
}

.ollehmap-boxzoom {
	position: absolute;
	background-color: #fff;
	opacity: .5;
	border: 2px dotted red;
	width: 0;
	height: 0
}
</style>
</head>
<body onload="init()">
	<!-- PORTAL MainView Container -->
	
	
	
	<!-- uiView:  -->
	<div ui-view="" class="ng-scope" style="">
		<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

		<div ng-hide="pvm.isHide" class="service_common tour ng-scope"
			style="">
			<!-- s:skip navigation -->
			<div id="skipnavigation">
				<ul class="skip">
					<li><a href="#maparea">본문내용 바로가기</a></li>
					<li><a href="#gnbNavi">메인메뉴 바로가기</a></li>
				</ul>
			</div>
			<!-- e:skip navigation -->
			<div id="wrap">

				<!-- [HEADER] -->
				<!-- uiView: header -->
				<div id="header" ui-view="header" class="ng-scope">
					<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

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
								src=""
								alt="KT BigSight">KT BigSight</a><a href="#/alp/dashboard"
								ui-sref="alp.dashboard"><img
								src="" alt="LplP 생활인구솔루션">ㅣLplP
								생활인구솔루션</a>
						</h1>
						<!-- gnb -->
						<div class="gnb">
							<h2 class="hidden">주요메뉴</h2>
							<ul id="gnbNavi">
								<!-- ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope" style=""><strong><a
										href="#/alp/dashboard" ui-sref="alp.dashboard"><span
											ng-bind="menu.title" class="ng-binding">생활인구현황</span></a></strong></li>
								<!-- end ngRepeat: menu in pvm.menuList -->
								<li ng-repeat="menu in pvm.menuList" ui-sref-active="selected"
									class="ng-scope selected"><strong><a
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
						<!-- tablist: {{vm.menuList[1].tablist}} -->

						<!-- //gnb -->
						<!--div class="gRt">
					<span class="log">
						<a href="#" ui-sref="{{state.current.name}}" class="btn Help">도움말</a>
						<a href="#" ui-sref="{{state.current.name}}" class="btn Help">전체메뉴</a>
					</span>
				</div-->
					</div>
					<!-- //mh -->

				</div>
				<!-- //[HEADER] -->

				<!-- [BODY] -->
				<!-- uiView: body -->
				
				<div id="body" >
					<!-- 실제 지도 개발시에 min-height 부분을 지우고, 맵화면이 꽉차도록 개발 -->

					<div id="maparea" class="ng-scope"
						style="height: 824px;">

						<!-- Single map 
	<div id="canvas_map">	</div>
	 -->

						<!-- Dual maps -->
						<div id="map_container"
							style="width: calc(100% - 380px); position: absolute; height: 100%; left: 380px;">
								<div class="map_wrap">
						<div id="map" class="smallmap">
							</div>
						</div>
								
							<div id="canvas_map2" style="display: none;"></div>
						</div>

						<!-- Lnb -->
						<!-- Lnb 접기/펼치기 -->
						<!-- Lnb -->
						<!-- Close -->
						<div class="btn-slider" ng-show="vm.showLnb==true"
							style="z-index: 1301;" ng-click="toggleLnb()">
							<a href="#/alp/mapservice" ui-sref="alp.mapservice"></a>
						</div>
						<!-- Open -->
						<div class="btn-slider open ng-hide" ng-show="vm.showLnb==false"
							style="z-index: 1301;" ng-click="toggleLnb()">
							<a href="#/alp/mapservice" ui-sref="alp.mapservice"></a>
						</div>

						<!-- 첫번째 - 지도좌측상단내의 비교용 행정지역 -->
						<!-- 좌측메뉴 open시 margin-left:360px;  close시 margin-left:20px; -->
						<div class="pathW_01" ng-show="vm.showSelectArea==true">
							<ul class="mPath" ng-click="showPathDiv = true">
								<!-- 광역시도1 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_sido ng-binding" ng-bind="target[0].sidoName">시도선택</a></span>
								</li>

								<!-- 시군구1 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_gugun ng-binding" ng-bind="target[0].gunguName">시군구선택</a></span>
								</li>

								<!-- 읍면동1 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_dong ng-binding" ng-bind="target[0].dongName">동선택불가</a></span>
								</li>
							</ul>
							<div class="lyCity ng-hide" ng-show="showPathDiv == true">
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in common.sidoInfoList -->
										<li><a id="cmpr0_sido_0" onclick="doSidoSet()"
											class="ng-binding">서울특별시</a></li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_1" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;부산광역시&quot;,&quot;sidoCode&quot;:&quot;26&quot;}', $event)"
											class="ng-binding">부산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_2" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;대구광역시&quot;,&quot;sidoCode&quot;:&quot;27&quot;}', $event)"
											class="ng-binding">대구광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_3" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;인천광역시&quot;,&quot;sidoCode&quot;:&quot;28&quot;}', $event)"
											class="ng-binding">인천광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_4" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;광주광역시&quot;,&quot;sidoCode&quot;:&quot;29&quot;}', $event)"
											class="ng-binding">광주광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_5" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;대전광역시&quot;,&quot;sidoCode&quot;:&quot;30&quot;}', $event)"
											class="ng-binding">대전광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_6" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;울산광역시&quot;,&quot;sidoCode&quot;:&quot;31&quot;}', $event)"
											class="ng-binding">울산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_7" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;세종특별자치시&quot;,&quot;sidoCode&quot;:&quot;36&quot;}', $event)"
											class="ng-binding">세종특별자치시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_8" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;경기도&quot;,&quot;sidoCode&quot;:&quot;41&quot;}', $event)"
											class="ng-binding">경기도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_9" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;강원도&quot;,&quot;sidoCode&quot;:&quot;42&quot;}', $event)"
											class="ng-binding">강원도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_10" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;충청북도&quot;,&quot;sidoCode&quot;:&quot;43&quot;}', $event)"
											class="ng-binding">충청북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_11" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;충청남도&quot;,&quot;sidoCode&quot;:&quot;44&quot;}', $event)"
											class="ng-binding">충청남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_12" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;전라북도&quot;,&quot;sidoCode&quot;:&quot;45&quot;}', $event)"
											class="ng-binding">전라북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_13" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;전라남도&quot;,&quot;sidoCode&quot;:&quot;46&quot;}', $event)"
											class="ng-binding">전라남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_14" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;경상북도&quot;,&quot;sidoCode&quot;:&quot;47&quot;}', $event)"
											class="ng-binding">경상북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_15" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;경상남도&quot;,&quot;sidoCode&quot;:&quot;48&quot;}', $event)"
											class="ng-binding">경상남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr0_sido_16" href="javascript:;"
											ng-click="onTargetSidoChange(0, '{&quot;sidoName&quot;:&quot;제주특별자치도&quot;,&quot;sidoCode&quot;:&quot;50&quot;}', $event)"
											class="ng-binding">제주특별자치도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSidoChange(0, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in target[0].sigunguInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSigunguChange(0, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list ng-hide" ng-show="activeLNB=='tchart'">
										<!-- ngRepeat: item in target[0].dongInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetDongChange(0, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="close">
									<a href="javascript:;" title="확인" class="ly-btn mt5"
										ng-click="onRegionSubmit()">확인</a> <a href="javascript:;"
										title="취소" class="ly-btn mt5" ng-click="showPathDiv = false;">취소</a>
								</div>
							</div>
							<div class="alp_sch_btn">
								
							</div>
						</div>
						<!-- 검색 +- 초기버튼 -->
						<div class="alp_sch_btn" id="alp_sch_btn_01"
							ng-show="vm.showSelectArea==true" style="">
							<a href="javascript:;" ng-click="subLnb(1, 'max')"></a>
						</div>

						<!--두번째 - 지도좌측상단내의  비교용 행정지역 -->
						<!--지역선택 -->
						<!-- 좌측메뉴 open시 margin-left:380px;  close시 margin-left:20px; -->
						<div class="pathW_02" ng-show="vm.showSelectArea==true">
							<ul class="mPath" ng-click="showPathDiv_01 = true;">
								<!-- 광역시도2 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_sido ng-binding" ng-bind="target[1].sidoName">시도선택</a></span>
								</li>

								<!-- 시군구2 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_gugun ng-binding" ng-bind="target[1].gunguName">시군구선택</a></span>
								</li>

								<!-- 읍면동2 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_dong ng-binding" ng-bind="target[1].dongName">동선택불가</a></span>
								</li>
							</ul>

							<div class="lyCity ng-hide" ng-show="showPathDiv_01 == true">
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope"
											style=""><a id="cmpr1_sido_0" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;서울특별시&quot;,&quot;sidoCode&quot;:&quot;11&quot;}', $event)"
											class="ng-binding">서울특별시</a></li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_1" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;부산광역시&quot;,&quot;sidoCode&quot;:&quot;26&quot;}', $event)"
											class="ng-binding">부산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_2" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;대구광역시&quot;,&quot;sidoCode&quot;:&quot;27&quot;}', $event)"
											class="ng-binding">대구광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_3" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;인천광역시&quot;,&quot;sidoCode&quot;:&quot;28&quot;}', $event)"
											class="ng-binding">인천광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_4" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;광주광역시&quot;,&quot;sidoCode&quot;:&quot;29&quot;}', $event)"
											class="ng-binding">광주광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_5" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;대전광역시&quot;,&quot;sidoCode&quot;:&quot;30&quot;}', $event)"
											class="ng-binding">대전광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_6" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;울산광역시&quot;,&quot;sidoCode&quot;:&quot;31&quot;}', $event)"
											class="ng-binding">울산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_7" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;세종특별자치시&quot;,&quot;sidoCode&quot;:&quot;36&quot;}', $event)"
											class="ng-binding">세종특별자치시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_8" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;경기도&quot;,&quot;sidoCode&quot;:&quot;41&quot;}', $event)"
											class="ng-binding">경기도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_9" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;강원도&quot;,&quot;sidoCode&quot;:&quot;42&quot;}', $event)"
											class="ng-binding">강원도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_10" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;충청북도&quot;,&quot;sidoCode&quot;:&quot;43&quot;}', $event)"
											class="ng-binding">충청북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_11" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;충청남도&quot;,&quot;sidoCode&quot;:&quot;44&quot;}', $event)"
											class="ng-binding">충청남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_12" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;전라북도&quot;,&quot;sidoCode&quot;:&quot;45&quot;}', $event)"
											class="ng-binding">전라북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_13" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;전라남도&quot;,&quot;sidoCode&quot;:&quot;46&quot;}', $event)"
											class="ng-binding">전라남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_14" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;경상북도&quot;,&quot;sidoCode&quot;:&quot;47&quot;}', $event)"
											class="ng-binding">경상북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_15" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;경상남도&quot;,&quot;sidoCode&quot;:&quot;48&quot;}', $event)"
											class="ng-binding">경상남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr1_sido_16" href="javascript:;"
											ng-click="onTargetSidoChange(1, '{&quot;sidoName&quot;:&quot;제주특별자치도&quot;,&quot;sidoCode&quot;:&quot;50&quot;}', $event)"
											class="ng-binding">제주특별자치도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSidoChange(1, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in target[1].sigunguInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSigunguChange(1, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list ng-hide" ng-show="activeLNB=='tchart'">
										<!-- ngRepeat: item in target[1].dongInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetDongChange(1, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="close">
									<a href="javascript:;" title="확인" class="ly-btn mt5"
										ng-click="onRegionSubmit01()">확인</a> <a href="javascript:;"
										title="취소" class="ly-btn mt5"
										ng-click="showPathDiv_01 = false;">취소</a>
								</div>
							</div>

							<!-- 검색 +- 버튼 -->
							<div class="alp_sch_btn">
							</div>
						</div>

						<!--세번째 - 지도좌측상단내의 비교용 행정지역 -->
						<!--지역선택 -->
						<!-- 좌측메뉴 open시 margin-left:360px;  close시 margin-left:20px; -->
						<div class="pathW_03" ng-show="vm.showSelectArea==true">
							<ul class="mPath" ng-click="showPathDiv_02 = true;">
								<!-- 광역시도3 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_sido ng-binding" ng-bind="target[2].sidoName">시도선택</a></span>
								</li>

								<!-- 시군구3 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_gugun ng-binding" ng-bind="target[2].gunguName">시군구선택</a></span>
								</li>

								<!-- 읍면동3 -->
								<li class="nav"><span><a href="javascript:;"
										class="js_dong ng-binding" ng-bind="target[2].dongName">동선택불가</a></span>
								</li>
							</ul>

							<div class="lyCity ng-hide" ng-show="showPathDiv_02 == true">
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope"
											style=""><a id="cmpr2_sido_0" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;서울특별시&quot;,&quot;sidoCode&quot;:&quot;11&quot;}', $event)"
											class="ng-binding">서울특별시</a></li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_1" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;부산광역시&quot;,&quot;sidoCode&quot;:&quot;26&quot;}', $event)"
											class="ng-binding">부산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_2" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;대구광역시&quot;,&quot;sidoCode&quot;:&quot;27&quot;}', $event)"
											class="ng-binding">대구광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_3" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;인천광역시&quot;,&quot;sidoCode&quot;:&quot;28&quot;}', $event)"
											class="ng-binding">인천광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_4" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;광주광역시&quot;,&quot;sidoCode&quot;:&quot;29&quot;}', $event)"
											class="ng-binding">광주광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_5" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;대전광역시&quot;,&quot;sidoCode&quot;:&quot;30&quot;}', $event)"
											class="ng-binding">대전광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_6" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;울산광역시&quot;,&quot;sidoCode&quot;:&quot;31&quot;}', $event)"
											class="ng-binding">울산광역시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_7" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;세종특별자치시&quot;,&quot;sidoCode&quot;:&quot;36&quot;}', $event)"
											class="ng-binding">세종특별자치시</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_8" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;경기도&quot;,&quot;sidoCode&quot;:&quot;41&quot;}', $event)"
											class="ng-binding">경기도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_9" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;강원도&quot;,&quot;sidoCode&quot;:&quot;42&quot;}', $event)"
											class="ng-binding">강원도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_10" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;충청북도&quot;,&quot;sidoCode&quot;:&quot;43&quot;}', $event)"
											class="ng-binding">충청북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_11" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;충청남도&quot;,&quot;sidoCode&quot;:&quot;44&quot;}', $event)"
											class="ng-binding">충청남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_12" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;전라북도&quot;,&quot;sidoCode&quot;:&quot;45&quot;}', $event)"
											class="ng-binding">전라북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_13" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;전라남도&quot;,&quot;sidoCode&quot;:&quot;46&quot;}', $event)"
											class="ng-binding">전라남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_14" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;경상북도&quot;,&quot;sidoCode&quot;:&quot;47&quot;}', $event)"
											class="ng-binding">경상북도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_15" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;경상남도&quot;,&quot;sidoCode&quot;:&quot;48&quot;}', $event)"
											class="ng-binding">경상남도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li ng-repeat="item in common.sidoInfoList" class="ng-scope">
											<a id="cmpr2_sido_16" href="javascript:;"
											ng-click="onTargetSidoChange(2, '{&quot;sidoName&quot;:&quot;제주특별자치도&quot;,&quot;sidoCode&quot;:&quot;50&quot;}', $event)"
											class="ng-binding">제주특별자치도</a>
										</li>
										<!-- end ngRepeat: item in common.sidoInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSidoChange(2, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list">
										<!-- ngRepeat: item in target[2].sigunguInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetSigunguChange(2, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="wrap fl">
									<ul class="js_sido_list ng-hide" ng-show="activeLNB=='tchart'">
										<!-- ngRepeat: item in target[2].dongInfoList -->
										<li><a href="javascript:;"
											ng-click="onTargetDongChange(2, '', $event)">-선택해제-</a></li>
									</ul>
								</div>
								<div class="close">
									<a href="javascript:;" title="확인" class="ly-btn mt5"
										ng-click="onRegionSubmit02()">확인</a> <a href="javascript:;"
										title="취소" class="ly-btn mt5"
										ng-click="showPathDiv_02 = false;">취소</a>
								</div>
							</div>

							<!-- 검색 +-(Plus, Minus) 버튼 -->
							<div class="alp_sch_btn">
							</div>
						</div>
						<!--//지역선택 -->

						<!-- LNB -->
						<div id="leftMenu" class="lnb" ng-show="vm.showLnb==true">

							<!-- lnb-tab -->
							<div class="lnb-tab">
								<h3>Map Service</h3>
								<div class="jsScroll" style="z-index: 1300; height: 783px;">
									<ul>
										<!-- ★ tadmin: 행정구역별분석★ -->
										<li><a href="javascript:;"
											ng-click="changeToggleView('tadmin');" class="expand"
											ng-class="{off:tadmin.visibleMenu != true}">◎ 행정구역별분석</a>
											<button onclick="doSggSet('11')">sggtest</button>
											<button onclick="doSggSet('26')">sggtest2</button>
											<button onclick="doAdmdongSet('11680')">admtest</button>
											<div class="unexpand_cont" ng-show="tadmin.visibleMenu==true">
												<!-- 조회영역 -->
												<div class="search-wrap">

													<!-- 행정구역분석: 검색조건 (지역비교, 기간비교) -->
													<div class="search-box">
														<dl>
															<dt class="tx2">검색조건</dt>
															<dd ng-class="{blurText:tadmin.tourType == '2'}">
																<label><input type="radio" checked="true"
																	name="tadmin.condType" onclick="searchToggle('1')" value="1"
																	class="ng-pristine ng-untouched ng-valid ng-not-empty">지역비교</label>
																<label><input type="radio" 
																	name="tadmin.condType" onclick="searchToggle('2')" value="2"
																	class="ng-pristine ng-untouched ng-valid ng-not-empty">기간비교</label>
															</dd>
														</dl>
													</div>
													<!-- 행정구역분석: 기간조건 (기준년월, 비교년월) -->
													<div class="search-box">
														<dl>
															<dt class="tx3">기준년월</dt>
															<dd>
																<div class="w80">
																	<select id="common.month" ng-model="common.month"
																		ng-change="common.fn.doSido('month')"
																		class="ng-pristine ng-untouched ng-valid ng-not-empty">
																		<!-- ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201903" class="ng-binding ng-scope" style="">2019년03월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201902" class="ng-binding ng-scope">2019년02월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201901" class="ng-binding ng-scope">2019년01월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201812" class="ng-binding ng-scope">2018년12월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201811" class="ng-binding ng-scope">2018년11월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201810" class="ng-binding ng-scope">2018년10월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201809" class="ng-binding ng-scope">2018년09월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201808" class="ng-binding ng-scope">2018년08월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201807" class="ng-binding ng-scope">2018년07월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201806" class="ng-binding ng-scope">2018년06월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201805" class="ng-binding ng-scope">2018년05월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201804" class="ng-binding ng-scope">2018년04월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																	</select>
																</div>
																<div class="alp_left_month ng-hide" id="rightMonth"
																	ng-show="tadmin.condType == '2'">비교년월</div>
																<div class="w80 ng-hide" id="rightMonth2"
																	ng-show="tadmin.condType == '2'">
																	<select id="common.month2" ng-model="common.month2"
																		class="ng-pristine ng-untouched ng-valid ng-not-empty">
																		<!-- ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201903" class="ng-binding ng-scope" style="">2019년03월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201902" class="ng-binding ng-scope">2019년02월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201901" class="ng-binding ng-scope">2019년01월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201812" class="ng-binding ng-scope">2018년12월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201811" class="ng-binding ng-scope">2018년11월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201810" class="ng-binding ng-scope">2018년10월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201809" class="ng-binding ng-scope">2018년09월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201808" class="ng-binding ng-scope">2018년08월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201807" class="ng-binding ng-scope">2018년07월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201806" class="ng-binding ng-scope">2018년06월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201805" class="ng-binding ng-scope">2018년05월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																		<option ng-repeat="item in common.yearMonthInfoList"
																			value="201804" class="ng-binding ng-scope">2018년04월</option>
																		<!-- end ngRepeat: item in common.yearMonthInfoList -->
																	</select>
																</div>
															</dd>
														</dl>
													</div>

													<!-- 행정구역분석: 기준지역 (시도+시군구) -->
													<div class="search-box alp_left_mbottom">
														<dl>
															<dt class="tx3">기준지역</dt>
															<dd>
																<!-- 시도리스트 가져오기 -->
																<div class="w120 alp_left_float">
																	<select onchange="doSggSet(this.value)"
																		class="alp_select_w ng-valid ng-not-empty ng-dirty ng-valid-parse ng-touched"
																		id = "selectSido"
																		 style="">
																		 <option value="">::시군구 선택::</option>
																	</select>
																</div>
																<!-- 시군구 리스트 가져오기 -->
																<div class="w120 alp_left_float_last">
																	<select id = "selectSgg" onchange="doAdmdongSet(this.value)" 
																		class="alp_select_w ng-valid ng-not-empty ng-dirty ng-valid-parse ng-touched">
																	</select>
																</div>
																<!-- 읍면동 리스트 가져오기 -->
																<div class="w120 ng-hide">
																	<select id = "selectAdmdong"
																		class="alp_select_w ng-pristine ng-untouched ng-valid ng-empty">
																	</select>
																</div>
															</dd>
														</dl>
													</div>


													<!-- 행정구역분석: 조건선택 (내외국인, 성별, 주중말, 연령대, 시간대, 국적) -->
													<div class="search">
														<ul>
															<li>
																<div>
																	<ul>
																		<li>
																			<dl>
																				<dt>
																					<label>내·외국인 생활인구</label>
																				</dt>
																				<dd>
																					<div class="two">
																						<label><input type="radio"
																							name="tadmin.peopleType"
																							checked="true" value="in"
																							class="ng-pristine ng-untouched ng-valid ng-not-empty">내국인</label>
																					</div>
																					<div class="two">
																						<label><input type="radio"
																							name="tadmin.peopleType"
																							ng-model="tadmin.peopleType" ng-change=""
																							ng-disabled="" value="out"
																							class="ng-pristine ng-untouched ng-valid ng-not-empty">외국인</label>
																					</div>
																				</dd>
																			</dl>
																		</li>
																		<li ng-show="tadmin.peopleType == 'in'" class="">
																			<dl>
																				<dt>
																					<label><input type="checkbox"
																						name="tadmin.pSex" onclick="allCheck('sex')"
																						class="ng-pristine ng-untouched ng-valid ng-not-empty">성별</label>
																				</dt>
																				<dd>
																					<div class="two">
																						<label><input type="checkbox"
																							name="tadmin.pSex" value="M" ng-disabled="">남성</label>
																					</div>
																					<div class="two">
																						<label><input type="checkbox"
																							name="tadmin.pSex" value="F" ng-disabled="">여성</label>
																					</div>
																				</dd>
																			</dl>
																		</li>
																		<li ng-show="tadmin.peopleType != ' '" class="">
																			<dl>
																				<dt>
																					<label><input type="checkbox"
																						name="tadmin.pDay" onclick="allCheck('eweek')"
																						class="ng-pristine ng-untouched ng-valid ng-not-empty"
																						style="">주중/주말</label>
																				</dt>
																				<dd>
																					<div class="two">
																						<label><input type="checkbox"
																							name="tadmin.pDay" value="N" ng-disabled="">주중</label>
																					</div>
																					<div class="two">
																						<label><input type="checkbox"
																							name="tadmin.pDay" value="Y" ng-disabled="">주말</label>
																					</div>
																				</dd>
																			</dl>
																		</li>
																		<li ng-show="tadmin.peopleType == 'in'" class="">
																			<dl>
																				<dt>
																					<label><input type="checkbox"
																						name="tadmin.pAge" onclick="allCheck('age')"
																						class="ng-pristine ng-untouched ng-valid ng-not-empty"
																						style="">연령대</label>
																				</dt>
																				<dd style="height: 96px; width: 350px;" >
																					<!-- ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge" style="">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="0009"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">10대미만
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="1014"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">10~14세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="1519"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">15~19세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="2024"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">20~24세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="2529"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">25~29세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="3034"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">30~34세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="3539"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">35~39세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="4044"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">40~44세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="4549"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">45~49세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="5054"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">50~54세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="5559"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">55~59세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="6064"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">60~64세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="6569"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">65~69세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="7074"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">70~74세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="7579"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">75~79세
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																					<div class="alp_three ng-scope"
																						ng-repeat="item in listAge">
																						<label
																							ng-class="{blurText:tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'}"
																							class="ng-binding"> <input
																							type="checkbox" name="tadmin.pAge" value="8000"
																							ng-disabled="tadmin.targetType != 'age' &amp;&amp; tadmin.analyType == 'cell'">80세이상
																						</label>
																					</div>
																					<!-- end ngRepeat: item in listAge -->
																				</dd>
																			</dl>
																		</li>
																		<li ng-show="tadmin.peopleType != ' '" class="">
																			<dl>
																				<dt>
																					<label><input type="checkbox"
																						name="tadmin.pTime" onclick="allCheck('time')"
																						class="ng-pristine ng-untouched ng-valid ng-not-empty"
																						style="">시간대</label>
																				</dt>
																				<dd style="height: 82px; width: 350px;">
																					<!-- ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime" style="">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="00"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">00시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="01"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">01시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="02"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">02시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="03"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">03시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="04"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">04시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="05"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">05시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="06"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">06시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="07"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">07시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="08"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">08시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="09"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">09시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="10"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">10시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="11"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">11시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="12"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">12시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="13"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">13시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="14"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">14시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="15"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">15시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="16"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">16시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="17"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">17시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="18"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">18시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="19"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">19시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="20"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">20시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="21"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">21시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="22"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">22시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																					<div class="alp_four ng-scope"
																						ng-repeat="item in listTime">
																						<label class="ng-binding"><input
																							type="checkbox" name="tadmin.pTime" value="23"
																							ng-disabled="tadmin.targetType != 'time' &amp;&amp; tadmin.analyType == 'cell'">23시</label>
																					</div>
																					<!-- end ngRepeat: item in listTime -->
																				</dd>
																			</dl>
																		</li>
																	</ul>
																</div>
															</li>
														</ul>
													</div>

													<!-- 행정구역분석: 버튼 (리스트보기, 결과보기) -->
													<div class="btnwarp">
														<a id="act_rank_find" href="javascript:;"
															ng-click="onPopup('reportPopup', 'tadmin', null, null);"
															class="alp_btn2_map">리포트보기</a> <a id="act_rank_find"
															href="javascript:;" onclick="doSearch()"
															class="alp_btn3_map btnPoint">결과보기</a>
													</div>
												</div>
												<!-- //조회영역 -->
											</div></li>

										<!-- ★ tvisit: 방문지역분석★ -->

										<!-- ★ tchart: 파이차트분석★ -->
									</ul>
								</div>

							</div>
							<!-- //lnb-tab -->

						</div>
						<!-- //Lnb -->


						<!-- 중복 위치 팝업 -->
						<div id="dupl_pop" style="display: none;">
							<div class="map_pop_com1">
								<div class="map_pop-content">
									<!-- 타이틀 -->
									<div class="top_bar">
										<h1 class="sp1">인근위치</h1>
										<!-- 닫기버튼 -->
										<div class="btn_x">
											<a href="javascript:;"><img
												src=""
												alt="닫기" title="닫기"></a>
										</div>
									</div>
									<div class="cont">
										<div class="beacon_box">
											<div class="fl">
												<div class="list-yscrolly" style="height: 85px;">
													<ul id="dupl_pop_list">
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="map_pop_bullet">
								</div>
							</div>
						</div>
						<div class="loadingBar"></div>
						<div id="loadingImg" class="loadingImg" style="display: none;"></div>

						<!--  popup start -->

						<div class="layerpopup" style="width: 1070px; display: none;"
							id="fornPopup">
							<h1>행정구역별분석 &gt; 외국인 차트</h1>
							<div class="guideCont report-scrolly">
								<!-- ngInclude:  -->
							</div>
						</div>
						<div class="layerpopup" style="width: 1070px; display: none;"
							id="reportPopup">
							<h1>행정구역별분석 &gt; 리포트</h1>
							<div class="guideCont report-scrolly">
								<!-- ngInclude:  -->
							</div>
						</div>
						<div class="layerpopup" style="width: 1070px; display: none;"
							id="vistPopup">
							<h1>방문지역분석 리포트</h1>
							<div class="guideCont report-scrolly">
								<!-- ngInclude:  -->
							</div>
						</div>
						<!--  popup END -->

						<div id="KT_MAP_CHANGE" class="KT_Map_Change">
							<div class="control roadmap selected"></div>
							<div class="control satellite out"></div>
							<div class="control hybrid out"></div>
						</div>
						<div id="KT_MAP_MEASURE" class="KT_Map_Measure">
							<div class="control-distance"></div>
							<div class="control-shape"></div>
							<div class="control-change"></div>
						</div>
					</div>
					<!-- //지도영역 -->
				</div>
				<!-- //[BODY] -->

				<!-- [FOOTER] -->
				<!-- uiView: footer -->
				<div id="footer" ui-view="footer" class="ng-scope">

					<div class="con3 ng-scope">
						<span class="gLeft">
							<h1>
							<a href="javascript:;"><img src="https://bigsight.kt.com/bdip/assets/img/tour/common/footer_logo.png" alt="로고이미지"></a>
							</h1>
						</span> <span class="gRight"> <span>Copyright © 2016 kt
								corp. All rights reserved.</span>
						</span>
					</div>
				</div>
				<!-- //[FOOTER] -->

			</div>
			<!-- //wrap -->
		</div>

		<!-- Loading Bar -->
	</div>


</body>
</html>