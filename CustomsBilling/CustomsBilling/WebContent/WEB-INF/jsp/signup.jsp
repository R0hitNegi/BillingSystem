<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="externallinks.jsp"%>

<script type="text/javascript" src="resources/js/signup.js"></script>
<link rel="stylesheet" href="resources/css/signup.css" type="text/css" />

<title>COMMERCEO SignUp</title>
</head>
<body>
	<div class="div1">
		<section class="section1">

			<div>
				<p style="color: #0AC986">COMMERCEO SignUp</p>
				<img src="" alt="">
			</div>

			<div class="form">
				<form:form action="signup" method="POST"
					modelAttribute="signupModel">

					<div class="input">
						<label id="flable"></label>
						<form:input style="width: 205px;" type="text" id="firstname"
							placeholder="First Name" name="firstname" required="required"
							path="firstname" value="Prashant" />
						<label id="llable"></label>
						<form:input style="width: 205px;" type="text" id="lastname"
							placeholder="Last Name" name="lastname" required="required"
							path="lastname" value="Mishra" />
						<i class="fa fa-address-card" aria-hidden="true"></i>
					</div>
					<br>
					<div class="input">
						<label id="ulable"></label>
						<form:input style="width: 420px;" type="email" id="email"
							placeholder="Username OR Email" name="email" required="required"
							path="email" value="@gmail.com" />
						<i class="fa fa-user"></i>
					</div>
					<br>
					<div class="input">
						<label id="plable"></label>
						<form:input type="password" id="password" placeholder="Password"
							name="password" required="required" path="password" value="qwerty"/>
						<i class="fa fa-lock"></i> <label id="clable"></label>
						<form:input type="password" id="password" placeholder="Confirm"
							name="confirm" required="required" path="" value="qwerty" />
						<i class="fa fa-lock"></i>
					</div>
					<br>
					<div>
						<form:radiobutton name="sex" value="1" checked="checked"
							path="sex" />
						<label> Male</label>
						<form:radiobutton name="sex" value="2" path="sex" />
						<label> Female</label>
						<form:radiobutton name="sex" value="9" path="sex" />
						<label> Other</label>
					</div>
					<br>
					<div>
						<label>Birthday </label> <br>
						<form:input type="date" id="dp" name="birthday"
							required="required" path="birthday" value="1995-12-27" />
						<span class="fa fa-calendar"></span>
					</div>

					<div>
						<label> Signed Up Already? <a href="login">Sign In</a></label> <input
							type="submit" id="signup" value="Sign Up" />
					</div>

				</form:form>

			</div>
		</section>

		<section class="section2">
			<div class="s2img">
				<img draggable="false" src="resources/img/account.svg" id="svg"
					alt="">
			</div>
		</section>

	</div>

</body>
</html>