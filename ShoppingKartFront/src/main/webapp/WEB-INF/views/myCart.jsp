<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
td
{
    padding:0 20px 0 20px;
}
</style>

<script>
function goBack() {
    window.history.back();
}
</script>

<body>
<c:if test="${pageContext.request.userPrincipal.name != null }">
<button type="submit" class="log-btn" ><a href="proceed" float:right" >Proceed to Delivery</a></button>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null }">
<button type="submit" class="log-btn" ><a href="LoginPage" float="right">Proceed to Delivery</a></button>
</c:if>

<button type="submit" class="log-btn" onclick="goBack()" float="left">Go Back</button>

<div class="container">
<div class="login-form">
			<h1>Product Added To Cart</h1>
<div style="float: left; margin-left: 5em;">
<table class="table table-hover" style="margin-left: 5em">
<thead>
<tr>
<th>Serial no</th>
<th>Image Of Product</th>
<th>productname</th>
<th>quantity</th>
<th>productPrice</th>
<th>total</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach items="${cartList}" var="cart" varStatus="status">
<tr>
<th scope="row">${status.count}</td>
<td><img src="resources/images/productImages/${cart.productId}.jpg" style="height:150px;width:150px"></td>
<td>${cart.productName }</td>
<td>${cart.quantity}</td>
<td>${cart.productPrice }</td>
<td>${cart.total}</td>
<td><a href="deleteCart?cartId=${cart.cartId}">Delete</a></td>

</tr>
</c:forEach></div>

<tr scope="row">
<td></td>
<td></td>
<td colspan="3">Grand Total :</td>
<td>${total}</td>
<td></td>
</tr>

</table>
<br>
<center>

</center>


</div>
</div></div>

</body>

</html>