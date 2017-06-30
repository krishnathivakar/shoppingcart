<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Border Animation Effect with SVG</title>
		<meta name="description" content="Border Animation Effect: Recreating the effect seen on carlphilippebrenner.com with SVG" />
		<meta name="keywords" content="svg, border effect, animated border, line, grid item, hover, css" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/component.css" />

<title>Insert title here</title>
</head>
<style>
 .img {

position: relative;
float: left;


background-postion:100% 100%;


margin: 3px 3px 30px 3px ;


 }


</style>
<body style="margin-bottom:20px">
<div class="container">
			<!-- Top Navigation -->
			
			<header class="codrops-header">
				<h1>List Of Products</h1>	
			</header>
			<section class="demo-2">
			<c:forEach items="${productList}" var="product">
			<div class="img"	style="float:left;">
				<h2>Name : ${product.productName }</h2>
				<a href="ProductDetails?productId=${product.productId}">
				
				<div class="grid">
					<div class="box">
						<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
							<line class="top" x1="0" y1="0" x2="900" y2="0"/>
							<line class="left" x1="0" y1="460" x2="0" y2="-920"/>
							<line class="bottom" x1="300" y1="460" x2="-600" y2="460"/>
							<line class="right" x1="300" y1="0" x2="300" y2="1380"/>
						</svg>
						<img src="resources/images/productImages/${product.productId}.jpg" width="290" height="380">
						<span>Price : ${product.productPrice }</span>
						<span>Description : ${product.productDescription }</span>
					</div>
					</div>
					</div>
					</a>
					</c:forEach>
					
				</div><!-- /grid -->
			</section>
			
		</div><!-- /container -->


</body>
</html>