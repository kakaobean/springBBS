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
								<a href="#" onclick="loginToggle()">LOGIN</a>
							</dd>
							<dd class="first" style="display: none" id="logoutToggle">
								<a href="#" onclick="loginToggle()">LOGOUT</a>
							</dd>
							<dd class="line-bar" id="joinToggle">
								<a href="member/regist" onclick="joinToggle()">회원가입</a>
							</dd>
							<dd class="line-bar" style="display: none" id="myToggle">
								<a href="#" onclick="joinToggle()">마이페이지</a>
							</dd>
						</dl>
					</div>
				</div>