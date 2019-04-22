<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/osm.css"/>">
<script src="<c:url value="/static/js/OpenLayers.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/Daum.js"/>" type="text/javascript"></script>
<script src="<c:url value="/views/gis/js/gisController.js"/>" type="text/javascript"></script>
</script>

</head>
<body onload="init()">
	<h1 id="title">Basic OSM Example</h1>

		
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
</body>
</html>
