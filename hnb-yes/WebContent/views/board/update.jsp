<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
	function boardUpdateFormSubmit(flag) {
		alert("flag = "+ flag);
		boardUpdateForm.action = "boardUpdate.do?flag=" + flag;
		boardUpdateForm.submit();
	}
</script>

<form name="boardUpdateForm" method="post" >
	<input type="hidden" name="num" value="num">

	<table border="1">
		<tr>
			<td align="center" colspan="2" bgcolor="#eeeeee">
				<font size=5 color="green"><b> 글 수정 </b></font>
			</td>
		</tr>
		
		<tr>
			<td align="center">글번호</td>
			<td>
				<input type="text" id="boardNo" name="boardNo" 
						size="100" value="${bean.boardNo}" readOnly></td>
		</tr>		
		<tr>
			<td width="100" align="center">작성자</td>
			<td width="600">
				<input type="text" id="boardWriter" name="boardWriter" 
						size="100" value="${bean.boardWriter}" readOnly></td>
		</tr>
		<tr>
			<td align="center">글제목</td>
			<td>
				<input type="text" id="boardTitle" name="boardTitle" 
						size="100" value="${bean.boardTitle}"></td>
		</tr>
		<tr>
			<td align="center">게시글  내 용</td>
			<td>
				<textarea name="boardContent" rows="20" cols="75">${bean.boardContent}</textarea></td>
		</tr>

		<tr>
			<td colspan="2" align="center">
				<input type="button" value="글수정" onClick="javascript:boardUpdateFormSubmit(1)">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="글삭제" onClick="javascript:boardUpdateFormSubmit(2)">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="목록보기" onClick="window.location.href='boardList.do'">
			</td>
		</tr>
	</table>
</form>
