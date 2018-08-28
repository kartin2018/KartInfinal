<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="js/simpleCart.min.js"> </script>

</head>
<body> 

<jsp:include page="banner.jsp"></jsp:include>
	
	<br><br><br><br><br><br><br><br><br><br>
<%	String param = request.getParameter("status");
	if(param.equalsIgnoreCase("invalid")) { %>
		<h1 class="alert alert-danger">Sorry! Payment failed due to invalid card details.</h1>
<%	} else if(param.equalsIgnoreCase("insufficient")) { %>
		<h1 class="alert alert-warning">Sorry! Payment failed due to insufficient balance.</h1>
<%	} else if(param.equalsIgnoreCase("failed")) { %>
		<h1 class="alert alert-danger">Sorry! Payment failed, Please try again later.</h1>
<%	} else { %>
	<h1  class="alert alert-success">Payment successful</h1>
	<h2>Transaction details</h2>
	<%	response.sendRedirect("http://localhost:8780/Kartin1550/order.do?payment=card"); %>
<%	} %>
	<%-- <a href="home.do">
	<div class="address submit"><input type="submit" value="Continue Shopping"></button></div>
	</a></div>
	<form action="order.do">
	<div class="address submit"><input type="submit" value="Order Summary"></button></div>
	</form>
 	<br><br>				
<jsp:include page="footer.jsp"></jsp:include> --%>
</body>
</html>