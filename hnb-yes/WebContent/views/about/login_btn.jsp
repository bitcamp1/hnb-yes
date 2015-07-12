<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <div class="header-left">
				<div class="logo">
					<a href="${context }/about/main.do">yeSooL</a>
				</div>
			</div>
			<div class="header-right">
				<div class="top-nav">
					<ul>
						<li><a href="#">yeSooL</a></li>
						<li><a href="#">Product</a></li>
						<li><a href="#">Community</a></li>
						<li><a href="#">Comment</a></li>
					</ul>
				</div>
				<div class="sign-ligin-btns">
					<ul>
						<li id="signupContainer"><a class="signup" id="signupButton"
							href="#"><span><i>Signup</i></span></a>
							<div class="clear"></div>
							<div id="signupBox">
								<form id="signupForm">
									<fieldset id="signupbody">
										<fieldset>
											<label for="email">Email Address <span>*</span></label> <input
												type="text" name="email" id="signupemail" />
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
											<label for="address">Address <span>*</span></label> <input
												type="text" name="address" id="signupaddress" /> <input
												type="button" name="findaddress" id="signupfindaddress"
												value="Find address" /> <input type="text" name="address2"
												id="signupaddress2" />
										</fieldset>
										<input type="submit" id="signup" value="Register Now!" />
									</fieldset>
								</form>
							</div> <!-- Login Ends Here --></li>
						<li id="loginContainer"><a class="login" id="loginButton"
							href="#"><span><i>Login</i></span></i></a>
							<div class="clear"></div>
							<div id="loginBox">
								<form id="loginForm">
									<fieldset id="body">
										<fieldset>
											<label for="email">Email Address</label> <input type="text"
												name="email" id="email" />
										</fieldset>
										<fieldset>
											<label for="password">Password</label> <input type="password"
												name="password" id="password" />
										</fieldset>
										<label class="remeber" for="checkbox"><input
											type="checkbox" id="checkbox" />Remember me</label> <input
											type="submit" id="login" value="login" />
									</fieldset>
									<span><a href="#">Forgot your password?</a></span>
								</form>
							</div> <!-- Login Ends Here --></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>