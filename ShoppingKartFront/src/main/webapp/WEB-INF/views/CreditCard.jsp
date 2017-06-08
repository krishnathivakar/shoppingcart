<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<Form action="Account" method="post">
		<div class="login-form">
			<h1>Account Details</h1>

			<div class="form-group ">
				<select class="form-control" name="bank" id="bank">
					<option value="" class="form-control">Select Your Bank</option>

					<option value="#">STATE BANK OF INDIA</option>
					<option value="#">INDIAN OVERSEAS BANK</option>
					<option value="#">BANK OF BARODA</option>
					<option value="#">ICICI</option>
					<option value="#">INDIAN BANK</option>
					<option value="#">CITY UNION BANK</option>
				</select>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Customer ID " name="c_id" id="c_id"> <i
					class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Enter Name "
					name="Name" id="Name"> <i class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Card Name " name="c_name" id="c_name"> <i
					class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Card Number " name="c_num" id="c_num"> <i
					class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter CVV pin " name="cvv" id="cvv"> <i
					class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Branch CODE " name="code" id="code"> <i
					class="fa fa-user"></i>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter IFSC code " name="ifsc" id="ifsc"> <i
					class="fa fa-user"></i>
			</div>
			<button type="submit" class="log-btn" value="AddAccount">Submit!</button>
			<button type="submit" class="log-btn" value="Reset">Reset!</button>
			
			
			</div>
			</Form>
			
</body>
</html>