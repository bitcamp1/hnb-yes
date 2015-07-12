<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath }"/> --%>
<div class="footer-grids">
	<div class="wrap">
		<div class="footer-grid">
			<h3>Quick Links</h3>
			<ul>
				<li><a href="index.jsp">yeSooL</a></li>
				<li><a href="product.jsp">Product</a></li>
				<li><a href="community.jsp">Community</a></li>
				<li><a href="comment.jsp">Comment</a></li>
			</ul>
		</div>
		<div class="footer-grid">
			<h3>More</h3>
			<ul>
				<li><a href="#">Notice</a></li>
				<li><a href="#">Q n A</a></li>
				<li><a href="#">Event</a></li>
				<li><a href="${context}/common/map.do">View map</a></li>
			</ul>
		</div>
		<div class="footer-grid">
			<h3>Connect With Us</h3>
			<ul class="social-icons">
				<li><a class="facebook" href="facebook.com" title="facebook">
				</a></li>
				<li><a class="twitter" href="twitter.com" title="twitter">
				</a></li>
				<li><a class="youtube" href="youtube.com" title="youtube">
				</a></li>
			</ul>
			<p class="copy-right">
				CopyRight (c) yeSOOL All right reserved <a href="#">yeSOOL Layouts </a>
			</p>
		</div>
</div>