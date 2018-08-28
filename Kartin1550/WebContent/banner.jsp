<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="css/flexslider.css" rel="stylesheet" type="text/css"
	media="all" />

<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="top-header">
		<div class="containerbanner">
			<div class="top-header-main">
				<div class="container">
					<div class="logo">
	 <%
		User user = (User) session.getAttribute("User");
		if (user != null) {
			
	%>
	
		<a class="bc" href="home.do">Home</a>
		<a class="bc"><form action="category.do"><button class="allwatches" type="submit" value="watch" name="category">All Watches</button></form></a> <!-- rishio -->
		<a class="bc" href="profile.do">Profile</a>
		<a class="bc" href="logout.do">Logout</a> 
		<img src="images/cart-1.png" alt="" />
		<a class="bcd" href="home.do"><h1>KartIn</h1></a>		
		<div class="visitor"><img src="images/cart-1.png" height="20" width="20" alt="" /><a href="cart.do">Cart</a><br><br>
			<div class="login"> Hello <%=user.getUserName()%>
			
			</div>
	</div>
				<% } 	
		else {
	%>			
	
		<a class="bc" href="home.do">Home</a>
		<a class="abc" href="register.jsp">Register</a>
		<a class="abc" href="account.jsp">Login</a>
		<img src="images/cart-1.png" alt="" /> <a class="bcd" href="home.do"><h1>KartIn</h1></a>
		<div class="visitor"> Hello There
		</div>
	
				<%
		}
	%> 	
					 </div>
				 </div>
			</div>
		</div>
	</div>
			