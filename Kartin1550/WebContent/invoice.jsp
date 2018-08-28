<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Invoice | KartIn</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Invoice</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />

<script src="js/jquery-1.11.0.min.js"></script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

</head>
<script src="https://docraptor.com/docraptor-1.0.0.js"></script>
<script>
    var downloadPDF = function() {
      DocRaptor.createAndDownloadDoc("YOUR_API_KEY_HERE", {
        test: true, // test documents are free, but watermarked
        type: "pdf",
        document_content: document.querySelector('html').innerHTML, // use this page's HTML
       
      })
    }
  </script>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<div class="containerprofile"><br><br><br><br>
<form action="invoice.do">
	<table align="center" width="50%" border="1" cellspacing="5" >
		
			<th>Order Id</th><th>Total Amount</th><th>Order date</th><th>Payment Mode</th>
			
		<tr>
			<td>${ Order.orderId }</td>
			<td>${ Order.orderPrice }</td>
			<td>${ Order.TStamp }</td>
			<td>${ Order.paymentMode }</td>			
		</tr>
	</table>
	<p>The above is your Order Detail and below shown are Product Details.
	You will be delighted to know that your Order will be delivered today by evening via our express delivery service.</p>
	
	<table align="center" width="50%" border="1" cellspacing="5">
		<br><br><br>
		
			<th>Product Name</th><th>Total Amount</th>
		
		
		  <c:forEach items="${ Orderprod }" var="prod"> 
		<tr>
			<td>${prod.productName}</td>
			<td>${prod.productPrice}</td>
					
		</tr>
		</c:forEach> 
	</table>
	<div class="address submit" align="center"><input id="pdf-button" type="button" value="Download PDF"
		onclick="downloadPDF()" /></div>
		</form>
		
		<form action="sendordersummary.jsp" method="POST">
<div class="address submit"><input type="submit" name="recieve order summary" value="receive order summary(SMS)"></div>
</form>
		</div>
</body>
</html>