<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.img {
padding-top: 5em;
position: relative;
float: left;
width: 5%;
height: 10%;
background-postion:100% 100%;
background-repeat:no-repeat;
backgroun-size:cover;
margin-left: 7em;

padding-bottom:9em;
}
</style>
<script>
function goBack() {
    window.history.back();
}
</script>

</head>
<body>
<table>
<thead>
<h1 align="center">${product.productName}</h1></thead>
<tr><td><div class="img">
<img src="resources/images/productImages/${product.productId}.jpg" width="550" height="330">
</div></td>
<td>
<div style="float: left; margin-left: 7em; margin-right:15em">
<h5>Product Description</h5><h3 style="margin-right:10em">${product.productDescription}</h3>
<br>
<h5>Product Price</h5><h4 style="float:right">${product.productPrice}</h4>
<br>
<h5>Stock</h5><h4  style="float:right">${product.stock }</h4>
<br><br>
<h2 style="color: red;">${msg}</h2>
<c:if test="${pageContext.request.userPrincipal.name != null }">
<button type="submit" class="log-btn" ><a href="addToCart?productId=${product.productId}">Proceed to Cart</a></button>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null }">
<button type="submit" class="log-btn" ><a href="LoginPage">Proceed to Cart</a></button>
</c:if>
<button type="submit" class="log-btn" onclick="goBack()">GO Back</button>

</div>
</td>
</table>
</body>
</html>