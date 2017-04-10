<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="afterEditSupplier" method="post">
<div class="login-form">
			<h1>Supplier</h1>
			
			<div class="form-group ">
				<input type="text" class="form-control"  name="supplierId"  id="supplierId" placeholder="supplier Id" value="${supplier.supplierId }" readonly="true"><i
					class="fa fa-user"></i>
			</div>
			
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Supplier Name"
					name="supplierName" id="supplierName" value="${supplier.supplierName}" > <i class="fa fa-user"></i>
			</div>
			
			<div class="form-group log-status">
				<input type="text" class="form-control" placeholder="Supplier Description"
					name="supplierDescription" id="supplierDescription" value="${supplier.supplierDescription }"> <i class="fa fa-lock"></i>
			</div>
			
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Supplier Rating "
					name="supplierRating" id="supplierRating" value="${supplier.supplierRating }"> <i class="fa fa-user"></i>
			</div>
			
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Supplier Location "
					name="supplierLocation" id="supplierLocation" value="${supplier.supplierLocation }"> <i class="fa fa-user"></i>
			</div>
			
			
			<button type="submit" class="log-btn" value="AddNewSupplier">Submit!</button>


		</div>
</form>



</body>
</html>