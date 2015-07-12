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
		</script>
		<!---start-login-script--->
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script src="../js/login.js"></script>
		<!---//End-login-script--->
		<!-----768px-menu----->
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
						<div class="wrap">
							<h1>Product <span>Detail</span></h1>
							<div class="panels">
								<div class="panel-detail">
									<table style="border: solid 1px gray; width:100%;border-collapse: collapse; ">
									<tr>
											<td><img src ="../img/product-soju-first.jpg"></td>
									</tr>
									</table>									
								</div>
								<div  class="panel-detail2">
								<table  style="border: solid 1px gray; width:100%;border-collapse: collapse;  text-align:center;">
									<tr>
										 <td> 상품명 : </td> <td> 버드와이저 </td>
									</tr>
									<tr>
										 <td> 상품 종류 : </td> <td> 미국술 - 맥주 </td>
								   </tr>
								   <tr>
										 <td> 상품 용량 : </td> <td> 750ml </td>
								   </tr>
								   <tr>
										 <td> 상품 가격 : </td> <td> 3000won </td>
									</tr>
									<tr>
										 <td> 상품 할인률 : </td> <td> 50% </td>
								   </tr>
								   <tr>
										 <td> 상품 재고량 : </td> <td> 100 </td>
								   </tr>																	   								   
									</table><br>							
									<div align=center>																	
									<form name=item_order action="                    ">
									   <input type=submit value=주문하기 > 
									   <input type=button value=재고보기 onClick="        "><p>								
								   </form>
								   </div>
									<br><br>
								</div>
								<div class="panel-right-title"><h1>[상세설명]</h1></div>
								<div class="panel-right">									
									<table style="border: solid 1px gray; width:950px;border-collapse: collapse; text-align:center">									
									<tr>
											<td style="background-color: rgb(200,760,550);">결들일 음식</td> 
											<td  style="background-color: rgb(200,760,550);">먹는 방법</td> 
											<td  style="background-color: rgb(200,760,550);"> 보관 방법</td>
									</tr>
									
									<tr>
											<td>치킨 </td> <td>맥주잔에 먹음, 기호에 따라</td> <td>냉장 보관</td>
									</tr>
									</table>			
								</div>
								
									<div class="panel-right3">
									<br>
									<h3>상세설명사진출력</h3>
								    <br>
											<img src ="../img/item-desc-budwser.jpg"><br><br>
										
								
								<div class="clear"> </div>
							</div>
						</div>
						
			</div>
			<!----//End-content--->
		<!---//End-wrap---->
	</body>
</html>
