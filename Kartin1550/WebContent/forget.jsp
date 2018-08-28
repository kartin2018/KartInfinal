<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Forgot | KartIn</title>
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
<link rel='stylesheet' href='js-form-validation.css' type='text/css' />
<script src="form-validation.js"></script>
</head>
<body> 
	<jsp:include page="banner.jsp"></jsp:include>
	<div class="register">
		<div class="containerprofile">
			<div class="register-top heading">
			<h4>${Invalid }</h4>
				<h2>Forget Password</h2>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
					<form action="forget.do" name="registration" onSubmit="return formValidation();">
				<input type="text" name="email" required placeholder='Enter your email address'>
				<div class="address submit"><input type="submit" value="Validate"></div><br><br>
				</form>
				<form action="process.jsp" method="post">
				<input type="text" name="otpvalue" required placeholder="Enter the OTP"/>
				<div class="address submit"><input type="submit" value="Verify OTP"/></div>
							<div class="clearfix"></div>
						</ul>
				
				<div class="clearfix"></div>
			
			
					</div>

				</div>
		</form>
		</div>
	</div>
	<br><br>
</body>
</html>