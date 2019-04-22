<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.olControlAttribution {
	bottom: 0px;
	left: 2px;
	right: inherit;
	width: 400px;
}
/* conditionally position control differently for Google Maps */
.olForeignContainer div.olControlMousePosition {
	bottom: 28px;
}

#map {
	width: 100%;
	height: 910px;
}
.aside {width5:00px;position:absolute;top:0px;right:0px;height:100%;border-left:1px solid #dcdcdc;background-color:#fff}

#tooltip_contentDiv {
	background-color: balck;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
}
#selectgu{
position:absolute;
top: 10px;
left: 10px;
z-index: 1001;
}
#sangSerch{
position:absolute;
top: 10px;
left: 140px;
z-index: 1001;
height: 25px;
}
.modes{
position:absolute;
top: 40px;
left: 10px;
z-index: 1001;
}
.modes span{
width: 60px;
height: 60px;
border: solid 1px;
cursor: pointer;
background-color: white;
}

.layer-btn.btn-repeat{
background-color: black;
color:red;
}

.smallmap {
	width: 100%;
	height: 100%;
	position: relative;
	overflow: hidden;
}
.olButton{
display: none;
}

.closeView {position:absolute;top:0;right:0;}
.closeBt {float:right;padding:4px 10px 0 0;}
img{vertical-align:top}  

/* 맵 위에 그리드 올리기 */
.layer-info-wrap {position:absolute;left: 1px;top:67.9%;margin-top:-90px;min-height:202px;z-index:1001;}  
.layer-info-wrap .layer-info-box {width:1800px;height:380px;border:1px solid #c1c1c1;background:#f5f5f5;     opacity: 0.9;}
.layer-info-wrap .layer-info-btn {position:absolute;float:left;top:45%;margin-top:-66px;z-index:-1}
.layer-info-wrap .layer-info-btn .btn-layer.on{margin-left:1800px;display:inline-block;background:url('https://bigsight.kt.com/bdip/assets/img/tra/common/btn_quick_info.png') left top no-repeat;text-indent:-9999px;width:28px;height:132px;}
.layer-info-wrap .layer-info-btn .btn-layer{display:none;margin-left:0;display:inline-block;background: url('https://bigsight.kt.com/bdip/assets/img/tra/common/btn_quick_info.png') -30px top no-repeat;text-indent:-9999px;width: 59px;height: 127px;}
</style>
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
	<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/osm.css"/>">
<script src="<c:url value="/static/js/OpenLayers.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/Daum.js"/>" type="text/javascript"></script>
<script src="<c:url value="/views/gis/js/gisController.js"/>" type="text/javascript"></script>
</head>


<body onload="init()">
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


		
    <!-- <input type="button" id="lmit10" value="{{name}}" readonly="readonly" ng-click="vm.gge()"> -->
    <!-- <input type="text" value="{{name}}" > -->
	<!-- <div id="map" style="width:1400px; height:600px;"></div> -->
	<div id="objec"></div>
	<div class="map_wrap">
		<div id="map" class="smallmap">
			<select ng-model="names" id="selectgu" style="height:30px; display: block;" name="sggnm" ng-change="vm.gcon(this)">
				<option>::서울특별시::</option> 
			</select>
			<input ng-model="search" type="text" id="sangSerch" name="sangSerch" ng-change=""> 
		</div>
	</div>
					<!-- 생활인구 현황 -->
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