<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <c:set var="context" value="${pageContext.request.contextPath }"/>
<head>
<meta http-equiv="Content-Language" content="ko" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

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
<style>
	.content_admin {
	width:100%;
	margin-left: 200px;
	margin-right: 210px;
	padding-left: 9px;
	padding-right: 9px;
	border-left: 1px solid #ffffff;
	border-right: 1px solid #ffffff;
	font-size: 15px;
	font-weight:bold;
	line-height: 15px;
	height: 100%;	
}

.content_admin a {
	display: block;
	margin-bottom: 20px;
	border: 1px solid #ffffff;
	text-align: center;
	color:gray;
}

.content_admin a:hover {
	border: 1px solid #c0c0c0;
	color:blue;
}
.content_admin h1 {
	margin: 9px 0 9px 0;
	padding: 7px 0 7px 12px;
	font-size: 15px;
	font-weight:bold;
	color:white;
	background-color: #2979fe;	
}

</style>
	<script type="text/javascript">
		//	The menu on the left
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
		
		<div id="container" style="width:1300px;">
		<div class="content_admin">
			<table style='width:100%; height:400px;border:1px solid gray;border-collapse: collapse;'>
				<tr>
					<td style="width:200px;border:1px solid gray;border-collapse: collapse;">
						<jsp:include page="left_menu.jsp" />
					</td>
					<td >
					<c:choose>
					<c:when test="${result eq 'mg_board' }">
						<jsp:include page="mg_board.jsp" />
					</c:when>
					<c:when test="${result eq 'mg_item' }">
						<jsp:include page="mg_item.jsp" />
					</c:when>
					<c:when test="${result eq 'mg_member' }">
						<jsp:include page="mg_member.jsp" />
					</c:when>
					<c:when test="${result eq 'reg_item' }">
						<jsp:include page="reg_item.jsp" />
					</c:when>
					<c:otherwise>
						<jsp:include page="reg_item.jsp" />
					</c:otherwise>
				</c:choose>
					
					
					</td>
				</tr>
			</table>
			</div>
			
		</div>

	
			
		</div>


		
</body>
</html>