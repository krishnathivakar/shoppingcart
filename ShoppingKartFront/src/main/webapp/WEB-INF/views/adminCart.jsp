<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="login-form">
			<h1>Product Added To Cart</h1>
<div style="float: left; margin-left: 5em;">
<table  style="margin-left: 5em">
<thead>
<tr>
<td>Serial no</td>
<td>Image Of Product</td>
<td>productname</td>
<td>quantity</td>
<td>productPrice</td>
<td>total</td>
<td>User Name</td>
<td>User ID</td>
<td>Product Id </td>
<td> Date </td>
</tr>
</thead>
<c:forEach items="${cartList}" var="cart" varStatus="status">
<tr>
<td>${status.count}</td>
<td><img src="resources/images/productImages/${cart.productId}.jpg" style="height:150px;width:150px"></td>
<td>${cart.productName }</td>
<td>${cart.quantity}</td>
<td>${cart.productPrice }</td>
<td>${cart.total}</td>
<td>${cart.userName }</td>
<td>${cart.userId }</td>
<td>${cart.productId }</td>
<td>${cart.addDate }</td>
</tr>
</c:forEach></div>


</table>
<br>
<center>

<button type="submit" class="log-btn" ><a href="#">Ok</a></button>

</center>


</div>



</body>
</html>