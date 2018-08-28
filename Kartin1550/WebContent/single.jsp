
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Product | KartIn</title>
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
			
						
</head>
<body> 
<jsp:include page="banner.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu_drop > li > ul'),
	           menu_a  = $('.menu_drop > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>		
<br><br>
<br><br><br><br><br><br><br>	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
			
				<div class="col-md-13 single-main-left">
				<c:forEach items="${SingleProduct}" var="prod">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="<c:url value="${prod.productImage1}"/>">
									<div class="thumb-image"> <img src="<c:url value="${prod.productImage1}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="<c:url value="${prod.productImage2}"/>">
									 <div class="thumb-image"> <img src="<c:url value="${prod.productImage2}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="<c:url value="${prod.productImage3}"/>">
								   <div class="thumb-image"> <img src="<c:url value="${prod.productImage3}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> 
							  </ul>
						</div>
						
					</div>	
					<script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script> 
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2>${prod.productName}</h2>
							<div class="star-on">
								<ul class="star-footer">
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
									</ul>
									
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">Price: &#x20b9; ${prod.productPrice}</h5>
							<p>Description: ${prod.productDescription }</p>
							<div class="available">
								<div class="clearfix"> </div>
							</ul>
						</div>
						<ul class="tag-men">
								<li><span>TAG</span>
								<span>: ${prod.productTag }</span></li>
								<li><span>Id</span>
								<span>: ${prod.productId } </span></li>
							</ul><br><br>
							<c:if test="${User!=null}">
										<form action="products.do"> <!-- //action to add to cart -->
											<button type="submit" class="prodbutton" name="productId" value="${prod.productId }">ADD TO CART</button>
									</form>
									</c:if>
									<c:if test="${ User==null }">
									<h3>Like this Watch? <b>Login Now !!!</b> </h3>
 									
							</c:if>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				
				</c:forEach>
			
				</div>
				
		</div>
	</div>
	</div>
	<br><br><br>
	<div class="product"> 
		<div class="container">
			<div class="product-top">
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="#" class="mask"><img class="img-responsive zoom-img" src="images/p-1.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price"> &#8377; 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="#" class="mask"><img class="img-responsive zoom-img" src="images/p-2.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">&#8377; 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="#" class="mask"><img class="img-responsive zoom-img" src="images/p-3.png"  alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">&#8377; 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="#" class="mask"><img class="img-responsive zoom-img" src="images/p-4.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">&#8377; 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</div>
			</div>
		</div>			
	</div>
	<br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>