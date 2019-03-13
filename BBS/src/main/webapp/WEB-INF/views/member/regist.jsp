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
	href="<c:url value="/static/css/flink.css"/>">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
</head>
<body>
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
				
				<div id="header" ui-view="header" class="ng-scope">
					<!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2017 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

					<div class="header ng-scope">
						<h1>
							<a href="<c:url value="/"/>"><img
								src="https://bigsight.kt.com/bdip/assets/img/portal/common/bigsight_logo.png"
								alt="KT BigSight">KT BigSight</a>
						</h1>
					</div>
					<div class="gnbArea ng-scope" id="gnbNavi">


						<!-- gnb -->
						<div id="gnb">
							<!-- ngRepeat: menu in pvm.menuList -->
							<div class="tit-0" ng-repeat="menu in pvm.menuList">
								<a ng-class="portalMenuIndex==0 ? 'g-menu on' : 'g-menu'"
									ng-click="portalMenuClick(0,menu.routeState);"
									style="cursor: pointer;" class="g-menu"><span
									ng-bind="menu.title" class="ng-binding">BigSight 소개</span></a>
								<div class="twoD">

									<!-- ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==0 &amp;&amp; portalTabIndex==0) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(0,tab.routeState,0, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">kt BigSight 소개</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==0 &amp;&amp; portalTabIndex==1) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(0,tab.routeState,1, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">kt 인구통계분석</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==0 &amp;&amp; portalTabIndex==2) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(0,tab.routeState,2, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">kt 빅데이터 소개</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->

								</div>
							</div>
							<!-- end ngRepeat: menu in pvm.menuList -->
							<div class="tit-1" ng-repeat="menu in pvm.menuList">
								<a ng-class="portalMenuIndex==1 ? 'g-menu on' : 'g-menu'"
									ng-click="portalMenuClick(1,menu.routeState);"
									style="cursor: pointer;" class="g-menu"><span
									ng-bind="menu.title" class="ng-binding">BigSight 서비스</span></a>
								<div class="twoD">

									<!-- ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==1 &amp;&amp; portalTabIndex==0) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(1,tab.routeState,0, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">TrIP (관광분석솔루션)</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==1 &amp;&amp; portalTabIndex==1) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(1,tab.routeState,1, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">GrIP (상권분석솔루션)</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==1 &amp;&amp; portalTabIndex==2) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(1,tab.routeState,2, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">ALP (생활인구분석솔루션)</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==1 &amp;&amp; portalTabIndex==3) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(1,tab.routeState,3, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope ng-hide  hasSub"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  -->
										<!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">맞춤형솔루션</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
											<span ng-repeat="tab2 in tab.tabList"
												ng-click="portalMenuClick(1,tab2.routeState,0, tab.tabList.length, true);"
												ng-hide="!tab2.accAuth.match(UserInfo.dmpAuthInfo.dmpAcessId)"
												class="ng-binding ng-scope"> 광고DMP </span>
											<!-- end ngRepeat: tab2 in tab.tabList -->
											<span ng-repeat="tab2 in tab.tabList"
												ng-click="portalMenuClick(1,tab2.routeState,1, tab.tabList.length, true);"
												ng-hide="!tab2.accAuth.match(UserInfo.dmpAuthInfo.dmpAcessId)"
												class="ng-binding ng-scope"> 커머스Offering </span>
											<!-- end ngRepeat: tab2 in tab.tabList -->
											<span ng-repeat="tab2 in tab.tabList"
												ng-click="portalMenuClick(1,tab2.routeState,2, tab.tabList.length, true);"
												ng-hide="!tab2.accAuth.match(UserInfo.dmpAuthInfo.dmpAcessId)"
												class="ng-binding ng-scope"> 개인시청률통계 </span>
											<!-- end ngRepeat: tab2 in tab.tabList -->
											<span ng-repeat="tab2 in tab.tabList"
												ng-click="portalMenuClick(1,tab2.routeState,3, tab.tabList.length, true);"
												ng-hide="!tab2.accAuth.match(UserInfo.dmpAuthInfo.dmpAcessId)"
												class="ng-binding ng-scope"> NSM키워드광고솔루션 </span>
											<!-- end ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==1 &amp;&amp; portalTabIndex==4) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(1,tab.routeState,4, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">솔루션 활용 가이드</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->

								</div>
							</div>
							<!-- end ngRepeat: menu in pvm.menuList -->
							<div class="tit-2" ng-repeat="menu in pvm.menuList">
								<a ng-class="portalMenuIndex==2 ? 'g-menu on' : 'g-menu'"
									ng-click="portalMenuClick(2,menu.routeState);"
									style="cursor: pointer;" class="g-menu"><span
									ng-bind="menu.title" class="ng-binding">Intelligence
										Data Hub</span></a>
								<div class="twoD">

									<!-- ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==0) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,0, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">데이터스토어 소개</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==1) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,1, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">유동인구</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==2) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,2, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">교통수요예측</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==3) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,3, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">부동산</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==4) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,4, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">Open API</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==2 &amp;&amp; portalTabIndex==5) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(2,tab.routeState,5, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">Data Set</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->

								</div>
							</div>
							<!-- end ngRepeat: menu in pvm.menuList -->
							<div class="tit-3" ng-repeat="menu in pvm.menuList">
								<a ng-class="portalMenuIndex==3 ? 'g-menu on' : 'g-menu'"
									ng-click="portalMenuClick(3,menu.routeState);"
									style="cursor: pointer;" class="g-menu"><span
									ng-bind="menu.title" class="ng-binding">서비스 정책</span></a>
								<div class="twoD">

									<!-- ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==3 &amp;&amp; portalTabIndex==0) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(3,tab.routeState,0, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">회원등급/서비스</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==3 &amp;&amp; portalTabIndex==1) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(3,tab.routeState,1, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">상품서비스안내</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->

								</div>
							</div>
							<!-- end ngRepeat: menu in pvm.menuList -->
							<div class="tit-4" ng-repeat="menu in pvm.menuList">
								<a ng-class="portalMenuIndex==4 ? 'g-menu on' : 'g-menu'"
									ng-click="portalMenuClick(4,menu.routeState);"
									style="cursor: pointer;" class="g-menu"><span
									ng-bind="menu.title" class="ng-binding">고객센터</span></a>
								<div class="twoD">

									<!-- ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==4 &amp;&amp; portalTabIndex==0) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(4,tab.routeState,0, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">공지사항</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==4 &amp;&amp; portalTabIndex==1) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(4,tab.routeState,1, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">FAQ</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==4 &amp;&amp; portalTabIndex==2) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(4,tab.routeState,2, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">1:1문의</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==4 &amp;&amp; portalTabIndex==3) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(4,tab.routeState,3, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">계약상담문의</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->
									<a ng-repeat="tab in menu.tabList"
										ng-class="[(portalMenuIndex==4 &amp;&amp; portalTabIndex==4) &amp;&amp; tab.tabList.length==0 ? 'on' : '' , tab.tabList.length>0 ? 'hasSub' : '']"
										ng-click="portalMenuClick(4,tab.routeState,4, tab.tabList.length);"
										style="cursor: pointer;"
										ng-hide="(tab.title=='맞춤형솔루션' &amp;&amp; (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL))"
										class="ng-scope"> <!--운영 - 생활인구분석솔루션 권한 없는경우 안보이게  --> <!-- ng-hide="(tab.title=='맞춤형솔루션' && (UserInfo.dmpAuthInfo.dmpUseYn=='N' || UserInfo.dmpAuthInfo.dmpUseYn == NULL)) || (tab.title=='ALP (생활인구분석솔루션)' && (UserInfo.alpUseYn=='N'||UserInfo.alpUseYn == NULL||UserInfo.alpUseYn == ''))"> -->

										<!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' -->
										<span ng-bind="tab.title"
										ng-if="tab.title!='MoIP (모바일콘텐츠분석솔루션)'"
										class="ng-binding ng-scope">자료실</span>
									<!-- end ngIf: tab.title!='MoIP (모바일콘텐츠분석솔루션)' --> <!-- ngIf: tab.title=='MoIP (모바일콘텐츠분석솔루션)' -->

										<div class="threeD ng-hide" ng-hide="tab.tabList==null">
											<!-- ngRepeat: tab2 in tab.tabList -->
										</div>
									</a>
									<!-- end ngRepeat: tab in menu.tabList -->

								</div>
							</div>
							<!-- end ngRepeat: menu in pvm.menuList -->
						</div>
						<!--//gnb-->

					</div>
					<!--//gnbArea-->
				</div>
				<!-- [BODY] -->
				<!-- uiView: body -->
				<div id="cBody" class="cBody ng-scope" ui-view="body">
					<div class="cBody ng-scope" id="cBody">

						<div class="container">
							<div id="content">
								<!-- 회원가입 영역-->
								<div class="login">
									<div class="joinbox">
										<h3>회원가입</h3>
										<form class="form-horizontal" name="thisForm" id="thisForm"
											method="post">
											<input type="hidden" name="TM" id="TM" value="M"> <input
												type="hidden" name="MM" id="MM" value="2"> <input
												type="hidden" name="idc" id="idc" value=""> <input
												type="hidden" name="gender" id="gender" value=""> <input
												type="hidden" name="confirm" id="confirm" value="">
											<fieldset>
												<legend>Join</legend>
												<ul>
													<h4>1. 기본정보 입력</h4>
													<!--
                <li>
                    <p>회원유형</p>
                    <p><input class="chk" name="type" id="type1" type="radio" value="예비창업자"><label for="member">예비 창업자 </label></p>
                    <p><input class="chk" name="type" id="type2" type="radio" value="가맹점점주"><label for="member">가맹점 점주</label></p>	
                </li>
                -->
													<li><input title="아이디" class="i_text" type="text"
														name="id" id="id" placeholder="아이디" style="width: 360px"
														maxlength="30" onkeyup="mb.checkChar(this.name);"
														onkeypress="if(event.keyCode === 13){mb.checkID(); return false;}">
														<button class="join_btn1"
															onclick="mb.checkID(); return false;">중복확인</button></li>
													<li><input title="비밀번호" class="i_text" type="password"
														name="pw1" id="pw1" placeholder="비밀번호(8자리 이상)"
														maxlength="15" onkeyup="mb.checkChar(this.name);"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}"></li>
													<li><input title="비밀번호 확인" class="i_text"
														type="password" name="pw2" id="pw2"
														placeholder="비밀번호(8자리 이상) 확인" maxlength="15"
														onkeyup="mb.checkChar(this.name);"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}"></li>
													<li><input title="이름" class="i_text" type="text"
														name="name" id="name" placeholder="이름"
														onkeyup="mb.checkChar(this.name);"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}"></li>
													<li><select name="year" id="year">
															<option value="">년</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
													</select> <select name="month" id="month">
															<option value="">월</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
													</select> <select name="day" id="day">
															<option value="">일</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
													</select></li>
													<li>
														<p class="goff" id="gender1" onclick="mb.gender(this.id);">남자</p>
														<p class="goff" id="gender2" onclick="mb.gender(this.id);">여자</p>
													</li>
													<li><select name="hp1" id="hp1" style="width: 120px">
															<option value="">휴대폰</option>
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
													</select> <input title="휴대폰" class="i_text1" type="text" name="hp2"
														id="hp2" style="width: 120px" maxlength="4"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}">
														<input title="휴대폰" class="i_text1" type="text" name="hp3"
														id="hp3" style="width: 127px" maxlength="4"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}">
														<!--<button class="join_btn1" onclick="mb.selfCheck(); return false;">인증</button>-->
													</li>
													<li><input title="이메일" class="i_text" type="text"
														name="email1" id="email1" style="width: 187px"
														placeholder="이메일"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}">
														@ <input title="이메일" class="i_text" type="text"
														name="email2" id="email2" style="width: 300px"
														onkeypress="if(event.keyCode === 13){mb.join(); return false;}">
													</li>
													<li><p>관심 업종</p></li>
													<li><select name="category1" id="category1"
														title="대분류" style="width: 200px"
														onchange="br.category(this.value);">
															<option value="">대분류</option>
															<option value="01">외식</option>
															<option value="02">서비스</option>
															<option value="03">도소매</option>
													</select> <select name="category2" id="category2" title="중분류"
														style="width: 300px">
															<option value="">중분류</option>
													</select> <!--
                    <select name="category2" id="category2" title="중분류" onchange="br.brand(this.value);" style="width:150px">       
                        <option value="">중분류</option>
                    </select>
                    <select name="brand" id="brand" title="브랜드">
                        <option value="">브랜드</option>
                    </select>
                    --></li>
													<li><select name="route" id="route" title="가입경로">
															<option value="">가입 경로</option>
															<option value="인터넷 광고">인터넷 광고</option>
															<option value="네이버 블로그">네이버 블로그</option>
															<option value="창업관련 카페">창업관련 카페</option>
															<option value="SNS (페이스북)">SNS (페이스북)</option>
															<option value="프링크 관련 뉴스, 기사">프링크 관련 뉴스, 기사</option>
															<option value="기타 (직접 입력)">기타</option>
													</select></li>
													<h4>
														2. 약관 동의
														<p>
															이용약관 동의<input class="chk" name="agree" id="agree"
																type="checkbox" value="Y">
														</p>
													</h4>
													<li class="agree">이용약관<br> <br> 제1장 총 칙<br>
														<br> - 제1조 (목적)<br> 이 약관은 프랜차이즈링크(이하 회사라 함)가
														제공하는 프랜차이즈 포털 정보 서비스(이하 서비스라 함)의 이용조건 및 절차에 관한 사항을 규정함을
														목적으로 합니다. <br> <br> - 제2조 (용어의 정의) <br> 1.
														회원: 서비스를 제공받기 위하여 이 약관을 통하여 회사와 이용계약을 체결한 자<br> 2.
														아이디(ID): 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 부여하는 문자와 숫자의
														조합<br> 3. 이용계약: 서비스를 제공받기 위하여 이 약관으로 회사와 회원 간에 체결하는
														계약<br> 4. 비밀번호: 회원의 비밀 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합<br>
														5. 이 약관에서 사용하는 용어의 정의는 전항에서 정한 것을 제외하고는 거래관행 및 관계법령에 따릅니다<br>
														<br> - 제3조 (약관의 효력과 변경) <br> 1. 이 약관의 내용은 서비스 내에
														게시하여 공시함으로써 효력을 발생합니다.<br> <br> 2. 회사는 합리적인 사유가
														발생한 경우 이 약관을 변경할 수 있으며 지체 없이 이를 공시합니다. <br> 단, 회원의
														권리의무 등 중요한 규정의 변경은 최소 일주일 전에 공시합니다.<br> <br> 3.
														회원은 변경된 약관의 내용에 동의하지 않을 경우 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다.
														약관변경의 효력발생 이후 계속적인 서비스 이용은 회원이 약관변경에 동의한 것으로 간주됩니다.<br>
														<br> - 제4조 (약관 외 준칙)<br> 이 약관에 명시되지 않은 사항은 정보통신망
														이용촉진 및 정보보호등에 관한 법률, 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 의합니다.<br>
														<br> <br> 제2장 서비스 이용계약<br> <br> - 제5조
														(서비스의 구분)<br> 1. 회사가 회원에게 제공하는 서비스는 유료서비스 및 무료서비스로
														구분되고, 각 서비스는 몇 개의 하위 서비스로 구분되어 제공될 수 있습니다.<br> <br>
														2. 유료 서비스를 이용하기 위하여는 추가의 정보(주소, 결제방법 등)를 입력하고, 전송 확인 버튼을
														누르는 등 별도의 이용의사를 표시하여야 합니다. 기타 하위 서비스 등의 종류와 이용방법 등은 회사가 이
														약관 또는 공지, 이용안내에서 별도로 정하는 바에 따릅니다.<br> <br> - 제6조
														(이용계약의 성립)<br> 1. 이용계약은 회원의 이용신청에 대하여 회사가 승낙함으로써
														성립합니다.<br> <br> 2. 이용계약은 아이디 단위로 체결합니다.<br>
														<br> - 제7조 (이용신청의 승낙)<br> 1. 회사는 이용신청이 다음 각호의1에
														해당하는 경우 승낙을 하지 않을 수 있습니다.<br> ① 타인 명의의 신청 <br> ②
														이용신청 시 기재사항을 허위로 하여 신청한 경우 <br> ③ 이용신청자가 회사의 채무자로서
														채무를 완제하지 않고 있는 경우 <br> ④ 기타 이용신청자의 귀책사유로 이용승낙이 곤란한 경우
														<br> <br> 2. 회사는 다음 각호의1에 해당하는 경우에는 그 사유가 해소될
														때가지 이용승낙을 보류할 수 있습니다. <br> ① 설비의 여유가 없는 경우 <br>
														② 기술상 또는 업무수행상 지장이 있는 경우 <br> <br> - 제8조 (회원 아이디
														부여)<br> 1. 회사는 이용신청자에게 이용신청 순서에 따라 회원 아이디를 부여하는 것을
														원칙으로 합니다.<br> 2. 다음 각호의1의 경우에는 회사는 이용신청자 또는 회원에게,
														신청하는 아이디나 부여된 회원 아이디의 변경을 요구할 수 있습니다.<br> ① 기존의 회원
														아이디와 동일한 아이디로 이용 신청하는 경우 <br> ② 회원 아이디가 전화번호 또는
														주민등록번호 등으로 등록되어 사생활 침해의 우려가 있는 경우 <br> ③ 타인에게 혐오감을
														주거나 미풍양속을 해치는 경우 <br> ④ 기타 합리적인 사유가 있는 경우<br> <br>
														- 제9조 (회원정보의 변경)<br> 1. 회원은 회원정보관리 화면을 통하여 언제든지 본인의
														개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이
														불가능합니다. <br> <br> 2. 회원은 회원가입신청 시 기재한 사항이 변경되었을
														경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다. <br>
														<br> 3. 제2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지
														않습니다.<br> <br> - 제10조 (개인정보보호 의무)<br> "회사"는
														"정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다.
														개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보취급방침이 적용됩니다. 다만, "회사"의
														공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보취급방침이 적용되지 않습니다.<br>
														<br> 제3장 계약당사자의 의무 <br> <br> - 제11조 (회사의
														의무)<br> 1. 회사는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며,
														계속적이고 안정적으로 서비스를 제공하기 위하여 최선을 다하여 노력합니다. <br> <br>
														2. 회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보보호를 위한 보안 시스템을 갖추어야 하며,
														유지.점검 또는 복구 등의 조치를 성실히 이행하여야 합니다. <br> <br> 3.
														회사는 서비스의 제공과 관련하여 알게 된 회원의 개인정보를 본인의 승낙 없이 제3자에게 누설, 배포하지
														않고 이를 보호하기 위하여 노력합니다. 회원의 개인정보보호에 관한 기타의 사항은 정보통신망법 및 회사가
														별도로 정한 개인정보취급방침에 따릅니다. <br> <br> 4. 회사는 회원으로부터
														제기되는 불만이 정당하다고 인정할 경우에는 이를 즉시 처리함을 원칙으로 합니다. 회원이 제기한 의견이나
														불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 회원에게 처리과정 및 결과를 전달합니다.
														다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리 일정을 통보합니다. <br> <br>
														5. 개인정보의 관리책임자는 XXX이며, 연락처는 XXX / 전화번호는 XXX입니다. <br>
														<br> - 제12조 (회원의 의무)<br> 1. 회원은 관계법, 이 약관의 규정,
														이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의
														업무에 방해되는 행위를 하여서는 안 됩니다. <br> <br> 2. 회원은 이용계약에
														따라 요금 등을 지정된 기일까지 납입하여야 합니다. <br> <br> 3. 회원은 다음
														행위를 하여서는 안 됩니다.<br> ① 신청 또는 변경 시 허위내용의 등록 <br> ②
														타인의 정보도용 <br> ③ 회사가 게시한 정보의 변경<br> ④ 회사가 정한 정보
														이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br> ⑤ 회사와 기타 제3자의 저작권
														등 지적재산권에 대한 침해<br> ⑥ 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는
														행위<br> ⑦ 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를
														"서비스"에 공개 또는 게시하는 행위 <br> ⑧ 회사의 동의 없이 영리를 목적으로 "서비스"를
														사용하는 행위<br> ⑨ 기타 불법적이거나 부당한 행위<br> <br> 4.
														회원은 회원 ID 및 비밀번호를 철저히 관리하여야 하며, 관리소홀, 부정사용 등에 의하여 발생하는 모든
														결과에 대한 책임은 회원 본인이 부담하며, 회사는 이에 대한 어떠한 책임도 부담하지 않습니다.<br>
														<br> 5. 회원은 본인의 ID 및 비밀번호를 제3자에게 이용하게 하여서는 아니되며, 회원
														본인의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지하는 경우에는 즉시 비밀 번호를
														변경하여야 하며, 해당 사실을 회사에 통지하고 회사가 안내하는 바에 따라야 합니다. <br> <br>
														제4장 서비스 이용 <br> <br> - 제13조 (정보의 제공) <br>
														회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로
														회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변
														등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.<br> <br>
														- 제14조 (서비스 이용시간)<br> 1. 서비스의 이용은 회사의 업무상 또는 기술상 특별한
														지장이 없는 한 연중무휴1일24시간을 원칙으로 합니다. 다만 정기 점검 등의 필요로 회사가 정한 날이나
														시간은 그러하지 않습니다.<br> <br> 2. 회사는 서비스 별 이용가능 시간을
														별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.<br> <br> -
														제15조 (게시물 등의 관리)<br> 1. 회사는 회원이 본 서비스를 통하여 게시, 게재,
														전자메일 또는 달리 전송한 내용물에 대해 일체 민,형사상의 책임을 지지 않으며, 다음의 경우에 해당될
														경우 사전통지 없이 삭제할 수 있습니다.<br> ① 타인의 권리를 침해하는 행위와 관련되거나,
														그 행위를 구성하는 게시물, 자료로서 이해 당사자의 삭제 등<br> 요청이 있거나 회사가 피소,
														고발될 수 있는 근거를 제공하는 게시물<br> ② 서비스에 위해를 가할 소지가 있는 바이러스
														등이 포함된 게시물 <br> ③ 게재기한을 초과한 게시물 <br> ④ 다른 회원의
														서비스 이용에 현저한 지장을 초래하는 게시물<br> 2. 회원의 게시물이 정보통신망법 및
														저작권법 등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의
														게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취하여야 합니다. <br>
														<br> 3. 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가
														있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을
														취할 수 있습니다.<br> <br> - 제16조 (게시물에 대한 권리 및 책임)<br>
														1. 회사의 이름으로 게시된 모든 게시물에 대한 저작권은 회사에 귀속됩니다. 회사의 허가 없이 타인에
														의해 게시물이 다른 사이트에서 사용 또는 인용되는 것은 금지 됩니다.<br> <br>
														2. 회원이 게재한 게시물에 대한 저작권은 회원의 소유에 속합니다. 다만 회원은 회사에 무료로 이용할 수
														있는 권리를 허락한 것으로 봅니다. <br> <br> 3. 전항의 의사 표시는 회사가
														공지, 서비스 이용안내에서 정한 바에 따라 철회 할 수 있습니다. <br> <br> -
														제17조 (광고에 대한 동의)<br> 회원은 회사가 광고, 정보 등을 회원에게 전자우편 등의
														방법으로 송신하는 것에 대하여 이 약관을 통하여 동의합니다<br> <br> <br>
														제5장 이용제한 및 계약해지 <br> <br> - 제18조 서비스 제공의 중지<br>
														1. 회사는 다음 각 호의 1에 해당하는 경우에는 사전통지 없이 이용계약을 해지하거나 회원의 서비스
														이용을 일부 또는 전부 제한할 수 있습니다.<br> ① 서비스용 설비의 보수 등 공사로 인한
														부득이한 경우 <br> ② 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을
														경우 <br> ③ 기타 불가항력적 사유가 있는 경우<br> 2. 회사는 국가비상사태,
														정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는
														서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다. <br> <br> -
														제19조 (서비스 이용제한)<br> 1. 회사는 회원이 다음 각호의1에 해당하는 경우에는 회원의
														서비스 이용을 일부 또는 전부 제한할 수 있습니다.<br> ① 제12조 각항의 규정에 따른
														의무를 이행하지 않는 경우 <br> ② 타인명의 신청 또는 허위의 신청, 중복가입인 것이 확인된
														경우 <br> ③ 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우 <br>
														④ 수신자의 의사에 반하는 광고성 정보, 전자우편을 지속적으로 전송하는 경우 <br> ⑤
														정보통신설비의 오작동이나 정보 등의 파괴를 유발하는 컴퓨터 바이러스 등을 유포하는 경우 <br>
														⑥ 타인의 지적재산권을 침해하는 경우 <br> ⑦ 서비스를 이용하여 타인의 명예를 훼손하는
														행위를 하는 경우 <br> ⑧ 정보통신윤리위원회로부터의 이용제한 요구대상인 경우 <br>
														⑨ 선거관리위원회의 유권해석상의 불법선거운동을 하는 경우 <br> ⑩ 다른 회원의 회원 아이디를
														부정하게 사용하는 경경우 <br> ⑪ 서비스를 이용하여 얻은 정보를 회사의 동의 없이 상업적으로
														이용하는 경우 <br> ⑫ 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지하는
														경우<br> 2. 전항의 규정에 의하여 회원의 이용을 제한하는 경우의 제한의 종류 및 기간 등
														구체적인 기준은 회사의 공지, 이용안내에서 별도로 정하는 바에 의합니다.<br> <br>
														- 제20조 (이용제한 및 해제절차)<br> 1. 회사는 사전 통지 없이 바로 전조의 이용제한
														조치를 할 수 있습니다.<br> 2. 회사로부터 이용제한 조치를 받은 회원은 회사에 이의를
														제기할 수 있으며, 회사는 이의제기일로부터 일주일 이내에 그 사유를 회원에게 통지하여야 합니다.<br>
														3. 회사는 이용제한 기간 중에 그 사유가 해소된 것이 확인된 경우에는 제한조치를 즉시 해제합니다.<br>
														<br> 제6장 계약 해지 및 이용요금 <br> <br> - 제21조
														(계약해지)<br> 1. 회원은 언제든지 회원정보관리 화면 또는 고객센터 등을 통하여 이용계약
														해지 신청을 할 수 있으며, 회사는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다<br>
														<br> 2. 회원이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 회사가 회원정보를
														보유하는 경우를 제외하고는 해지 즉시 회원의 모든 데이터는 소멸됩니다.<br> <br>
														3 회원이 계약을 해지하는 경우, 회원이 작성한 게시물 중 본인 계정에 등록된 게시물 일체는 삭제됩니다.
														다만, 타인에 의해 담기, 스크랩 등이 되어 재게시되거나, 공용게시판에 등록된 게시물 등은 삭제되지
														않으니 사전에 삭제 후 탈퇴하시기 바랍니다.<br> <br> 4. 회사는 제20조의
														제1항 각호의 사유가 있을 경우 이용계약을 해지할 수 있습니다.<br> <br> -
														제22조 (이용요금)<br> 1. 별도로 표시한 유료 서비스를 제외한 서비스는 회원들에게 무료로
														제공됩니다.<br> 2. 유료 서비스의 이용요금 및 결제방식은 해당 서비스에서 명시한 규정 및
														관련 법령에 따릅니다.<br> <br> 제7장 손해배상 등 <br> <br>
														- 제23조 (손해배상)<br> 무료서비스의 이용과 관련하여 회사는 고의가 없는 한 회원에게
														발생한 손해를 배상하지 않습니다. <br> <br> - 제24조 (면책조항)<br>
														1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스
														제공에 관한 책임이 면제됩니다.<br> <br> 2. 회사는 회원의 귀책사유로 인한
														서비스 이용의 장애에 대하여는 책임을 지지 않습니다.<br> <br> 3. 회사는
														회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지
														않습니다.<br> <br> 4. 회사는 회원 간 또는 회원과 제3자 상호간에 서비스를
														매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.<br> <br> 5. 회사는
														무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다. <br>
														<br> - 제25조 (관할법원)<br> 요금 등 서비스 이용으로 발생한 분쟁에 대해
														소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 관할법원으로 합니다. <br> <br>
														[부칙] <br> 본 약관은 2018년 5월 31일부터 적용됩니다.<br>
													</li>
													<button class="join_btn" onclick="mb.join(); return false;">회원가입
														완료</button>
													<!-- Mobon Tracker v3.1 [전환] start -->
													<script type="text/javascript">
													<!--
														function mobConv() {
															var cn = new EN();
															cn
																	.setData(
																			"uid",
																			"mkbiz2000");
															cn.setData(
																	"ordcode",
																	"");
															cn.setData("qty",
																	"1");
															cn.setData("price",
																	"1");
															cn
																	.setData(
																			"pnm",
																			encodeURIComponent(encodeURIComponent("counsel")));
															cn.setSSL(true);
															cn.sendConv();
														}
													//-->
													</script>
													<script src="https://cdn.megadata.co.kr/js/enliple_min2.js"
														defer="defer" onload="mobConv()"></script>
													<!-- Mobon Tracker v3.1 [전환] end -->
												</ul>
											</fieldset>
										</form>
									</div>
								</div>
								<!-- //회원가입 영역-->
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