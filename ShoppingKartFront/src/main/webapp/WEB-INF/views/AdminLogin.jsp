<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome Admin

<br><br>
<%@include file="/WEB-INF/views/NavBar.jsp" %>
<br>

 <br>
 <br>
 <br>
 <hr>
  <c:choose>
  <c:when test="${not empty addCategoryClicked }">
  <%@include file="/WEB-INF/views/CategoryForm.jsp" %>
  </c:when>
  <c:when test="${not empty viewCategoryClicked }">
  <%@include file="/WEB-INF/views/ViewCategory.jsp" %>
  </c:when>
  <c:when test="${not empty editCategoryClicked }">
  <%@include file="/WEB-INF/views/EditCategory.jsp" %>
  </c:when>
  
  <%-- <c:when test="${not empty viewProductClicked }">
  <%@include file="/WEB-INF/views/ViewProduct.jsp" %>
  </c:when> --%>
  
  <c:when test="${not empty addProductClicked }">
  <%@include file="/WEB-INF/views/ProductForm.jsp" %>
  </c:when>
  
  <c:when test="${not empty viewProductClicked }">
  <%@include file="/WEB-INF/views/ViewProduct.jsp" %>
  </c:when>
  
  <c:when test="${not empty editProductClicked }">
  <%@include file="/WEB-INF/views/EditProduct.jsp" %>
  </c:when>
  
  
  
  <c:when test="${not empty addSupplierClicked }">
  <%@include file="/WEB-INF/views/SupplierForm.jsp" %>
  </c:when>
  
  <c:when test="${not empty viewSupplierClicked }">
  <%@include file="/WEB-INF/views/ViewSupplier.jsp" %>
  </c:when>
  
  <c:when test="${not empty editSupplierClicked }">
  <%@include file="/WEB-INF/views/EditSupplier.jsp" %>
  </c:when>
  
  
  
  </c:choose>
</body>
</html>