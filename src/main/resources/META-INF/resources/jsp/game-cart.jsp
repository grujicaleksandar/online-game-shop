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
.cart-div{

margin-left:20px;
padding:10px;
box-sizing: border-box;


}
.cart-div table th{



}
.cart-table th{
margin-right:20px;
}
.shopping a:link,
.shopping a:visited{
	
	border: 1px solid #47494c;
	background-color:#47494c;
	color:white;
	text-decoration:none;
	font-size:14px;
	padding:8px 12px;
	margin-left:10px;
	
	border-radius:200px;
	
	
}
.shopping a:hover,
.shopping a:active{
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
<div class="cart-div">
<h1>Your Cart</h1>
<table class="cart-table">
<tr>
<th><h3>Game</h3></th>
<th><h3>Price</h3></th>
</tr>
<c:forEach var="entry" items="${cartItems}">
<tr>
 <td><c:out value="${entry.key}"/></td>
  <td><c:out value="${entry.value}"/>$</td>
  <td>&nbsp;<a href="deleteItem/${entry.key}">Remove from Cart</a></td>
  </tr>
</c:forEach>
</table>
<h2>Total : ${sum} $</h2>
</div>
<div class="shopping">
<p>
<a href="/">Continue Shopping</a>&nbsp;&nbsp;<a href="shipping_address">Checkout</a>
<br>
<br>
</p>
</div>
</div>
<div class="footer">
&copy; Copyright : GameShop

</div>
</body>
</html>