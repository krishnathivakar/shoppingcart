<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
<title>Insert title here</title>
<style>

</style>
</head>

<body>
<Form action="isvaliduser" method="post">
  <div class="login-form">
     <h1>Login</h1>
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="Email id " name="userMailId" id="userMailId">
       <i class="fa fa-user"></i>
     </div>
     <div class="form-group log-status">
       <input type="password" class="form-control" placeholder="Password" name="userPassword" id="Passwod">
       <i class="fa fa-lock"></i>
     </div>
      <!-- <span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
 -->     <button type="submit" class="log-btn" >Log in</button>
    
    
   </div></Form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</body>
</html>