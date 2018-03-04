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
.image-and-text{

height:400px;

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
.category{
margin-top:10px;
background-color:#47494c;
padding:5px;
text-align:center;
color:#fff;
box-sizing: border-box;
margin-bottom:10px;

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
<div class="categories">
<div class="category"><h3>First Person Shooter</h3></div>
<table class="game-table">
<!--  <tr>
<th>Game Image</th>
<th>Game Name</th>
<th>Game Price</th>
</tr>
-->
<c:forEach items="${games1}" var="game">
<tr>
<td><a href="show?id=${game.id}"><img src="${game.image_url}" width="150" height="150"></a></td>
<td>${game.name}</td>

<td>Price : ${game.price} $</td>

</tr>
</c:forEach>
</table>
<br>
<div class="category"><h3>RPG</h3></div>
<table class="game-table">
<!--  <tr>
<th>Game Image</th>
<th>Game Name</th>
<th>Game Price</th>
</tr>
-->
<c:forEach items="${games2}" var="game">
<tr>
<td><a href="show?id=${game.id}"><img src="${game.image_url}" width="150" height="150"></a></td>
<td>${game.name}</td>

<td>Price : ${game.price} $</td>

</tr>
</c:forEach>
</table>
<div class="category"><h3>Adventure</h3></div>
<table class="game-table">
<!--  <tr>
<th>Game Image</th>
<th>Game Name</th>
<th>Game Price</th>
</tr>
-->
<c:forEach items="${games3}" var="game">
<tr>
<td><a href="show?id=${game.id}"><img src="${game.image_url}" width="150" height="150"></a></td>
<td>${game.name}</td>

<td>Price : ${game.price} $</td>

</tr>
</c:forEach>
</table>
<div class="category"><h3>Strategy</h3></div>
<table class="game-table">
<!--  <tr>
<th>Game Image</th>
<th>Game Name</th>
<th>Game Price</th>
</tr>
-->
<c:forEach items="${games4}" var="game">
<tr>
<td><a href="show?id=${game.id}"><img src="${game.image_url}" width="150" height="150"></a></td>
<td>${game.name}</td>

<td>Price : ${game.price} $</td>

</tr>
</c:forEach>
</table>
</div>




<div class="footer">&copy; Copyright : GameShop</div>
</body>
</html>