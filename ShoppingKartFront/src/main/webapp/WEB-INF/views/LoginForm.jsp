<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="isvaliduser" method="post">
<table align="center">
<tr><td>User name:</td>
<td><input type="text" name="userName"  placeholder="enter user name"></td></tr>
<tr><td>User password:</td>
<td><input type="text" name="userPassword" placeholder="enter  password"></td></tr>
</table>
<center>
<input type="submit" name="submit" value="Login">
</center>
</form>
</body>
</html>