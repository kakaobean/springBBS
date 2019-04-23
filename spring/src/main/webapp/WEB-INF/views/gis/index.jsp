<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style type="text/css">

#map {
	width: 100%;
	height: 910px;
}

</style>
<meta http-equiv="Content-Type"
	content="application/xhtml+xml; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Insert title here</title>
<script src="<c:url value="/static/js/OpenLayers.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/Daum.js"/>" type="text/javascript"></script>
<script src="<c:url value="/views/gis/js/gisController.js"/>" type="text/javascript"></script>
</head>


<body onload="init()">

					<div id="map" class="smallmap">
					</div>
			<!-- //[BODY] -->

</body>
</html>