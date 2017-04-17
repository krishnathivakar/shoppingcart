<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="resources/css/registerstyle.css" />
<title>Insert title here</title>

</head>
<script type="text/javascript">
function formRegister() {
	// Make quick references to our fields
	var username = document.getElementById('userName');
	var password = document.getElementById('userPassword');
	var phone = document.getElementById('mobileNumber');
	var email = document.getElementById('userMailId');
	var address = document.getElementById('userAddress');
	var zipcode = document.getElementById('userCityCode');
	// Check each input in the order that it appears in the form!
	
		
				if (notEmpty(username, "Username Should not be empty")) {
						if (isAlphabet(username,
								"Please enter only letters for Username")) {
							if (notEmpty(password,
									"password Should not be empty")) {
								if (isAlphanumeric(password,
										"Numbers and Letters Only for Passwords")) {
									if (notEmpty(phone,
											"PhoneNumber Should not be empty")) {
										if (isNumeric(phone,
												"Please enter only number for PhoneNumber")) {
											if (notEmpty(email,
													"EmailId Should not be empty")) {
												if (emailValidator(email,
												"EmailId Should be in format of abc@xyz.com ")) {
													if (notEmpty(address,
														"Address Should not be empty")) {
													if (notEmpty(zipcode,
															"Zipcode Should not be empty")) {
														if (isNumeric(
																zipcode,
																"Please enter a valid zip code")) {
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
function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9a-zA-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
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

<body>

	<form action="addNewUser" method="post"
		onsubmit="return formRegister()">
		<div class="login-form">
			<h1>Register</h1>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="User Name"
					name="userName" id="userName"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group log-status">
				<input type="password" class="form-control" placeholder="Password"
					name="userPassword" id="userPassword"> <i
					class="fa fa-lock"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Email id "
					name="userMailId" id="userMailId"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Mobile Number "
					name="mobileNumber" id="mobileNumber"> <i
					class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Address"
					name="userAddress" id="userAddress"> <i class="fa fa-user"></i>
			</div>

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="City Code"
					name="userCityCode" id="userCityCode"> <i
					class="fa fa-user"></i>
			</div>

			<button type="submit" class="log-btn">Sign Me!</button>


		</div>
	</Form>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>



</body>
</html>