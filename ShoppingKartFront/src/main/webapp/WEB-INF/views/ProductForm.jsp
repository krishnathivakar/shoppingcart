<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script>
		function formProduct() {
			// Make quick references to our fields
			var productname = document.getElementById('productName');
			var description = document.getElementById('productDescription');
			var category = document.getElementById('category');
			var supplier = document.getElementById('supplier');
			var stock = document.getElementById('stock');
			var Price = document.getElementById('productPrice');
			var Rating = document.getElementById('productRating');
			var file = document.getElementById('file');

			if (notEmpty(productname, "productName Should not be empty")) {
				if (isAlphabet(productname,
						"Please enter only letters for product name")) {
					if (notEmpty(description, "Description Should not be empty")) {
						if (notEmpty(category, "Drop down Should not be empty for product")) {
							if (notEmpty(supplier,
									"Drop Down Should not be empty for supplier")) {
								if (notEmpty(stock, "Stock Should not be empty")) {
									if (isNumeric(stock,
											"Please enter only Numbers for Stock - Quantity")) {
										if (notEmpty(Price,
												"price Should not be empty")) {
											if (isNumeric(Price,
													"Please enter only Numbers for Price")) {
												if (notEmpty(Rating,
														"Rating Should not be empty")) {
													if (notEmpty(file,
															"file Should not be empty")) {
													}
													return true;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			return false;
		}
		function notEmpty(elem, helperMsg) {
			if (elem.value.length == 0) {
				alert(helperMsg);
				elem.focus(); // set the focus to this input
				return false;
			}
			return true;
		}
		function isNumeric(elem, helperMsg) {
			var numericExpression = /^[0-9]+$/;
			if (elem.value.match(numericExpression)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
		function isAlphabet(elem, helperMsg) {
			var alphaExp = /^[a-z A-Z]+$/;
			if (elem.value.match(alphaExp)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
	</script>
	<form action="addproduct" method="post" enctype="multipart/form-data"
		style="margin-bottom: 6%;" onsubmit="return formProduct()">
		<div class="login-form">
			<h1>Product</h1>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Name"
					name="productName" id="productName"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group log-status">
				<input type="text" class="form-control"
					placeholder="Product Description" name="productDescription"
					id="productDescription"> <i class="fa fa-lock"></i>
			</div>

			<table>
				<tr>
					<td>Category Name</td>
					<div class="form-group ">
						<td><select class="form-control" name="category"
							id="category">
								<option value="" class="form-control">Select Category</option>
								<c:forEach items="${categoryList}" var="category">
									<option value="${category.categoryName }">${category.categoryName }</option>
								</c:forEach>
						</select><br>
						<br></td>
				</tr>
				<tr>
					<td>Supplier Name</td>
					<td><select class="form-control" name="supplier" id="supplier">
							<option value="">Select Supplier</option>
							<c:forEach items="${supplierList}" var="supplier">
								<option value="${supplier.supplierName }">${supplier.supplierName }</option>
							</c:forEach>
					</select><br>
					<br></td>
					<i class="fa fa-user"></i>
					</div>
				</tr>
			</table>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Enter Stock "
					name="stock" id="stock"> <i class="fa fa-user"></i>
			</div>


			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Price "
					name="productPrice" id="productPrice"> <i
					class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Product Rating " name="productRating"
					id="productRating"> <i class="fa fa-user"></i>
			</div>
			<!-- File to upload: -->
			<div class="form-group ">
				<input type="file" class="form-control" placeholder="Upload Image"
					name="file" id="file"><i class="fa fa-user"></i>
			</div>
			
			<div class="form-group ">
				<input type="file" class="form-control" placeholder="Upload Image"
					name="file1" id="file1"><i class="fa fa-user"></i>
			</div>

			<button type="submit" class="log-btn" value="AddNewProduct">Submit!</button>


		</div>



	</form>

</body>
</html>