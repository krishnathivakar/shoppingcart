<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="login-form">
			<h1>List of Product</h1>




<table class="table table-striped" border="2">
<thead>
<tr>
<th>serial no</th>
<th>productId</th>
<th>productName</th>
<th>productDescription</th>
<th>productPrice</th>
<th>productRating</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
    
<c:forEach items="${productList}" var="product" varStatus="status">

<tr>
      <th scope="row">${status.count}</th>
<td>${product.productId }</td>
<td>${product.productName }</td>
<td>${product.productDescription }</td>
<td>${product.productPrice }</td>
<td>${product.productRating }</td>
<td><a href="editProduct?productId=${product.productId }">Edit</a></td>
<td><a href="deleteProduct?productId=${product.productId }">Delete</a></td>

</tr>
</c:forEach>
</tbody>




</table>
</div>
</body>
</html>