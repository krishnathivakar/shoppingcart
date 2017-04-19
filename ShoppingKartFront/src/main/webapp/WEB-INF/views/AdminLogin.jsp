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
		<br>
	<%@include file="/WEB-INF/views/NavBar.jsp"%>

	<br>
	<!-- <nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<ul class="nav navbar-nav"> -->
			<div class="row">
			<ul style="list-style: none;"><div style="float: left; margin-left: 7em;">
	<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewProduct">View</a></li>
						<li><a href="productPage">Add</a></li>
					</ul></li></div>
			<div style="float: left; margin-left: 7em;">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory">View</a></li>
						<li><a href="categoryPage">Add</a></li>
					</ul></li></div>
			<div style="float: left; margin-left: 7em;">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewSupplier">View</a></li>
						<li><a href="SupplierPage">Add</a></li>
					
			</ul></li></div>
			<div style="float: left; margin-left: 7em;">
			<li><a href="adminCart">Cart</a> </li>
			</div>
			</div></ul>
		<!-- </div>
	</div>
	</nav> -->
	<hr>
	<c:choose>
		<c:when test="${not empty addCategoryClicked }">
			<%@include file="/WEB-INF/views/CategoryForm.jsp"%>
		</c:when>
		<c:when test="${not empty viewCategoryClicked }">
			<%@include file="/WEB-INF/views/ViewCategory.jsp"%>
		</c:when>
		<c:when test="${not empty editCategoryClicked }">
			<%@include file="/WEB-INF/views/EditCategory.jsp"%>
		</c:when>

		<c:when test="${not empty addProductClicked }">
			<%@include file="/WEB-INF/views/ProductForm.jsp"%>
		</c:when>

		<c:when test="${not empty viewProductClicked }">
			<%@include file="/WEB-INF/views/ViewProduct.jsp"%>
		</c:when>

		<c:when test="${not empty editProductClicked }">
			<%@include file="/WEB-INF/views/EditProduct.jsp"%>
		</c:when>



		<c:when test="${not empty addSupplierClicked }">
			<%@include file="/WEB-INF/views/SupplierForm.jsp"%>
		</c:when>

		<c:when test="${not empty viewSupplierClicked }">
			<%@include file="/WEB-INF/views/ViewSupplier.jsp"%>
		</c:when>

		<c:when test="${not empty editSupplierClicked }">
			<%@include file="/WEB-INF/views/EditSupplier.jsp"%>
		</c:when>
<c:when test="${not empty adminCartClicked }">
			<%@include file="/WEB-INF/views/adminCart.jsp"%>
		</c:when>
		<c:otherwise>
  </c:otherwise>

	</c:choose>
		<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>