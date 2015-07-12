<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:set var="context" value="${pageContext.request.contextPath }"/>
    <div class="header-left">
				<div class="logo">
					<a href="${context }/control/common.do"><img src="${context }/img/common-logo.png" alt=""/></a>
				</div>
			</div>
			<div class="header-right">
				<div class="top-nav">
					<ul>
						<li><a href="${context }/control/item.do?command=list">제 품</a></li>
						<li><a href="${context }/control/board.do">게시판</a></li>
						<li><a href="${context }/control/guest.do">방명록</a></li>
						<li><a href="${context }/control/admin.do" > 관리자</a></li>
						<li><a href="${context }/control/about.do">회사소개</a></li>
						<li><a href="#">회원가입</a></li>
						<li ><a href="#">로그인</a></li>
					</ul>
				</div>
			
				
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
<script>
	function about(){
		
	}
</script>
