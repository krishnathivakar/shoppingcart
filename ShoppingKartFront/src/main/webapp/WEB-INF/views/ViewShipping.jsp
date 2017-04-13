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
.div2 {
	margin-left: 10em;
    width: 300px;
    height: 400px;    
    padding: 50px;
    border: 1px solid red;
}
</style>
<body>
<div class="login-form">
<h1>Select Delivery Address </h1>

<div class="div2">


<c:forEach items="${shippingList}" var="shipping">
<h2>Name</h2>
<h4>${shipping.userName}</h4>
<hr>
<h3>Address</h3>
<h5>${shipping.userAddress}
${shipping.userCityCode}</h5>
<hr>
<h4>Mobile Number</h4>
<h6>${shipping.mobileNumber}</h6>
<hr>
<a href="editShipping?shippingId=${shipping.shippingId}">EDIT</a>
<a href="deleteShipping?shippingId=${shipping.shippingId}">DELETE</a>

</c:forEach>
</div>
</div>
</body>
</html>