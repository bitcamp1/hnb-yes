<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}"/>

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
<div >
 	<table id='item_tab' style='width:1000px; border:1px solid gray;'>
	<tr align="right">
	<td colspan="12">
			<font size="2"> 등록된 상품  : ${totCount}</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr style='align:center;border:1px solid gray'  bgcolor="yellow" >
		<th >제품번호</th>
		<th >제품명</th>
		<th >가격</th>
		<th >생산일</th>
		<th >용량</th>
		<th >상세내용</th>
		<th >원산지</th>
		<th >판매용</th>
		<th >이미지</th>
		
	</tr>
	<c:forEach var="item" items="${list}"  varStatus="status">
		<tr>
			<td >${item.itemNO}</td> 
			<td><a href="${context}/control/item.do?command=detail&keyword=${item.itemNO}">${item.itemName}</a></td>
			<td >${item.price }</td>
			<td >${item.pdDate}</td>
			<td >${item.capa}</td>
			<td >${item.description}</td>
			<td >${item.pdOrg}</td>
			<td >${item.saleType}</td>
			<td ><img src="${context}/${item.imgName}" height="50px;" width="50px;"/></td>
		</tr>
	</c:forEach>
	<tr align="center">
		<td colspan="6">
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
	
	
 </table>


</div>