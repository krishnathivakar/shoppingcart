<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="addCategory" method="post">

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