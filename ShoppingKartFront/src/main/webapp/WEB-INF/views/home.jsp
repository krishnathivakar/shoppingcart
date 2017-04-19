<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="margin:0px 5px 0px 5px;">
	<%@include file="/WEB-INF/views/NavBar.jsp"%>
	

	
	<c:choose>
	<c:when test="${not empty registerButtonClicked}">
	<%@include file="RegistrationForm.jsp"%>
	
	</c:when>
	<c:when test="${not empty loginButtonClicked}">
	<%@include file="LoginForm.jsp"%>
	</c:when>
	<c:otherwise>
	<%@include file="/WEB-INF/views/FrontView.jsp"%><br><br>
	
	
	<%@include file="/WEB-INF/views/ListedProducts.jsp"%>
	</c:otherwise>
	</c:choose>
	
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>