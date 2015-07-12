<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!doctype html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<link rel="stylesheet" href="../css/main.css" type="text/css" media="screen" />
<title>yeSooL homepage</title>
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="../images/fav-icon.png" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/slider-style.css" />
<script type="text/javascript" src="../js/modernizr.custom.28468.js"></script>
<script src="../js/login.js"></script>
<link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
<script type="text/javascript" src="../js/jquery.mmenu.js"></script>
	<script type="text/javascript">
		$(function() {
			$('nav#menu-left').mmenu();
		});
</script>
		
</head>
<body>
	<div class="wrap">
		<div class="header">
			<jsp:include page="../common/header.jsp" />
		</div>
	
		<div class='container'>
			<div id="content">
				<div id="url-navi">yeSooL Community</div>
						<c:choose>
				<c:when test="${result eq 'detail'}">
					<jsp:include page="detail.jsp"/>
				</c:when>
				<c:otherwise>
					<jsp:include page="list.jsp"/>	
				</c:otherwise>
				</c:choose>
			</div>
		</div>
		</div>
		
		

		<jsp:include page="../common/bottom.jsp" />
	
</body>
</html>