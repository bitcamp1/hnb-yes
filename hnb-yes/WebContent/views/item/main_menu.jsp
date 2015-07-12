<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="context" value="${pageContext.request.contextPath }"/>
<style>
	.main_menu{list-style-type: none; height: 50px;width:100%;margin: auto;}
	.main_menu li{float:left;padding-right: 50px;}
</style>
<ul class="main_menu">
	<li><a href="${context}/control/item.do?command=soju">소 주</a></li>
	<li><a href="${context}/control/item.do?command=beer">맥 주</a></li>
	<li><a href="${context}/control/item.do?command=yangju">양 주</a></li>
	<li><a href="#">전통주</a></li>
	<li><a href="#">선물용</a></li>
</ul>