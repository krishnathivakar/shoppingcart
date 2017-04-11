<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.img {
padding-top: 9em;
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


</head>
<body>
<table>
<thead>
<h1 align="center">${product.productName}</h1></thead>
<tr><td><div class="img">
<img src="resources/images/productImages/${product.productId}.jpg" width="550" height="330">
</div></td>
<td>
<div style="float: left; margin-left: 7em;">
<h2>Product Description</h2><h5 style="float:right">${product.productDescription}</h5>
<br>
<h3>Product Price</h3><h6 style="float:right">${product.productPrice}</h6>
<br><br>
<button type="submit" class="log-btn" ><a href="addToCart?productId=${product.productId}">Proceed to Cart</a></button>
<button type="submit" class="log-btn">Back</button>

</div>
</td>
</table>
</body>
</html>