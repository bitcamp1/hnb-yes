<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath }"/>
<!DOCTYPE HTML>
<html>
	<head>
		<title>yeSooL homepage 5.0</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<link rel="shortcut icon" type="image/x-icon" href="../images/fav-icon.png" />
		<link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
	    <link rel="stylesheet" type="text/css" href="../css/slider-style.css" />
		<script type="text/javascript" src="../js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="../js/login.js"></script>
		<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script> -->
		<script type="text/javascript" src="../js/jquery.mmenu.js"></script>
		<script type="text/javascript" src="../js/jquery.cslider.js"></script>
		<script type="text/javascript" src="js/login.js"></script>
			<!-- <script type="text/javascript">
				$(function() {
					$('nav#menu-left').mmenu();
				});
		</script> 
		<a href="${context }/admin/main.do">admin login</a> -->
	</head>
	<body>
			
			<div class="wrap">
				<div class="header">
			<jsp:include page="../common/header.jsp"/>
			</div>
			
			<div class="text-slider">
		
					<jsp:include page="da_slider.jsp"/>
			    
			</div>
		<div class="content">
			<jsp:include page="top_grid.jsp"/>
		</div>
		<jsp:include page="bottom.jsp"/>
		</div>
		<script type="text/javascript">
			$(function() {
				$('#da-slider').cslider({
					autoplay	: true,
					bgincrement	: 450
				});
			
			});
		</script>
	</body>
</html>

