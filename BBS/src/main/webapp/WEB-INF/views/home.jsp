<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<%-- <script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script> --%>
<!-- <script src="../static/js/jquery-3.3.1.min.js"></script> -->
<%-- <script src="<c:url value="/Community/src/main/webapp/WEB-INF/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script> --%>
<script type="text/javascript">
	$().ready(function(){
		$("#clickTest").click(function(){
			alert();
		});
	});
</script>
<body>

<P>  The time on the server is ${serverTime}. </P>
	<div>
		<input type="button" id="clickTest" />
	</div>
</body>
</html>
