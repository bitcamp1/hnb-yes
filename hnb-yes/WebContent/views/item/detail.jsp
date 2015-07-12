<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="context" value="${pageContext.request.contextPath }"/>    
<html>
	<head>
		<title>yeSooL Product Detail</title>
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="../image/x-icon" href="../images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script src="../js/login.js"></script>
		<style type="text/css">
			#item_detail tr td{border : 2px solid gray;padding: 0; margin: 0 auto;width:1000px;}
		</style>
		<link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
			<script type="text/javascript">
				//	The menu on the left
				$(function() {
					$('nav#menu-left').mmenu();
				});
		</script>
		<!-----//768px-menu----->
	</head>
	<body>
					
						<table id='item_detail'>
							<tr >
								<td colspan="2" align="center" valign="middle">
									<img src ="${context }/${item.imgName}" height="250px;" width="250px;">
								</td>
								
								 <%-- <td rowspan="10" align="center" valign="middle">
									<jsp:include page="right_menu.jsp" />	
								</td> --%>
								  
							</tr>	
									<tr>
									<td> 상품명 : </td> <td > ${item.itemName } </td>
									</tr>		
								<tr>
									<td> 상품 종류 : </td> <td>${item.cateName } </td>
							   </tr>
							   <tr>
									 <td> 상품 용량 : </td> <td> ${item.capa }</td>
							   </tr>
							   <tr>
									 <td> 상품 가격 : </td> <td> ${item.price }</td>
								</tr>
							  <tr>
									 <td> 용 량 : </td> <td> ${item.capa } ml</td> 
								</tr>
								<tr>
									  <td> 설 명 : </td> <td> ${item.description }</td>
								</tr>	
							 <tr>
									<td> 원 산 지 : </td> <td> ${item.pdOrg }</td>
								</tr>
								 <tr>
									  <td> 판매유형 : </td> <td> ${item.saleType }</td>
								</tr>												   								   
						 
					
								<tr>
								
							
							</tr>
							<tr align="center" valign="middle">
								<td colspan="3" align="center" valign="middle">
									<img src ="${context }/${item.bigImg}" height="800px;" width="800px;"/>
								</td>
							</tr>
								
						</table>
							
							
	</body>
</html>
