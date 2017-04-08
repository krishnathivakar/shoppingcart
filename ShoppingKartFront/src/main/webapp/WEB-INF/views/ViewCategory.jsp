<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Table</title>
</head>
<body>
List of Category
<table border="1">

<tr><td>Serial no</td>
<td>categoryId</td>
<td>categoryName</td>
<td>categoryDescription</td>
<td>Edit</td>
<td>Delete</td>
</tr>

<c:forEach items="${categoryList}" var="category" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${category.categoryId }</td>
<td>${category.categoryName }</td>
<td>${category.categoryDescription }</td>
<td><a href="editCategory?categoryId=${category.categoryId }">Edit</a></td>
<td><a href="deleteCategory?categoryId=${category.categoryId }">Delete</a></td>

</tr>
</c:forEach>

</table>

</body>
</html>