<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<body>
<h1>Request cannot be processed...</h1>
<h2>Problem Occured due to :</h2>
<font size ="4" color="red">
<%= exception.toString() %>
<br><br><br>
<a href="${header.referer}">Please try again..</a>
</font>
</body>
</html>