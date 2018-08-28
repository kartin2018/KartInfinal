<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Account | KartIn</title>
<head>
</head>
<body> 
	<!--top-header-->
	<jsp:include page="banner.jsp"></jsp:include>
	

	<div class="account">
		<div class="acccontainer">
		<div class="account-top heading">
				<h2>ACCOUNT</h2>
			</div>
			<div class="account-main">
				<div class="col-md-6 account-left">
				<h4>${Prompt }</h4>
					<h3>Existing User</h3>
					<div class="account-bottom">
					<form action="login.do" name="registration" onSubmit="return formValidation();" method="post">
						<input placeholder="Email" type="text" name="email" id="email"  >
						<input placeholder="Password" type="password" name="password" id="password" >
						<div class="address">
							<a class="forgot" href="forget.jsp">Forgot Your Password?</a>
							<input type="submit" value="Login">
						</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 account-right account-left">
					<h3>New User? Create an Account</h3>
					<p>Kartin provides varieties of Watches and to grab it you need to first create your account and then will handle everything for you!! </p>
					<a href="register.jsp">Create an Account</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<br><br>					
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>