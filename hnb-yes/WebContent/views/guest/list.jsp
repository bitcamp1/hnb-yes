<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<div >
<table id='lst_guest' style='width:100%; border:1px solid gray;'>
	<tr align="right">
	<td colspan="6">
			<font size="2"> 레코드 갯수 : ${totCount}</font>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr style=' text-align: center;background-color:rgb(781,833,130); border:1px solid gray' >
		<th>글번호</th>
		<th>사번</th>
		<th>이름</th>
		<th>제목</th>
		<th>날짜</th>
		<th>급여</th>
	</tr>
	<c:forEach var="guest" items="${list}"  varStatus="status">
		<tr style="text-align: center">
			<%-- <td style='width:10%;'>${status.index+10-1}</td> --%>
			<td style='width:10%;'>${totCount-status.index}</td>
			<td style='width:10%;'>${guest.sabun}</td>
			<td style='width:20%;'>${guest.name}</td>
			<td style='width:30%;'><a href="${context}/control/guest.do?command=detail&keyword=${guest.sabun}">${guest.title}</a></td>
			<td style='width:20%;'>${guest.nalja}</td>
			<td style='width:10%;'>${guest.pay}</td>
		</tr>
	</c:forEach>
	<tr align="center">
		<td colspan="6">
			<c:if test="${startPage-PAGESIZE gt 0}">
				<a href="${context}/control/guest.do?command=main&pageNO=${startPage-PAGESIZE}">◀이전</a>
			</c:if>
			<c:forEach begin="${startPage}" end="${lastPage}" step="1" varStatus="i">
				 <c:choose>
					 <c:when test="${i.index == pageNO }">
						<font color=red>${i.index}</font>
					</c:when> 
					 <c:otherwise>
						<a href="${context}/control/guest.do?command=main&pageNO=${i.index}">${i.index}</a>
					</c:otherwise> 
				</c:choose>
			</c:forEach>
			<c:if test="${startPage+PAGESIZE le totPage}">
				<a href="${context}/control/guest.do?command=main&pageNO=${startPage+PAGESIZE}">다음▶</a>				
			</c:if>
		</td>
	</tr>
	
	<tr align="center">
		<td colspan="6">
			<form action="${context}/control/guest.do" method="post">
				<select name="keyField" id="">
					<option value="name" selected="selected">이 름</option>
				<!-- 	<option value="name">이 름</option>
					<option value="title">제 목</option>
					<option value="content">내 용</option> -->
				</select>
				<input type="text" name="keyword" value="" />
				<input type="hidden" name="pageNO" value='1'/>
				<input type="hidden" name="command" value="main"  />
				<input type="submit" value="검 색" />
			</form>
										
		</td>
	</tr>
 </table>
 </div>
