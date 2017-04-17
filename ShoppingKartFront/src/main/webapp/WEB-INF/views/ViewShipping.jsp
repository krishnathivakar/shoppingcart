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
    float:left;
}
</style>
<body>
<h2><a href="newshipping" style="float:right;">create new address</a></h2>
<div class="login-form">
<h1>Select Delivery Address </h1>





<c:forEach items="${shippingList}" var="shipping">
<div class="div2">
<a href="editShipping?shippingId=${shipping.shippingId}" style="float:right;"><span class="glyphicon glyphicon-pencil"></span></a>
<a href="deleteShipping?shippingId=${shipping.shippingId}" style="float:right;margin-right: 1em;"><span class="glyphicon glyphicon-trash"></span></a>

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
<button type="button" value="submit"> <a href="deliverAdress?shippingId=${shipping.shippingId}">Deliver Here</a></button>

</div>
</c:forEach>
</div>
</body>
</html>