<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<script type="text/javascript">
function sortCheck(){ 
	 var i=document.insert_item.cate.selectedIndex // 선택항목의 인덱스 번호
	 var sort=document.insert_item.cate.options[i].value // 선택항목 value
	 document.insert_item.item_sort.value=sort
	}
</script>

<style type="text/css">
  	td{border-bottom:1px solid grey;}
  	#admin td{text-align:center; font-weight:bold; }
</style>

<h1>admin board</h1>
<div id="content">
	 
	<form action="      " name="update_item" method="post"> <!-- action 확인해야함  -->
	
		게시판 관리
	</form>
</div>