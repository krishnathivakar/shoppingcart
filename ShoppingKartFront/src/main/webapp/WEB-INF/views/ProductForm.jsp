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

<form action="addproduct" method="post" enctype="multipart/form-data" style="margin-bottom:6%;">
<div class="login-form">
			<h1>Product</h1>
			
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Name"
					name="productName" id="productName"> <i class="fa fa-user"></i>
			</div>
			
			<div class="form-group log-status">
				<input type="text" class="form-control" placeholder="Product Description"
					name="productDescription" id="productDescription"> <i class="fa fa-lock"></i>
			</div>

<table>
<tr><td>Category Name  </td><div class="form-group ">
<td><select class="form-control" name="category">
            <option value="" class="form-control">Select Category</option>
            <c:forEach items="${categoryList}" var="category">	
            <option value="${category.categoryName }">${category.categoryName }</option>
            </c:forEach>
            </select><br><br></td>
</tr>
<tr><td>Supplier Name  </td>
<td><select class="form-control" name="supplier">
            <option value="">Select Supplier</option>
            <c:forEach items="${supplierList}" var="supplier">
            <option value="${supplier.supplierName }">${supplier.supplierName }</option>
           </c:forEach>
            </select><br><br></td><i class="fa fa-user"></i></div>
</tr></table>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Enter Stock "
					name="stock" id="stock"> <i class="fa fa-user"></i>
			</div>


			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Price "
					name="productPrice" id="productPrice"> <i class="fa fa-user"></i>
			</div>
			
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Product Rating "
					name="productRating" id="productRating"> <i class="fa fa-user"></i>
			</div>
			<!-- File to upload: -->
			<div class="form-group ">
				<input type="file"  class="form-control" placeholder="Upload Image"
				 name="file" id="file"><i class="fa fa-user"></i>
			</div>
			
			<button type="submit" class="log-btn" value="AddNewProduct">Submit!</button>


		</div>



</form>

</body>
</html>