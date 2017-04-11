<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

.img {
padding-top: 15em;
position: relative;
float: left;
width: 250px;
height: 250px;
background-postion:100% 100%;
background-repeat:no-repeat;
backgroun-size:cover;
margin-left: 7em;

padding-bottom:9em;
}
</style>
<body style="margin-bottom:20px">


<c:forEach items="${productList}" var="product">
<div class="img" margin-left: 7em;>
<a href="ProductDetails?productId=${product.productId}">
<img src="resources/images/productImages/${product.productId}.jpg" style="height:250px;width:250px">
</a>
<h4>Name : ${product.productName }</h4>
<h6>Price : ${product.productPrice }</h6>
</div>
</c:forEach>


</body>
</html>