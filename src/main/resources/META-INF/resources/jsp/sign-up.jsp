<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Game Shop</title>
<style>
.main-nav {
	position: relative;
	top: -20px;
	height: 55px;
	margin-bottom: -15px;
}

#container {
	padding-bottom: 30px;
}

.ul-nav {
	margin-bottom: 5px;
}

.div-form {
	width: 100%;
	position: relative;
	top: 20px;
	right: -70px;
}

.game-table {
	position: relative;
	top: 40px;
}

.ul-nav li a {
	
}

.sign-up form {
	width: 50%;
	margin: auto;
	padding: 20px;
}

.sign-up input[type=text], .sign-up input[type=submit] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px auto;
	box-sizing: border-box;
}

.sign-up input[type=submit] {
	background-color: #47494c;
	border: 1px solid #47494c;
	border-radius: 10px;
	margin-bottom: 40px;
	margin-top: 20px;
	color: white;
}

.sign-up input[type=submit]:hover {
	
	background-color: white;
	border: 1px solid #47494c;
	border-radius: 10px;
	margin-bottom: 40px;
	margin-top: 20px;
	color: black;
	cursor: pointer;
	transition: background-color 0.2s, color 0.2s;
}

label {
	display: block;
}

.footer {
	margin-top: 20px;
	background-color: #47494c;
	height: 50px;
	text-align: center;
	font-size: 14px;
	color: white;
	padding-top: 20px;
	padding-bottom: 20px;
	box-sizing: border-box;
}
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
<body>
<% if(session.getAttribute("usersess")!=null){
%>
<header>
<div class="banner"></div>
<div class="navbar">
  <a href="/">Home</a>
   <a href="category">Categories</a>
  <a href="aboutus">About Us</a>
  <a href="contact">Contact Us</a>
  <a href="cartFromNav">My Cart</a>
  <div class="dropdown">
    <button class="dropbtn">My Account 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="userinfo">View Account</a>
      <a href="signout">Sign Out</a>

    </div>
  </div> 
</div>

</header>
<% 
}
else{
%>

<header>
<div class="banner"></div>
<div class="navbar">
  <a href="/">Home</a>
   <a href="category">Categories</a>
  <a href="aboutus">About Us</a>
  <a href="contact">Contact Us</a>
  <a href="signin">Sign in</a>
  <a href="signup">Sign up</a>
  
</div>

</header>
<% 
}
%>
	<div id="container">
		<div class="sign-up">
		
			<form:form action="processSignUp" modelAttribute="user">
				<label>First Name</label>
				<form:input path="firstName" />&nbsp;<form:errors path="firstName" cssStyle="color:red"></form:errors><br>
				<br>
				<label>Last Name</label>
				<form:input path="lastName" />&nbsp;<form:errors path="lastName" cssStyle="color:red"></form:errors><br>
				<br>
				<label>Email</label>
				<form:input path="email" />&nbsp;<form:errors path="email" cssStyle="color:red"></form:errors><br>
				<br>
				<label>Username</label>
				<form:input path="username" />&nbsp;<form:errors path="username" cssStyle="color:red"></form:errors><br>
				<br>
				<label>Password</label>
				<form:input path="password" />&nbsp;<form:errors path="password" cssStyle="color:red"></form:errors><br>
				<br>
				<input type="submit" value="Sign up!">
			</form:form>

		</div>


	</div>
	<div class="footer">&copy; Copyright : GameShop</div>
</body>
</html>