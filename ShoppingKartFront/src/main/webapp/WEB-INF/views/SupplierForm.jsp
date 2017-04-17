<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
	function formSupplier() {
		// Make quick references to our fields
		var supplierName = document.getElementById('supplierName');
		var description = document.getElementById('supplierDescription');
		var Rating = document.getElementById('supplierRating');
		var location = document.getElementById('supplierLocation');

		if (notEmpty(supplierName, "SupplierName Should not be empty")) {
			if (isAlphabet(supplierName,
					"Please enter only letters for supplier name")) {
				if (notEmpty(description, "Description Should not be empty")) {
					if (notEmpty(Rating, "Rating Should not be empty")) {
						if (notEmpty(location,
								"location Should not be empty")) {
						}
						return true;
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
</script>

<body>


	<form action="addSupplier" method="post" onsubmit="return formSupplier()">
		<div class="login-form">
			<h1>Supplier</h1>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Supplier Name"
					name="supplierName" id="supplierName"> <i
					class="fa fa-user"></i>
			</div>

			<div class="form-group log-status">
				<input type="text" class="form-control"
					placeholder="Supplier Description" name="supplierDescription"
					id="supplierDescription"> <i class="fa fa-lock"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Supplier Rating " name="supplierRating"
					id="supplierRating"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Supplier Location " name="supplierLocation"
					id="supplierLocation"> <i class="fa fa-user"></i>
			</div>


			<button type="submit" class="log-btn" value="AddNewSupplier">Submit!</button>


		</div>
	</form>

</body>
</html>