<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#guest_edit_tab tr td{border:1px solid gray;}
</style>
	<form name="myform"  method="post" action="guest.do">
	<table id='guest_edit_tab'  style='width:50%;border:1px solid gray;padding: 50px;margin:0 auto;border-collapse: collapse;'>
		<tr>
			<td><b>사번:</b>	</td>
			<td><input type=text name="keyword" onFocus="message()" value='${guest.sabun}' readonly="readonly"> </td>
		</tr>
		<tr>
			<td><b>수정이름:</b></td>
			<td><input type=text name="name" value='${guest.name}'> <br></td>
		</tr>
		<tr>
			<td><b>수정제목:</b></td>
			<td><input type=text name="title" value='${guest.title}'> <br></td>
		</tr>
		<tr>
			<td><b>수정급여:</b></td>
			<td><input type=text name="pay" value='${guest.pay}'> <p></td>
		</tr>
		<tr>
			<td colspan="2" style='text-align: center;'>
				<input type="button" value="수정" onclick="move()"> 
				<input type="hidden" name="command" value="edit"/>
				<input type="button" value="삭제" onclick="popup()" />
				<input type="reset"  value="취소">	
			</td>
		</tr>
	
	</table>
		
	</form>
 <p>
	<script type="text/javascript">
	   function move(){
		   myform.submit();
	   }
	   function popup(){
			
		}
	</script>