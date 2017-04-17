<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<script>
function formCategory() {
		// Make quick references to our fields
		var categoryName = document.getElementById('categoryName');
		var description = document.getElementById('categoryDescription');
		if (notEmpty(categoryName, "categoryName Should not be empty")) {
			if (isAlphabet(categoryName,
					"Please enter only letters for Category")) {
				if (notEmpty(description, "Description Should not be empty")) {
					return true;
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
<body>
	<form action="addCategory" method="post" onsubmit="return formCategory()">

		<div class="login-form">
			<h1>Category</h1>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Category Name"
					name="categoryName" id="categoryName"> <i
					class="fa fa-user"></i>
			</div>

			<div class="form-group log-status">
				<input type="text" class="form-control" placeholder="Category Description" 
				name="categoryDescription"	id="categoryDescription"> <i class="fa fa-lock"></i>
			</div>
			<button type="submit" class="log-btn" value="AddNewCategory">Submit!</button>


		</div>

	</form>
</body>
</html>