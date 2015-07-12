<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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