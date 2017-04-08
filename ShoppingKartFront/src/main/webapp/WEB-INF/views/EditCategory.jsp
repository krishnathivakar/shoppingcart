<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="afterEdit" method="post">
<table align="center">
<div class="container">
<tr><td>category Id:</td>
<td><input type="text" name="categoryId" placeholder="enter category id" value="${category.categoryId }" readonly="true"></td></tr>

<tr><td>category name:</td>
<td><input type="text" name="categoryName" placeholder="enter category name" value="${category.categoryName }"></td></tr>
<tr><td>category description:</td>
<td><input type="text"name="categoryDescription" placeholder="enter category description" value="${category.categoryDescription }"></td></tr>
</div>
</table>
<center>
<input type="submit" name="submit" value="AddNewCategory">
</center>
</form>

</body>
</html>