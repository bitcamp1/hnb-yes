<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
	#write_tab tr td {border:1px solid gray;}
	#write_tab tr th {border:1px solid gray;}
</style>
<form onload="javascript:onloadProcess()" name="boardInsertForm" method="post" action="#" >
	<input type="hidden" name="num" value="num">
	
	<table id='write_tab' border="1" style='width:100%'>
		<tr>
			<th align="center" valign="middle" colspan="2" bgcolor="yellow" height='30'>
				<font size=5 ><b>글 쓰 기</b></font>
			</th>
		</tr>
		
		<tr>
			<th width="100" align="center">작성자</th>
			<td width="600">
				<input type="text" id="boardWriter" name="boardWriter" 
						size="170" value="${param.boardWriter}" readonly >
			</td>
		</tr>
		<tr>
			<th align="center">글제목</th>
			<td>
				<input type="text" id="boardTitle" name="boardTitle" size="170">
			</td>
		</tr>
		<tr>
		<th align="center" valign="middle">글내용</th>
			<td>
				<textarea name="boardContent" rows="20" cols="170"></textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글쓰기" onclick="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="목록보기" onClick="#">
			</td>
		</tr>
	</table>
</form>
