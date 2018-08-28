<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Home | KartIn</title>
<head>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />

<script src="js/jquery-1.11.0.min.js"></script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
					
					<div class="Slides">
					
					<form action="category.do" method="get">
					<button class="slideprod" type="submit" value="watch" name="category">
					
						<div class="mySlides">

							<img class="rslides" src="images/bnr-1.jpg" />
						</div>
						<div class="mySlides">
							<img class="rslides" src="images/bnr-2.jpg" />
						</div>
						<div class="mySlides">

							<img class="rslides" src="images/bnr-3.jpg" />
						</div>

						
					</button>
					</form>
					
<button class="w3-button w3-display-left w3-col"
							onclick="plusDivs(-1)">&#10094;</button>
						<button class="w3-button w3-display-right w3-col"
							onclick="plusDivs(1)">&#10095;</button>
							
					</div>
				
					
					
					<script>
				var slideindex = 0;
				carousel();

				function carousel() {
				    var i;
				    var x = document.getElementsByClassName("mySlides");
				    for (i = 0; i < x.length; i++) {
				      x[i].style.display = "none"; 
				    }
				    slideindex++;
				    if (slideindex > x.length) {slideindex = 1} 
				    x[slideindex-1].style.display = "block"; 
				    setTimeout(carousel, 7000); // Change image every 2 seconds
				}
			
				var slideInde = 1;
				showDivs(slideInde);
				function plusDivs(n) {
				  showDivs(slideInde += n);
				}
				function showDivs(n) {
				  var i;
				  var x = document.getElementsByClassName("mySlides");
				  if (n > x.length) {slideInde = 1}    
				  if (n < 1) {slideInde = x.length}
				  for (i = 0; i < x.length; i++) {
				     x[i].style.display = "none";  
				  }
				  x[slideInde-1].style.display = "block";  
				} 
	
		</script>
		<br><br>
		<h1 align="center">Brands</h1><hr size="3" color="midnightblue">
					<div class="about">
						<div class="container">
							<div class="about-top grid-1">
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/abt-1.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="Rolex" name="brand">Rolex</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/Casio.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="Casio" name="brand">Casio</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/Fossil.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="Fossil" name="brand">Fossil</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/Timex.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="Timex" name="brand">Timex</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/Titan.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="titan" name="brand">Titan</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="col-md-4 about-left">
									<figure class="effect-bubba"> <img
										class="img-responsive" src="images/Seiko.jpg" alt="" />
									<form action="search.do" method="get">
										<figcaption>
										<button type="submit" value="tissot" name="brand">Seiko</button>
										</figcaption>
									</form>
									</figure>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					
					<h1 align="center">Best Selling Products</h1><hr size="3" color="midnightblue">

<div class="product"> 
		<div class="container">
			<div class="product-top">
				<div class="product-one">
					<c:forEach begin="0" end="11" items="${AllProducts}" var="prod">
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
		</div>
	</div>	
	</div>
					<!--about-end-->
					<!--product-starts-->
					<%-- <jsp:include page="footer.js"></jsp:include> --%>
<br><br>				
<jsp:include page="footer.jsp"></jsp:include>		
</body>
</html>