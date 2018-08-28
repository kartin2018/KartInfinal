<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Card Payment | KartIn</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<script>
var dcard = document.getElementById("card")
, dpin = document.getElementById("pin");
var numbers = /^[0-9]+$/;
if(dcard.value.length==0){
	window.alert('Card number cannot be empty');
}else if(dcard.value.langth!=16){
	window.alert('Card number should contain 16 digits');
}else if(dcard.value.match(numbers)){
	window.alert('Card number within norms');
}
	
</script>
<div class="container">
			<div class="single-main">
				<div class="col-md-14 single-main-left">
				<br><br><br><br><br><br><br><br><h1 align="center">PAYMENT GATEWAY</h1><hr></hr>
				<div class="sngl-top">					
					<div class="clearfix"> </div>
				</div>
<form action="http://192.168.100.172:8780/Fidelis27-Latest/process.go">
<input type="hidden" name="upi" value="9874563210@Fidelis">
<table class="table table-bordered">
	<tr><th align="left">Total Price:</th>
	<th>&#x20b9; ${Totalcost}<input type="hidden" name="amount" value="${Totalcost}"/></th></tr>
	<tr><td>Card No</td>
		<td align="left"><input type="text" name="card" id="card" ></td>
	</tr>
	<tr><td>Pin</td>
		<td><input type="password" name="pin" id="pin"></td>
	</tr>
	<tr><th colspan="2">
		<div class="address submit"><input type="submit" value="Make Payment"></div>
	</th></tr>
</table>
</form>
</div>
</div>
</div><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>