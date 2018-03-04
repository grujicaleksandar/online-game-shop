<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Game Shop</title>
<style>
.main-nav{
position:relative;
top:-20px;
height:55px;
margin-bottom:-15px;

}
#container{

padding-bottom:30px;
}
.ul-nav {
margin-bottom:5px;

}
#contact-us form{

	width:50%;
	margin:auto;
	padding:20px;

}
#contact-us input[type=text],
 #contact-us input[type=submit]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px auto;
    box-sizing: border-box;
}
#contact-us input[type=submit]{

	background-color:#47494c;
	border:1px solid #47494c;
	border-radius:10px;
	margin-bottom:40px;
	margin-top:20px;
	color:white;
}
#contact-us input[type=submit]:hover{

	background-color:white;
	border:1px solid #47494c;
	border-radius:10px;
	margin-bottom:40px;
	margin-top:20px;
	color:black;
	cursor:pointer;
	transition:background-color 0.2s, color 0.2s;
}
label{
display:block;

}
textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    resize: none;
}
.footer{
margin-top:20px;
background-color:#47494c;
height:50px;
text-align:center;
font-size:14px;
color:white;
padding-top:20px;
padding-bottom:20px;
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
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

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
<div id="contact-us">
<form:form action="processForm" modelAttribute="cont">
<label>Your name</label>
<form:input path="userName"/>&nbsp;<form:errors path="userName" cssStyle="color:red"></form:errors><br>
<label>Your Email</label>
<form:input path="userEmail"/>&nbsp;<form:errors path="userEmail" cssStyle="color:red"></form:errors><br>
<label>Your Message</label>
<form:textarea path="message"/><br>
<input type="submit" value="Send message!">

</form:form>
</div>
</div>
<div class="footer">
&copy; Copyright : GameShop

</div>
</body>
</html>