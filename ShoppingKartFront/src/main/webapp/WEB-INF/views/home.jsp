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
	<br>
	<br>
	<%@include file="/WEB-INF/views/NavBar.jsp"%>
	<c:if test="${not empty registerButtonClicked}">
		<%@include file="RegistrationForm.jsp"%>
	</c:if>



	<c:if test="${not empty loginButtonClicked}">
		<%@include file="LoginForm.jsp"%>
	</c:if>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>