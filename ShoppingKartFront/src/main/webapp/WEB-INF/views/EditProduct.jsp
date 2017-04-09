<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="afterEditProduct" method="post">
<table align="center">
<tr><td>product Id:</td>
<td><input type="text" name="productId" placeholder="enter product id" value="${product.productId }" readonly="true"/></td></tr>

<tr><td>Product Name:</td><br>
<td><input type="text" name="productName" placeholder="enter product name" value="${ product.productName}"/></td></tr>
<tr><td>Product Description:</td><br>
<td><input type="text" name="productDescription" placeholder="enter product Description" value="${product.productDescription  }"/></td></tr>
<tr><td>Product Price:</td><br>
<td><input type="text" name="productPrice" placeholder="enter product price" value="${ product.productPrice }"/></td></tr>
<tr><td>Product Rating:</td><br>
<td><input type="text" name="productRating" placeholder="enter product Rating" value="${product.productRating }"/></td></tr>
</table>
<center>
<input type="submit" name="SubmitForm" value="AddNewProduct">
</center>
</form>

</body>
</html>