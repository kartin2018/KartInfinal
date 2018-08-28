<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<script src="js/simpleCart.min.js"> </script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="js/jquery.easydropdown.js"></script>	

</head>
<body> 
	<!--top-header-->
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
	
	<!--end-breadcrumbs-->
	<!--start-single-->
	
		<div class="containerprofile">
			<div class="single-main">
				<div class="col-md-14 single-main-left">
				<h1 align="center">PAYMENTS</h1><hr></hr>
				<div class="sngl-top">					
					<div class="clearfix"> </div>
				</div>
				
				<div class="tabs">
					<ul class="menu_drop">
				<li class="item1"><a class="active"><img src="images/arrow.png" alt="">Cash On Delivery</a>
					<ul class="men1">
						<li><a><input type="checkbox"> We also accept Credit/Debit card on delivery. Please Check with the agent.<br>
						<form action="order.do"><input type="submit"  value="cashondelivery" name="payment"></form></a></li>
						
					</ul>
				</li>
                <li class="item2"><a><img src="images/arrow.png" alt="">Credit/Debit</a>
                    
					<ul class="men2">     
					   <li><a>Click on the Card Payment button and you will be Redirected to Payment Gateway!</a></li>
						<li><a><br><form action="cardpayment.jsp"><input type="submit" value="cardpayment" name="payment"></a>
				 <a><br></a>
				 </li></form>
				 
					</ul>
				</li>
				
					</ul>
				
			
                    
                     </div>
            </div>
            </div><br><br><br><br><br><br>
        <jsp:include page="footer.jsp"></jsp:include>   
        </div>
         
</body>
</html>




