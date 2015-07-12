<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	#item_tab{width:100%; border:1px solid gray;}
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
 	<table id='item_tab' style='width:100%; border:1px solid gray;'>
	<tr align="right">
	<td colspan="12">
			<font size="2"> 등록된 상품  : ${totCount}</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr style='align:center;border:1px solid gray'  bgcolor="yellow" >
		<th style='width:5%;'>번호</th>
		<th style='width:10%;'>제품명</th>
		<th style='width:5%;'>가격</th>
		<th style='width:15%;'>생산일</th>
		<th style='width:10%;'>용량</th>
		<th style='width:5%;'>도수</th>
		<th style='width:20%;'>상세내용</th>
		<th style='width:10%;'>원산지</th>
		<th style='width:10%;'>판매용</th>
		<th style='width:10%;'>할인율</th>
	</tr>
	<c:forEach var="item" items="${list}"  varStatus="status">
		<tr>
			<%-- <td style='width:10%;'>${status.index+10-1}</td> --%>
			<td style='width:5%;'>${totCount-status.index}</td>
			<td style='width:10%;color: red'><a href="${context}/control/item.do?command=detail&keyword=${item.itemNO}">${item.itemName}</a></td>
			<td style='width:5%;'>${item.price}</td>
			<td style='width:15%;'>${item.pdDate}</td>
			<td style='width:10%;'>${item.capa}</td>
			<td style='width:5%;'>${item.alcol}</td>
			<td style='width:20%;'>${item.description}</td>
			<td style='width:10%;'>${item.pdOrg}</td>
			<td style='width:10%;'>${item.saleType}</td>
			<td style='width:10%;'>${item.dcRate}</td>
	
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
	
	<tr align="center">
		<td colspan="12">
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
	</tr>
 </table>
</div>