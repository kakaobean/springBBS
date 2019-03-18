<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
					function loginToggle() {
						var login = document.getElementById("loginToggle");
						var logout = document.getElementById("logoutToggle");
						
						if (logout.style.display == "none") {
							login.style.display = "none";
							logout.style.display = "block";
						} else {
							login.style.display = "block";
							logout.style.display = "none";
						}
					}
					function joinToggle(){
						var join = document.getElementById("joinToggle");
						var my = document.getElementById("myToggle");
						
						if (my.style.display == "none") {
							join.style.display = "none";
							my.style.display = "block";
						} else {
							join.style.display = "block";
							my.style.display = "none";
						}
					}
				</script>
				<div class="util-link">
					<div class="rel-svc">
						<dl>
							<dt>KT BIGSight 서비스</dt>
							<%--<dd class="first" id="loginToggle"><a href="<c:url value = "/member/login"/>" >LOGIN</a></dd> --%>
							<dd class="first" id="loginToggle">
								<a href="/community/member/login" onclick="loginToggle()">LOGIN</a>    <!-- #으로 하면 reload  #/ 하면 refresh 안됨 -->
							</dd>
							<dd class="first" style="display: none" id="logoutToggle">
								<a href="#" onclick="loginToggle()">LOGOUT</a>
							</dd>
							<dd class="line-bar" id="joinToggle">
								<a href="/community/member/regist" onclick="joinToggle()">회원가입</a>
							</dd>
							<dd class="line-bar" style="display: none" id="myToggle">
								<a href="#" onclick="joinToggle()">마이페이지</a>
							</dd>
						</dl>
					</div>
				</div>
				
				<div id="header" ui-view="header" class="ng-scope">
					<div class="header ng-scope">
						<h1>
							<a href="/community"/><img
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