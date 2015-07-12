<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	#content_product{width:1000px;}
	#item_tab{width:1000px;margin: 0 auto;}
</style>
   <c:set var="context" value="${pageContext.request.contextPath }"/>
<c:set var="PAGESIZE" value="10"/>
<c:choose>
	<c:when test="${(totCount%PAGESIZE) eq 0}">
		<c:set var="totPage" value="${totCount/PAGESIZE}"/>
	</c:when>
	<c:otherwise>
		<c:set var="totPage" value="${totCount/PAGESIZE+1}"/>
	</c:otherwise>
</c:choose>
<c:set var="startPage" value="${pageNO-((pageNO-1)%PAGESIZE) }" />
<c:choose>
	<c:when test="${startPage+PAGESIZE-1 le totPage}">
		<c:set var="lastPage" value="${startPage+PAGESIZE-1}"></c:set>		
	</c:when>
	<c:otherwise>
		<c:set var="lastPage" value="${totPage}"></c:set>
	</c:otherwise>
</c:choose> 
<div id="content_product">
 	<table id='item_tab' style='width:100%; '>
	<tr >
		<td colspan="4" style='text-align: right;'>
			<font size="4"> 등록된 전체 상품  : ${totCount}</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	
	<tr >
		<td colspan="4" style="text-align: center;">
			<font size="4"> 최근 등록된 소주 항목</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr align="center">
		 <c:forEach items="${sojuList}" var="item" begin="0" end="3" step="1"  > 
			<td align="center" >
			<a href="${context}/control/item.do?command=detail&keyword=${item.itemNO}">
			<img src="${context}/${item.imgName}" alt="소주 최근 등록 4" />
			</a></td>
		 </c:forEach> 
	</tr>
	<tr>
	
		<td style='height:100px;'></td>
	</tr>
	<tr align="center">
		<td colspan="4" >
			<font size="4"> 최근 등록된 맥주 항목</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		 <c:forEach items="${beerList}" var="item" begin="0" end="3" step="1" > 
			<td align="center" >
			<a href="${context}/control/item.do?command=detail&keyword=${item.itemNO}">
			<img src="${context}/${item.imgName}" alt="맥주 최근 등록 4" />
			</a></td>
		 </c:forEach> 
	</tr>
	<%--<tr align="center">
		<td >
			<c:if test="${startPage-PAGESIZE gt 0}">
				<a href="${context}/control/item.do?command=main&pageNO=${startPage-PAGESIZE}">◀이전</a>
			</c:if>
			<c:forEach begin="${startPage}" end="${lastPage}" step="1" varStatus="i">
				 <c:choose>
					 <c:when test="${i.index == pageNO }">
						<font color=red>${i.index}</font>
					</c:when> 
					 <c:otherwise>
						<a href="${context}/control/item.do?command=main&pageNO=${i.index}">${i.index}</a>
					</c:otherwise> 
				</c:choose>
			</c:forEach>
			<c:if test="${startPage+PAGESIZE le totPage}">
				<a href="${context}/control/item.do?command=main&pageNO=${startPage+PAGESIZE}">다음▶</a>				
			</c:if>
		</td>
	</tr>
	
	 <tr align="center">
		<td >
			<form action="${context}/control/item.do" method="post">
				<select name="keyField" id="">
					<option value="itemNO" selected="selected">제품명</option>
					<option value="itemName" >제품번호/option>
					<option value="saleType">판매용</option>
					<option value="cateName">카테고리</option>
				</select>
				<input type="text" name="keyword" value="" />
				<input type="hidden" name="pageNO"  />
				<input type="hidden" name="command" value="main"  />
				<input type="submit" value="검 색" />
			</form>
										
		</td>
	</tr> --%>
 </table>
</div>