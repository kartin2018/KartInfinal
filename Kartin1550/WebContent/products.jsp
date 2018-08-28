<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Products | KartIn</title>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--start-menu-->		
</head>
<body> 
<jsp:include page="banner.jsp"></jsp:include>
	<!--top-header-->
	<div class="product"> 
		<div class="containerproducts">
			<div class="product-top">
				<div class="product-one">
					<c:forEach  items="${Product}" var="prod">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
					 		<form action = "single.do" method="get">
					 		<input type="hidden" name="brand" value="${prod.productBrand }"/>
					 		<button class="prod" type ="submit" value="${prod.productId}" name="id">
					 		
							<a><img class="img-responsive zoom-img" alt="" src="<c:url value="${prod.productImage1}"/>"></a>
							
							<div class="product-bottom">
								<h3>Model name: ${prod.productName}</h3>
								</div>
								</form>
									<div class="product-bottom">
								<p>Brand: ${prod.productBrand}</p>
								<h4><a><i></i></a> <span class=" item_price">Price: &#x20b9;${prod.productPrice} </span></h4>
									<span style="text-align:center">
								</span>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</button>
						</div>
					</div>
						</c:forEach>
			</div>
			${Added}
		</div>
	</div>	
	<br><br>				
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>