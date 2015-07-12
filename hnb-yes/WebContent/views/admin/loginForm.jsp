<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<form id="loginForm">
     <fieldset id="body">
         <fieldset>
             <label for="email">Email Address</label>
             <input type="text" name="email" id="email" />
         </fieldset>
         <fieldset>
             <label for="password">Password</label>
             <input type="password" name="password" id="password" />
         </fieldset>
         <label class="remeber" for="checkbox"><input type="checkbox" id="checkbox" />Remember me</label>
         <input type="submit" id="login" value="login" />
     </fieldset>
     <span><a href="#">Forgot your password?</a></span>
 </form>