<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration page</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="resources/css/registerstyle.css" media="all" />
    <link rel="stylesheet" type="text/css" href="resources/css/registerdemo.css" media="all" />
</head>
<body>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a href="http://www.freshdesignweb.com" target="_blank">Home</a>
                <span class="right">
                    <a href="http://www.freshdesignweb.com/beautiful-registration-form-with-html5-and-css3.html">
                        <strong>Back to the freshdesignweb Article</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span>Register</span>here</h1>
            </header>       
      <div  class="form">
    		<form id="contactform" action="addNewUser" method="post"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="userName" placeholder="First and last name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="userMailId" placeholder="example@domain.com" required="" type="email"> 
                
                <!-- <p class="contact"><label for="username">Create a username</label></p> 
    			<input id="username" name="username" placeholder="username" required="" tabindex="2" type="text"> 
    			 --> 
                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="userPassword" required=""> 
                <p class="contact"><label for="repassword">Confirm your password</label></p> 
    			<input type="password" id="repassword" name="repassword" required=""> 
        
  
            
            <p class="contact"><label for="name">Address</label></p> 
    			<input id="name" name="userAddress" placeholder="Enter Address" required="" tabindex="1" type="text"> 
    		
    		<p class="contact"><label for="name">City Code</label></p> 
    			<input id="name" name="userCityCode" placeholder="Enter CityCode" required="" tabindex="1" type="text"> 
    			
            
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="mobileNumber" placeholder="phone number" required="" type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>