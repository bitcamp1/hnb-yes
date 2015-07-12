<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="context" value="${pageContext.request.contextPath }"/>
<!DOCTYPE HTML>
<html>
	<head>
		<title>yeSooL homepage 4.1</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" type="text/css" href="css/slider-style.css" />
		<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
		<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<!-- <script type="text/javascript" src="js/jquery.cslider.js"></script> -->
	    <script type="text/javascript" src="js/login.js"></script>

    
   
	</head>
	<body>
		
			<%-- <div id="page">
					<div id="header">
						<a class="navicon" href="#menu-left"> </a>
					</div>
					<nav id="menu-left">
						<jsp:include page="views/common/top_nav.jsp"/>
					</nav>
			</div>		  --%>

	<div class="wrap">
		<div class="header">
			<jsp:include page="views/common/header.jsp"/>
		</div>
	

	<div class="text-slider">
		<div class="wrap">
			<jsp:include page="views/common/da_slider.jsp" />
		</div>
	</div>

	<div class="content">
		<div class="wrap">
			<jsp:include page="top_grid.jsp" />
		</div>
	</div>
	<jsp:include page="views/common/bottom.jsp"/>	
	</div>
	<script type="text/javascript">
			$(function() {
				$('#da-slider').cslider({
					autoplay	: true,
					bgincrement	: 450
				});
				addEventListener("load", function() {
					setTimeout(hideURLbar, 0);
				}, false);
				function hideURLbar(){ window.scrollTo(0,1); } 
				$('nav#menu-left').mmenu();
			});
		</script>
	</body>
</html>
