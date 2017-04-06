<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Product</title>
</head>
<body>
 <form action="addProduct" method="post">
 
  Product Name:<br>
  <input type="text" name="ProductName" required><br><br>
  Product Description:<br>
  <input type="text" name="ProductDescription" required><br><br>
  <input type="submit" value="Submit">
</form>
 
</body>
</html>