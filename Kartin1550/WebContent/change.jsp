<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Change Password | KartIn</title>
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
	<script>
var password = document.getElementById("password")
, confirmpassword = document.getElementById("confirmpassword");

function validatePassword(){
if(password.value != confirmpassword.value) {
  confirmpassword.setCustomValidity("Passwords Don't Match");
} else {
	window.alert("Password successfully reset");
  //confirm_password.setCustomValidity("home.jsp");
  
}
}

password.onchange = validatePassword;
confirmpassword.onkeyup = validatePassword;
</script>

	<div class="register">
		<div class="containerprofile">
			<div class="register-top heading">
				<h2>Change Password</h2>
				<h4>${Prompt }</h4>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
					<form action="change.do">
					<input placeholder="Password" type="password"  name="password" id="password">
						<input placeholder="Retype password" type="password" name="cpassword" id="confirmpassword">	
						<div class="address submit">	<input type="submit" value="Change Password" onSubmit="validatePassword()"></div>
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