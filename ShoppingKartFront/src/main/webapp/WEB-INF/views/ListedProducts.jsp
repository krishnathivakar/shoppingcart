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
.container {
  position: relative;
  width: 107%;
  margin-left: 7em;
  
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 100%;
  right: 0;
  background-color: #008CBA;
  overflow: hidden;
  width: 0;
  height: 100%;
  transition: .5s ease;
}

.container:hover .overlay {
  width: 100%;
  left: 0;
}

.text {
  white-space: nowrap; 
  color: white;
  font-size: 20px;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}
 .img {
padding-top: 6em;
position: relative;
float: left;
width: 250px;
height: 250px;
background-postion:100% 100%;
background-repeat:no-repeat;
backgroun-size:cover;
margin-left: 4em;

padding-bottom:9em;
 }


</style>
<body style="margin-bottom:20px">


<c:forEach items="${productList}" var="product">
<div class="img"	style=" margin-left: 7em;">
<a href="ProductDetails?productId=${product.productId}">
<div class="container">
	
  <img src="resources/images/productImages/${product.productId}.jpg" style="height:250px;width:250px" alt="" class="">
  <div class="overlay">
    <div class="text"><h4>Name : ${product.productName }</h4>
<h6>Price : ${product.productPrice }</h6></div>
  </div>
</div>
</a>
</div>
</c:forEach>
<%--<div class="img" margin-left: 7em;> <a href="ProductDetails?productId=${product.productId}">
<img src="resources/images/productImages/${product.productId}.jpg" style="height:250px;width:250px">
</a>
<h4>Name : ${product.productName }</h4>
<h6>Price : ${product.productPrice }</h6>
</div>
</c:forEach>
 --%>

</body>
</html>