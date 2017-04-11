
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include file="/WEB-INF/views/NavBar.jsp"%>
<%@include file="/WEB-INF/views/ListedProducts.jsp"%>



<c:choose>
<c:when test="${not empty ProductDetails }">
<%@include file="/WEB-INF/views/ProductDetails.jsp"%>
</c:when>
<c:when test="${not empty myCartClicked }">
<%@include file="/WEB-INF/views/myCart.jsp"%>
</c:when>

<c:otherwise>
<%@include file="/WEB-INF/views/ListedProducts.jsp"%>
</c:otherwise>
</c:choose>


</body>
</html>