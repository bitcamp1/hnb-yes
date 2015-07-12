<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
  	td{border-bottom:1px solid grey;}
  	#admin td{text-align:center; font-weight:bold; }
</style>

<h1>admin board</h1>
<div id="content">
	 

	<form action="/item/add.do">
	<div></div>
	<a href=""></a>
	<table  style="border: solid 1px gray; width:100%;border-collapse: collapse; " >				
		<tr><td >상품 사진 </td> <td><input type="file" name=product_image_upload></td></tr>
		<tr><td>상품 종류 </td> <td><input type=text name=product_sort>
		
	<select id ="category">
		<option value="soju">소주</option>
		<option value="beer">맥주</option>
		<option value="yangju">양주</option>
		<option value="wine">와인</option>
		<option value="jeonju">전통주</option>
	</select>
		
		</td></tr>
		<tr><td>선물용 </td> <td><input type=radio name=present_check value="present_true">선물용
														<input type=radio name=present_check value="present_false" checked=checked>일반
		</td></tr>
		<tr><td>상품 이름 </td> <td><input type=text name=product_name></td></tr>
		<tr><td>상품 용량 </td> <td><input type=text name=product_capacity></td></tr>
		<tr><td>상품 가격 </td> <td><input type=text name=product_price></td></tr>
		<tr><td>상품 할인률 </td> <td><input type=text name=product_discount></td></tr>
		<tr><td>상품 재고량 </td> <td><input type=text name=product_stock></td></tr>
		<tr><td>상품 설명 </td> <td><textarea  cols="50" rows="10" onclick="this.select()" onfocus="this.select()" id="product_description_text"></textarea></td></tr>
		<tr><td>상품 상세 이미지 </td> <td><input type="file" name=product_description_upload></td></tr>
		<tr><td>전송 </td> <td><input type="submit" value="Submit"> &nbsp; 
		                                            <input type="reset" value="Reset"></td>
		</tr>		
	</table>
	</form>
</div>