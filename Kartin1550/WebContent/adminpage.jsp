<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Admin | KartIn</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<title>Add Product</title>
</head>
<body>



<div class="container">

<div class="top-header-admin">
<a href="logout.do">LOGOUT</a>
</div>
<h1>Add product</h1><hr size="3" color="crimson" >
<form action="productadmin.do"  >
	
	<table class="table table-bordered">
	<tr><td>Product Name</td>
			<td><input type="text" name="productName"  id="productName" ></td></tr>
	<tr><td>Product ID</td>
			<td><input type="text" name="productId" id="productId"></td></tr>
		<!-- 	<tr><td>Product Category</td>
			<td><input type="text" value="watch" name="productCategory" id="productCategory"></td></tr> -->
	<tr><td>Product Brand</td>
			<td><input type="text" name="productBrand" id="productBrand"></td></tr>
	<tr><td>Product Description</td>
			<td><input type="text" name="productDescription" id="productDescription"></td></tr>
	<tr><td>Product price</td>
			<td><input type="number" name="productPrice" id="productPrice" ></td></tr>
	<tr><td>Product image 1</td>
			<td><input type="file" name="productImage1" id="productImage1"></td></tr>
	<tr><td>Product image 2</td>
			<td><input type="file" name="productImage2" id="productImage2"></td></tr>
	<tr><td>Product image 3</td>
			<td><input type="file" name="productImage3" id="productImage3"></td></tr>
	<tr><td>Brand Image</td>
			<td><input type="file" name="brandImage" id="brandImage"></td></tr>
			<tr><td>Product Tag</td>
			<td><input type="radio" value="men" name="productTag" id="productTag" checked>men
			<input type="radio" value="women" name="productTag" id="productTag" >women</td></tr>
		<tr><th colspan="2"><input type="submit" value="Add"></th></tr>
	</table>
	<br>
	${Prompt}
</form>

<form action="removeproductadmin.do">
	
	<h1>Remove product</h1><hr size="3" color="crimson" >
	<table class="table table-bordered">
	<tr><td>Product ID</td>
			<td><input type="text" name="productId" id="productId"></td></tr>
	<tr><th colspan="2"><input type="submit" value="Remove"></th></tr>
	</table>
</form>
</div><br>
${Prompt1}

<br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>