<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/ui.css"/>">
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
</head>
<body>
<div ui-view="" class="ng-scope" style=""><!-- 
   Bigdata Intelligence Platform version 1.0
   
   Copyright ⓒ 2016 kt corp. All rights reserved.
   
   This is a proprietary software of kt corp, and you may not use this file except in 
   compliance with license agreement with kt corp. Any redistribution or use of this 
   software, with or without modification shall be strictly prohibited without prior written 
   approval of kt corp, and the copyright notice above does not evidence any actual or 
   intended publication of such software. 
 -->

<!-- login -->

	<div class="login_areaBg ng-scope" ng-controller="LoginController">
		<div class="login_areaImg">
			<div class="login_area">
				<div class="login_box">
					<h4><a href="#">Login</a></h4>
					<div class="login_in_box">
						<div class="left">
							<ul class="login_input  placeholder">
								<li>
									<div class="input-box-id">
										<!-- <label for="label_id" class="lbl_in" >ID</label> -->
										<input type="text" id="member_id" ng-keyup="vm.keyUp($event)" ng-model="vm.userLoginInfo.userId" name="member_id" value="" require="true" hname="아이디" tabindex="11" title="아이디 입력" placeholder="  이메일 주소 입력" class="ng-pristine ng-valid ng-not-empty ng-touched" style="">
									</div>
	
									<div class="input-box-pw">
										<!-- <label for="label_pw" class="lbl_in">PW</label> -->
										<input type="password" id="member_pw" ng-keyup="vm.keyUp($event)" ng-model="vm.userLoginInfo.userPass" name="member_pw" require="true" hname="비밀번호" tabindex="12" title="비밀번호 입력" autocomplete="off" placeholder="  비밀번호 입력" class="ng-pristine ng-untouched ng-valid ng-not-empty">
									</div>
								</li>
							</ul>
							<a href="" class="btn_login_img" ng-click="vm.doLogin()"><input type="image" title="로그인"></a>
							<div class="id-save">
								<span class="fleft">
									<input ng-model="vm.saveUseIdPassWord" ng-true-value="'Y'" ng-false-value="'N'" type="checkbox" id="p6" class="ng-pristine ng-untouched ng-valid ng-not-empty">
									<label for="p6"><em>아이디저장</em></label>
								</span>
							</div>
							
							<div class="chapthca">
								<div class="desc">오른쪽 이미지의 문자와 숫자를 보이는 대로 입력해 주세요.(대소문자 구분)</div>
								<div class="input">
									<input id="txt_catpcha" ng-keyup="vm.keyUp($event)" ng-model="vm.userLoginInfo.captchaValue" type="text" class="cocmInsiInputScrt ng-pristine ng-untouched ng-valid ng-empty" title="보안문자 입력" value="" style="ime-mode: disabled;">
									<a ng-click="vm.replaceImage()" class="tbl_btn">이미지새로고침</a>
								</div>
							</div>
							
						</div>
						<div class="right">
							<ul class="login_btn_area">
								<li>
									<span class="ment">아이디/ 비밀번호를<br>잊으셨나요?</span>
									<a href="/bdip/components/portal/index.html#/portal/join/joinUs/findId" class="linkfit"><img src="" title="아이디/비밀번호 찾기"></a>
								</li>
								<li>
									<span class="ment">KT Bigsight에<br>처음 오셨나요?</span>
									<a href="<c:url value = "/member/regist"/>" class="linkfit"><img src="" title="회원가입"></a>
								</li>
							</ul>
							
							<div class="chapthca">
								<div class="img"><img id="img_captcha" width="275" height="95" alt="" src="https://bigsight.kt.com/bdip/api/v1/common/captcha/image?key=54ba1d50-a00e-0435-3998-596e1275386e"></div>  
		                	</div>
							
						</div>
					</div>
					
					<!-- footer -->
					<div class="login_footer_area">
						<p class="footer_menu">
							<a class="menu_txt_end" href="../../components/portal/index.html#/portal/intro">서비스안내</a>
							<a class="menu_txt point" href="javascript:open_window('win','../../components/portal/intro/privacy_policy_pop.html', 0, 0, 808, 545, 0, 0, 0, 0, 0);">개인정보처리방침</a>
							<a class="menu_txt" href="../../components/portal/index.html#/portal/faq/serviceConsult">상담문의</a>
						</p>
						<p>Copyright © 2016 kt corp. All rights reserved.</p>
					</div>
					<!-- //footer -->
				</div>
			</div>
		</div>
	</div>
	
	<!-- layerpopup -->
	<div class="reportpopup ng-scope" style="width:400px; display:none;" id="pwdExpired">
		<!-- 타이틀 -->
		<h1>비밀번호 변경</h1>
		<!-- 내용 -->
		<div class="guideCont">
		
			<!-- form -->
			<!-- 관광지속성 -->
			<div class="titwrap">
				<h3 class="tit2">비밀번호를 변경해주세요.</h3>
			</div>		
		
			<div class="tit-help">
				<span>개인정보 도용으로 인한 피해를 방지하고자 3개월 주기로 비밀번호 변경을 안내해 드리고 있습니다.</span>
			</div>
		
			<!-- 버튼 -->
			<div class="btnwarp tac mt20 mb10">
				<a href="#" ng-click="updatePwd('portal.mypage.userPasswordChange');" class="btn1">지금 변경하기</a>
				<a href="#" ng-click="updatePwd();" class="btn1 gray">3개월 후 변경하기</a>
			</div>
			<!-- //form -->
		
		</div>
		<!-- <ng-include src="pwdChangePopup"></ng-include> -->
	</div>
	<!-- //layerpopup --> 

<!-- //login -->
</div>
</body>
</html>