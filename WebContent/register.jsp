<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<style type="text/css">

</style>
</head>
<body>


<div class="container">
<jsp:include page="header.jsp"></jsp:include>
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card mt-2">
<header class="card-header" style="background-color:  #FADCD9;">
<center><img src="img/logo.jpeg" style="width:250px; height:auto;"></center>
	<a href="login.jsp" class="float-right btn btn-outline-primary mt-1">Log in</a>
	<h4 class="card-title mt-2">Sign up</h4>
</header>
<article class="card-body">
<form action="Register" method="post">
	<div class="form-group">
		<label>Enter Username</label>
		<input type="text" name="uname"  class="form-control" placeholder="Enter Username">
	</div> 
	<div class="form-group">
		<label>Email address</label>
		<input type="email" name="email" class="form-control" placeholder="Enter Email">
		<small class="form-text text-muted">We'll never share your email with anyone else.</small>
	</div> 
	<div class="form-group">
		<label>Create password</label>
	    <input class="form-control" name="psw" type="password" placeholder="Enter Password">
	</div>   
	<div class="form-group">
		<label>Confirm password</label>
	    <input class="form-control" name="cpsw" type="password" placeholder="Enter Confirm Password">
	</div> 
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Register  </button>
    </div>    
                                              
</form>
</article>
<div class="border-top card-body text-center">Have an account? <a href="login.jsp">Log In</a></div>
</div>
</div> 

</div>


</div> 
<!--container end.//-->

</body>
</html>