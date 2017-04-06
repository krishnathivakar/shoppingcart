<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#nav ul {
    list-style-type: none;
    margin:0 0 .5em 0;
    padding: 0;
    font-weight: normal;
    line-height: 1.2em;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
}

li a:hover {
    background-color: orange; 
    
}

</style>
</head>
<body>
Welcome Admin

<%@include file="/WEB-INF/views/Menu.jsp" %>

     <div class="dropdown">
   <button class="dropbtn"><li>Category</a></li></button>
    <div class="dropdown-content">
      <a href="viewCategory">View</a>
      <a href="categoryPage">Add</a>
    </div>
  </div> 			
  
  <div class="dropdown">
   <button class="dropbtn"><li>Product</li></button>
    <div class="dropdown-content">
      <a href="ViewProduct">View</a>
      <a href="productPage">Add</a>
    </div>
  </div> 	
  
  <div class="dropdown">
   <button class="dropbtn"><li>Supplier</li></button>
    <div class="dropdown-content">
      <a href="ViewSupplier">View</a>
      <a href="supplierPage">Add</a>
    </div>
  </div> 
</body>
</html>