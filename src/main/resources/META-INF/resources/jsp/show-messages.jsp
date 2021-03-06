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
.welcome{

padding-top:20px;

}
.ms a:link,
.ms a:visited{
	
	border: 1px solid #47494c;
	background-color:#47494c;
	color:white;
	text-decoration:none;
	font-size:14px;
	padding:8px 12px;
	margin-left:10px;
	
	border-radius:200px;
	
	
}
.ms a:hover,
.ms a:active{
	margin-left:10px;
	border: 1px solid #47494c;
	background-color:#d7dde5;
	color:#47494c;
	text-decoration:none;
	font-size:14px;
	padding:8px 12px;
	
	border-radius:200px;
	transition: background-color 0.2s,color 0.2s;
	
	
}
h2{

padding-top:20px;

}
#message-table {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 80%;
    margin:auto;
}

#message-table td, #message-table th {
    border: 1px solid #ddd;
    padding: 8px;
}

#message-table tr:nth-child(even){background-color: #f2f2f2;}

#message-table tr:hover {background-color: #ddd;}

#message-table th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #47494c;
    color: white;
  }
.delete:link,
.delete:visited{
color:#47494c;
text-decoration:none;

}
.delete:hover,
.delete:active{
color:#47494c;
text-decoration:none;

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
<div class="messages">
<h2 align="center">Messages</h2>
<hr>
<table id="message-table">
  <tr>
    <th>Name of user</th>
    <th>Email</th>
    <th>Message</th>
  </tr>
  <c:forEach items="${messages}" var="message">
  <tr>
    <td>${message.userName}</td>
    <td>${message.userEmail}</td>
    <td>${message.message}</td>
    <td><a class="delete" href="deleteMessage/${message.id}">Delete</a></td>
  </tr>
 </c:forEach>
</table>

</div>
<div class="ms">
<h2 align="center"><a href="adminpage">Go back to admin page</a>&nbsp; <a href="admin-logout">Logout</a></h2>
</div>
</div>
<div class="footer">
&copy; Copyright : GameShop

</div>
</body>
</html>