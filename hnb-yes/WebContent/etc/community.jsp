<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<link rel="stylesheet" href="css/main.css" type="text/css" media="screen" />
<title>yeSooL Community</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
	    <!---strat-slider---->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
	    <link rel="stylesheet" type="text/css" href="css/slider-style.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<!---//strat-slider---->
		<!---start-login-script--->
		<script src="js/login.js"></script>
		<!---//End-login-script--->
		<!-----768px-menu----->
		<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="js/jquery.mmenu.js"></script>
			<script type="text/javascript">
				//	The menu on the left
				$(function() {
					$('nav#menu-left').mmenu();
				});
		</script>
		<!-----//768px-menu----->
	</head>
	<body>
		<!---start-wrap---->
		<!------start-768px-menu---->
			<div id="page">
					<div id="header">
						<a class="navicon" href="#menu-left"> </a>
					</div>
					<nav id="menu-left">
						<ul>
						<li><a href="about.html">yeSooL</a></li>
						<li><a href="product.jsp">Product</a></li>
						<li><a href="community.jsp">Community</a></li>
						<li><a href="comment.jsp">Comment</a></li>
							<div class="clear"> </div>
						</ul>
					</nav>
			</div>
		<!------start-768px-menu---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="header-left">
					<div class="logo">
						<a href="index.jsp">yeSooL</a>
					</div>
				</div>
				<div class="header-right">
					<div class="top-nav">
					<ul>
						<li><a href="about.html">yeSooL</a></li>
						<li><a href="product.jsp">Product</a></li>
						<li><a href="community.jsp">Community</a></li>
						<li><a href="comment.jsp">Comment</a></li>
					</ul>
				</div>
				<div class="sign-ligin-btns">
					<ul>
						<li id="signupContainer"><a class="signup" id="signupButton" href="#"><span><i>Signup</i></span></a>
							 <div class="clear"> </div>
				                <div id="signupBox">                
				                    <form id="signupForm">
				                        <fieldset id="signupbody">
				                            <fieldset>
				                                <label for="email">Email Address <span>*</span></label>
				                                <input type="text" name="email" id="signupemail" />
				                            </fieldset>
				                            <fieldset>
				                                <label for="password">Choose Password <span>*</span></label>
				                                <input type="password" name="password" id="signuppassword" />
				                            </fieldset>
				                             <fieldset>
				                                <label for="password">Confirm Password <span>*</span></label>
				                                <input type="password" name="password" id="signuppassword1" />
				                            </fieldset>
				                            <fieldset>
				                                <label for="address">Address <span>*</span></label>
				                                <input type="text" name="address" id="signupaddress" />
				                                <input type="button" name="findaddress" id="signupfindaddress" value="Find address"/>
				                                <input type="text" name="address2" id="signupaddress2" />
				                            </fieldset>
				                            <input type="submit" id="signup" value="Register Now!" />
				                        </fieldset>
				                    </form>
				                </div>
				            <!-- Login Ends Here -->
						</li>
						<li id="loginContainer"><a class="login" id="loginButton" href="#"><span><i>Login</i></span></i></a>
							 <div class="clear"> </div>
				                <div id="loginBox">                
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
				                </div>
				            <!-- Login Ends Here -->
						</li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
			</div>
			</div>
			<!---//End-header----> 
</head>
<body>

<div id="wrap">

	<div id="header">
		
	</div>

	<div id="main-menu"> <!-- Main navigation menu -->
		<ul id="nav">
			<li><a href="notice.jsp">Notice</a></li>
			<li><a href="qna.jsp">QnA</a></li>
			<li><a href="evnet.jsp">Event</a></li>
		</ul>
	</div>

	<div id="container"><!-- Center contents (frame)-->
		<div id="content"><!-- Center contents (Print Community board) start-->
			<div id="url-navi">yeSooL Community</div> 
			

<h1>Print! Comment board</h1>





		</div> <!-- Center contents (Print Community board)  end-->
	</div><!--  container end -->
	
	<div id="sidebar"> <!-- center _ left _ menu start -->
		<h1>yeSooL</h1>
		<ul>
			<li><a href="#">Community</a>
				<ul>
					<li><a href="notice.jsp">Notice</a></li>
					<li><a href="qna.jsp">QnA</a></li>
					<li><a href="evnet.jsp">Event</a></li>
				</ul>
			</li>
		</ul>
	</div>  <!-- center _ left _ menu end -->
	
	<div id="extra"> <!-- Center _ right _ images start -->
		<a href="http://www.youtube.com"><img src="images/1.png" alt="" /></a>
		<a href="http://www.twitter.com"><img src="images/2.png" alt="" /></a>
		<a href="http://www.youtube.com"><img src="images/1.png" alt="" /></a>
		<a href="http://www.twitter.com"><img src="images/2.png" alt="" /></a>			
	</div> <!-- Center _ right _ images end -->

	<!-- <div id="footer"> footer_ver.01
		<ul>
			<li><a href="#">이용약관</a></li>
			<li><a href="#">개인정보보호정책</a></li>
			<li><a href="#">이메일무단수집거부</a></li>
			<li id="company-info">전화 : 02-123-5678, FAX : 02-123-5678<br />
			people@ggmail.org<br />
			Copyright yeSooL All Rights Reserved.</li>
			<li><a href="mapview.jsp">찾아오시는 길</a></li>
		</ul>
	</div> -->
	
</div> <!-- Wrap end -->

	<!---start-bottom-footer-grids_footer_ver.02---->
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
								<li><a href="notice.jsp">Notice</a></li>
								<li><a href="qna.jsp">Q n A</a></li>
								<li><a href="evnet.jsp">Event</a></li>
								<li><a href="mapview.jsp">View map</a></li>
							</ul>
						</div>
						<div class="footer-grid">
							<h3>Connect With Us</h3>
							<ul class="social-icons">
								<li><a class="facebook" href="facebook.com" title="facebook"> </a></li>
								<li><a class="twitter" href="twitter.com" title="twitter"> </a></li>
								<li><a class="youtube" href="youtube.com" title="youtube"> </a></li>
							</ul>
							<p class="copy-right">Template by <a href="#">W3layouts</a></p>
						</div>
						<div class="footer-grid">
							<h3>Calendar</h3>
							<li> Calendar space </li>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<!---//End-bottom-footer-grids---->

</body>
</html>