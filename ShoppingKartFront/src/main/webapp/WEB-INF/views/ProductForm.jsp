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

<form action="addproduct" method="post">
<table align="center">
<tr><td>Product Name:</td><br>
<td><input type="text" name="productName" placeholder="enter product name"/></td></tr>
<tr><td>Product Description:</td><br>
<td><input type="text" name="productDescription" placeholder="enter product Description"/></td></tr>
<tr><td>Category Name  </td>
<td><select class="" name="category">
            <option value="">Select Category</option>
            <c:forEach items="${categoryList}" var="category">	
            <option value="${category.categoryName }">${category.categoryName }</option>
            </c:forEach>
            </select><br><br></td>
</tr>
<tr><td>Supplier Name  </td>
<td><select class="" name="supplier">
            <option value="">Select Supplier</option>
            <c:forEach items="${supplierList}" var="supplier">
            <option value="${supplier.supplierName }">${supplier.supplierName }</option>
           </c:forEach>
            </select><br><br></td>
</tr>


<tr><td>Product Price:</td><br>
<td><input type="text" name="productPrice" placeholder="enter product price"/></td></tr>
<tr><td>Product Rating:</td><br>
<td><input type="text" name="productRating" placeholder="enter product Rating"/></td></tr>
</table>
<center>
<input type="submit" name="SubmitForm" value="AddNewProduct">
</center>
</form>

</body>
</html>