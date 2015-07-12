<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="../../css/board.css" />
<script type="text/javascript" src="../../js/board.js"></script>
<script type="text/javascript">
	function boardUpdateSubmit(boardNo) {
		alert("boardNo = "+ boardNo);
		window.location.href = "boardUpdateParam.do?boardNo=" + boardNo ;
	}
</script>


<form name="boardListForm" method="post" action="boardList.do" >
	<input type="hidden" id="pageNum" name="pageNum" >

	<table style='width:100%;'>
		<tr>
			<td align="left">&nbsp;
				<font size="4" color="#0000ff">건수 :</font>
				<font size="4" color="#ff0000">${totalRecord}</font>
			</td>
			<td colspan=4 align="right">
				<input type="radio" name="searchKey" value="boardTitle" checked="checked">글제목
				<input type="radio" name="searchKey" value="boardWriter">작성자
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" name="searchValue" value="">
				<input type="button" onclick="javascript:boardListFormSubmit(1)" value=" 검 색 "> &nbsp;
			</td>
		</tr>
		<tr><td colspan=5 align="center"><hr></td></tr>
		
		<tr>
			<td class="td_title" width=100 align=center>순번</td>
			<td class="td_title" width=350 align=center>게시글 제목</td>
			<td class="td_title" width=100 align=center>작성자</td>
			<td class="td_title" width=100 align=center>작성일자</td>
			<td class="td_title" width=100 align=center>조회수</td>
		</tr>
		<tr><td colspan=5 align="center"><hr></td></tr>
		
	
		<tr>
			<td colspan="5" align="center" height="200px;" valign="middle">
				<h2><font color="blue">등록된 게시글이 없습니다.</font></h2>
			</td>
		</tr>
		<tr height="50">
			<td colspan="5" align="center">
				<h2><a href="${context }/control/board.do?command=write">게시글 등록</a></h2>
							</td>
		</tr>
	</table>
</form>
