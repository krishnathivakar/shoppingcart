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
<h1>Your Product Has Been Successfully Added</h1>
<h3>
<center>
<span><a href="click">Click here</a></span> To Know More!!</center>

<c:if test="${not empty addClickClicked }">
			<%@include file="/WEB-INF/views/DeliveryDetails.jsp"%>
		</c:if>

</h3>
</body>
</html>