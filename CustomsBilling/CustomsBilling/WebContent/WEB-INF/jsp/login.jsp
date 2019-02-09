<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<%@include file="externallinks.jsp"%>

<link rel="stylesheet" href="resources/css/login.css" type="text/css" />
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favicon.ico" />
<script src="resources/js/login.js" type="text/javascript"></script>

<style>

#forgotpass {
	float: right;
}

.greytext {
	font-family: sans-serif, Arial;
	color: gray;
	font-size: 14px;
	text-decoration: none;
	margin-bottom: 10px;
}

#signup {
	text-align: center;
}
</style>
<title>Login</title>

</head>
<body>
   
	<div class="login-form">
		         
		<div class="login-face">
			<img draggable="false" src="resources/img/plane1.png">
		</div>
		
		<section class="form">
			<form:form action="logincheck" method="POST"
				modelAttribute="loginModel">
				<!-- 			loginmodel is object of this of this form which will be passed to the @RequestMapping ModelandView method which  -->
				<!-- 			is called on this form action = /login.  -->

				<div id="ulable" style="display:none;"><label >Alphanumeric and Email Only</label></div>
				<div class="input uname">

					<form:input data-validation="length alphanumeric" data-validation-length="min4" id="username" path="username" placeholder="Username"
						required="required" />
					<i class="fa fa-user"></i> <label id="ulable"></label>
				</div>

				<div class="input pass">
					<form:input type="password" id="password" placeholder="Password"
						path="password" required="required" />
					<i class="fa fa-lock"></i>
				</div>

				<a id="forgotpass" class="greytext" href="#">Forgot Password</a>

				<p class="wrongmsg">Wrong Credential</p>

				<div>
					<input type="submit" id="login" value="Log in" />
				</div>
			</form:form>

			<div>
				<P id="signup" class="greytext">
					New To WebSite? <a href="signup">Sign Up</a>
				</P>
			</div>
		</section>
	</div>
	

</body>
</html>