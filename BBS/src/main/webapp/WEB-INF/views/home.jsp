<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head> 
	<title>Home</title>
</head>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#clickTest").click(function(){
			alert(); 
		});
	});
	$("#child").css({
		left : 150, 
		top : 2
	});
	var test = $("#child");
	var point = test.offset();
		alert(point);
</script>
<body>
	
<P>  The time on the server is ${serverTime}. </P>
	<div>
		<input type="button" id="clickTest" />
	</div>
	<div id="child" style="width:200px; height: 200px; border: solid 1px;">
	</div>
</body>
</html>
