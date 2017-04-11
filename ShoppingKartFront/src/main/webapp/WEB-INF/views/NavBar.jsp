<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h3>
<marquee width="30%">
<c:if test="${pageContext.request.userPrincipal.name != null }">
			Welcome ${pageContext.request.userPrincipal.name}<br>
			<br></c:if>
		</marquee></h3>
			
			
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">BikersWorld</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">About Us</a></li>

			
			<li><a href="resources/images/productImages/${product.productId}.jpg">View Photos</a></li>
			<li><a href="home">Home</a></li>
			<li>
			
			</li>
		</ul>
		<ul class="nav navbar-nav">
		
		</ul>
		<ul class="nav navbar-nav navbar-right">
			
			<c:if test="${pageContext.request.userPrincipal.name == null }">
			<li><a href="RegistrationPage"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			
			<li><a href="LoginPage"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
					
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
			<li><a href="myCart">My Cart</a></li>
			<li><a href="j_spring_security_logout"><span
					class="glyphicon glyphicon-user"></span> LogOut</a></li>
			</c:if>
			
			
		
		</ul>
	</div>
	</nav>


</body>
</html>