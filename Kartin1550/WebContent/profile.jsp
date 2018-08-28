<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Profile | KartIn</title>
<head>

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" /> 
<br><br><br>
<div class="containerprofile">
<h1>My Profile</h1><hr size="1" color="crimson">
<table class="table table-bordered">
	

		
		<table>
		<tr>
			<td>Name: &nbsp;&nbsp;&nbsp;&nbsp;${pro.userName}</td></tr>
			<tr><td>Email: &nbsp;&nbsp;&nbsp;${pro.email}</td></tr>
			<tr><td>Address:&nbsp;${pro.address}</td></tr>
			<tr><td>City: &nbsp;${pro.city}</td></tr>
			<tr><td>Mobile No: &nbsp;${pro.contact}</td>
		</table>
		</tr>
		</table>
		<div class="container">
<h1>Past Orders</h1><hr size="1" color="crimson">

<table class="table table-hover table-dark" border="2" bordercolor="white">
  <thead>
    <tr>
      <th align="left">Order Id</th>
      <th align="left">Amount</th>
      <th align="left">Order Date</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${pastOrders}" var="ord">
		<tr><td>${ord.orderId}</td>
			<td>${ord.orderPrice}</td>
			<td>${ord.TStamp }</td></tr>
		</c:forEach>
  </tbody>
</table>
</body>
</div>
<br><br>				
<jsp:include page="footer.jsp"></jsp:include>


</html>