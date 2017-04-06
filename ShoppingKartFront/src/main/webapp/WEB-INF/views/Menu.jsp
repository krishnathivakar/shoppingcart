<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<style>

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 100%;    
    font-family: arial;
     margin:0 0 .1em 0;
     padding: 12px 16px;
    color: white;
    font-align: center;
    line-height: 1.2em;
    background-color: inherit;
  
  
}

.dropdown:hover .dropbtn {
    background-color: orange;
   
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #333;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: orange;
}

.dropdown:hover .dropdown-content {
    display: block;
}
p{ line-height: 1em; }
h1, h2, h3, h4{

        color: orange;
	font-weight: normal;
	line-height: 1.2em;
	margin: 0 0 .1em 0;
}
h1{ font-size: 1.7em; }
h2{ font-size: 1.5em; }
a{
	color: black;
	text-decoration: none;

}
	a:hover,
	a:active{ text-decoration: none; }

body{
   font-family: arial; 
   font-size: 100%;
   line-height: 1.2em; 
   width: 100%; 
   margin: 0 0 .5em 0; 
   background: #eee; 
   text-align: center;
}

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

#page{ margin: 20px; }
</style>
</head>
<body>
<div id="page">
		<div id="logo">
			<h1><a href="/" id="logoLink">Shopping Cart</a></h1>
		</div>
		
		<div id="nav">
			<ul>  
                                <li><a href="cartPage">Cart</a></li>
                                <li><a href="billingaddressPage">Billing Address</a></li>
                                <li><a href="shippingaddressPage">Shipping Address</a></li>
                                <li><a href="#/home.html">Home</a></li>
                                <li style="float:right"><a href="signupPage">Signup</a></li>
                                <li style="float:right"><a href="#">Logout</a></li>
                                <li style="float:right"><a href="loginPage">Login</button></li>
                               
      </ul>
      </div>
      
     
      
      </div>
     
</body>
</html>