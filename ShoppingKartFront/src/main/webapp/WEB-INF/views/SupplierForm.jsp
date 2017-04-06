<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="addsupplier" method="post">
<table align="center">
<tr><td>supplier Name:</td><br>
<td><input type="text" name="supplierName" placeholder="enter supplier name"/></td></tr>
<tr><td>supplier Description:</td><br>
<td><input type="text" name="supplierDescription" placeholder="enter supplier Description"/></td></tr>
<tr><td>supplier Rating:</td><br>
<td><input type="text" name="supplierRating" placeholder="enter supplier Rating"/></td></tr>
<tr><td>supplier Location:</td><br>
<td><input type="text" name="supplierLocation" placeholder="enter supplier Location"/></td></tr>
</table>
<center>
<input type="submit" name="SubmitForm" value="AddNewSupplier">
</center>
</form>

</body>
</html>