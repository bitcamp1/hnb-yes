<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="context" value="${pageContext.request.contextPath }"/>
     <table>
	    <tr>
	    	<td><a href="${context }/control/item.do?command=detail&imgName=budwiser"><img src="../img/product-beer-budwiser.jpg" alt=""  /></a></td>
	    	<td><a href="${context }/control/item.do?command=detail&imgName="><img src="../img/product-beer-cafri.jpg" alt=""  /></a></td>
	    	<td> <a href="${context }/control/item.do?command=detail&imgName"><img src="../img/product-beer-hitebottle.jpg" alt=""   /></a></td>
	    	<td><a href="${context }/control/item.do?command=detail&imgName"><img src="../img/product-beer-max.jpg" alt=""  /></a></td>
	    </tr>
	    <tr>
	    	<td> <a href="${context }/control/item.do?command=detail&imgName="><img src="../img/product-beer-ob.jpg" alt=""   /></a></td>
	    	<td><a href="${context }/control/item.do?command=detail&imgName="><img src="../img/product-beer-redrock.jpg" alt=""  /></a></td>
	    	<td><a href="${context }/product/item.do?command=detail&imgName="><img src="../img/product-beer-stout.jpg" alt=""   /></a></td>
	    	<%-- <td><a href="${context }/product/item.do?command=detail&imgName"><img src="../img/product-soju-hanra.gif" alt=""   /></a></td> --%>
	    </tr>
    </table>
   