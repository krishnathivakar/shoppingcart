<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addNewUser" method="post">
<table align="center">
<tr><td>User name:</td>
<td><input type="text" name="userName" placeholder="enter user name"/></td></tr>
<tr><td>password:</td>
<td><input type="password" name="userPassword" placeholder="enter password"/></td></tr>
<tr><td>MailId:</td>
<td><input type="text" name="userMailId" placeholder="enter mailID"/></td></tr>
<tr><td>mobileNumber:</td>
<td><input type="text" name="mobileNumber" placeholder="enter mobile Number"/></td></tr>
<tr><td>Address:</td>
<td><input type="text" name="userAddress" placeholder="enter Address"/></td></tr>
<tr><td>CityCode:</td>
<td><input type="text" name="userCityCode" placeholder="enter CityCode"/></td></tr>
</table>
<center>
<input type="submit" name="submit" value="AddNewUser">
</center>
</form>
</body>
</html>