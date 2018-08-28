<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Register | KartIn</title>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom Theme files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel='stylesheet' href='js/form-validation.css' type='text/css' />
<script src="js/form-validation.js"></script>
</head>
<body> 
<jsp:include page="banner.jsp"></jsp:include>
	
	<div class="register">
		<div class="regcontainer">
			<div class="register-top heading">
			<br><br><br>
				<h2>REGISTER</h2><hr size="3" color="midnightblue"></hr>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
					<form action="register.do" onSubmit="return formValidation();" method="post">
					
						<input placeholder="Full Name" type="text"  name="userName" id="userName">
						<input placeholder="Email address" type="text"  name="email" id="email">
						<input placeholder="Password" type="password" name ="password" id="password">
						
						
				</div>
				<div class="col-md-6 account-left">
					<input placeholder="Mobile" type="text"  name="contact" id="contact">
					<input placeholder="Full Address" type="text"  name="address" id="address">
					
							<input placeholder="City" type="text"  name="city" id="city">			

				</div>
				<div class="clearfix"></div> 
						</ul>
						<div class="address submit">
								<input type="submit" value="Submit">
							</div>
				<div class="clearfix"></div>
				
			</div>
			
					</form>
		</div>
	</div>
	<br><br>				
<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>