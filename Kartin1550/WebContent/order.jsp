<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" /> 

<div class="containerorder"><br><br><br><br><br><br><br><br><br><br>	
<h1>My Order</h1><hr size="1" color="crimson">
<table align="center" background="black" border="2" bordercolor="white" >

<tr><th>Name</th><th>Brand</th><th>Price</th></tr>
 <c:forEach items="${Orderprod}" var="c">
		
		<tr>
			<td align="center">${ c.productName }</td>
			<td align="center">${ c.productBrand }</td>
			<td align="center">${ c.productPrice }</td> 
			
</c:forEach>
			
</table>
<span><b>Total Price: &#x20b9; ${Totalcost}</b></span>
</div>

<form action="invoice.do" method="post">
<div class="address submit"><input type="submit" value="Get Invoice" name="Invoice">
</div></form>

<br><br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>