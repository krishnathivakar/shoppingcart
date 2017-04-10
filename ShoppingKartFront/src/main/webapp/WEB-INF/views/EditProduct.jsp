<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="afterEditProduct" method="post">
		<div class="login-form">
			<h1>Product</h1>
			
			<div class="form-group ">
				<input type="text" class="form-control"  name="productId"  id="productId" placeholder="Category Id" value="${product.productId }" readonly="true"><i
					class="fa fa-user"></i>
			</div>
			

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Name"
					name="productName" id="productName" value="${product.productName }"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group log-status">
				<input type="text" class="form-control"
					placeholder="Product Description" name="productDescription"
					id="productDescription" value="${product.productDescription }"> <i class="fa fa-lock"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Price "
					name="productPrice" id="productPrice" value="${product.productPrice }"> <i
					class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Product Rating " name="productRating"
					id="productRating" value="${product.productRating }"> <i class="fa fa-user"></i>
			</div>


			<button type="submit" class="log-btn" value="AddNewProduct">Submit!</button>


		</div>






	</form>

</body>
</html>