<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.hovertable th {
	background-color:#c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.hovertable tr {
	background-color:#d4e3e5;
}
table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
</style>
</head>

<!-- Table goes in the document BODY -->
<body>
<div class="login-form">
<h1>Purchased Product Details</h1>
<div style="float: left; margin-left: 5em;">
<table class="hovertable">
<tr>
	<th>Serial no</th>
<th>Image Of Product</th>
<th>productname</th>
<th>quantity</th>
<th>productPrice</th>
<th>total</th>
<th>User Name</th>
<th>User ID</th>
<th>Product Id </th>
<th> Date </th>
</tr>
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
</c:forEach>

</table>
<br/>


<center>
<button type="submit" class="log-btn" ><a href="#">Okay</a></button>
</center>


</div>

<br><br><br/><br><br><br/>
</div>
</body>
</html>