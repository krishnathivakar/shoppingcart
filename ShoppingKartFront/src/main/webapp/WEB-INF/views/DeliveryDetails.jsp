<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function goBack() {
    window.history.back();
}
</script>

</head>
<body>




<div class="login-form">
			<h2>Delivery Product Details</h2>

<table class="table" border="2">
<thead>
<tr>
<th>Serial no</th>
<th>Product Id</th>
<th>product Name</th>
<th>User Id</th>
<th>User Name</th>
<th>Days</th>
</tr>
</thead>
<c:forEach items="${cartList}" var="cart" varStatus="status">

<tr>
<th scope="row">${status.count}</th>
<td>${cart.productId}</td>
<td>${cart.productName }</td>
<td>${cart.userId }</td>
<td>${cart.userName }</td>
<td>${cart.days }</td>

 
</tr>
</c:forEach>

</table><center>
<button type="submit"><a href="ok">okie !!</a></button>
</center>
</div>



</body>
</html>