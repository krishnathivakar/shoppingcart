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
list of Suppliers
<table border="1">

<tr><td>serial no</td>
<td>supplierId</td>
<td>supplierName</td>
<td>supplierDescription</td>
<td>supplierRating</td>
<td>supplierLocation</td>
<td>Edit</td>
<td>Delete</td>
</tr>

<c:forEach items="${supplierList}" var="supplier" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${supplier.supplierId }</td>
<td>${supplier.supplierName }</td>
<td>${supplier.supplierDescription }</td>
<td>${supplier.supplierRating }</td>
<td>${supplier.supplierLocation }</td>
<td><a>Edit</a></td>
<td><a>Delete</a></td>
</tr>
</c:forEach>

</table>
</body>
</html>