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
			<h1>List of Supplier</h1>



<table class="table" border="2">
<thead class="thead-inverse">
<tr>
<th>serial no</th>
<th>supplierId</th>
<th>supplierName</th>
<th>supplierDescription</th>
<th>supplierRating</th>
<th>supplierLocation</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach items="${supplierList}" var="supplier" varStatus="status">

<tr>
<th scope="row">${status.count}</th>
<td>${supplier.supplierId }</td>
<td>${supplier.supplierName }</td>
<td>${supplier.supplierDescription }</td>
<td>${supplier.supplierRating }</td>
<td>${supplier.supplierLocation }</td>
<td><a href="editSupplier?supplierId=${supplier.supplierId }">Edit</a></td>
<td><a href="deleteSupplier?supplierId=${supplier.supplierId }">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>