<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html >
<html>
<head>

<title>Contact Us|Upchaar</title>

<%@include file="externallinks.jsp"%>

<title>Insert title here</title>
</head>
<body style="background: #FCF3CF;">


	<div class="header-nightsky">
		<nav class="navbar navbar-default">
			<div class="container">
				<a class="navbar-brand" href="#"><strong>Upchaar</strong></a>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index">HOME</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">NEWS <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">National</a></li>
								<li><a href="#">International</a></li>
								<li><a href="#">Local</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">FEATURES <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Our Goals</a></li>
								<li><a href="#">FAQs</a></li>
								<li><a href="#">Inspirations</a></li>
							</ul></li>

						<li><a href="reg.php"><span
								class="glyphicon glyphicon-user"></span>Sign Up</a></li>
						<li><a href="reg.php"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="container text-center">

			<div class="row">

				<div class="col-lg-8 col-lg-offset-2">

					<br /> <font size="4" class="success">Email us with any
						questions or inquiries or use our contact data. We would be happy
						to answer your questions.</font>

					<!-- //check -->

					<%--       <form id="contact-form" method="post" > --%>
					${msg}<br>
					<form:form action="contactussave" method="post"
						commandName="contactUs">
						<div class="messages"></div>

						<div class="controls">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname">Firstname *</label>
										<%--    <form:input path="fullname"/> --%>
										<form:input id="form_name" name="name" path="fname"
											class="form-control"
											placeholder="Please enter your firstname *"
											required="required" data-error="Firstname is required." />
										<!-- <input id="form_name" type="text" name="name" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required."></input>
                     -->
										<div class="help-block with-errors"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="form_lastname">Lastname *</label> <input
											id="form_lastname" type="text" path="lname" name="surname"
											class="form-control"
											placeholder="Please enter your lastname *"
											required="required" data-error="Lastname is required."></input>
										<div class="help-block with-errors"></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="form_email">Email *</label> <input id="form_email"
											type="email" path="email" name="email" class="form-control"
											placeholder="Please enter your email *" required="required"
											data-error="Valid email is required."></input>
										<div class="help-block with-errors"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="form_phone">Phone</label> <input id="form_phone"
											type="tel" path="phone" name="phone" class="form-control"
											placeholder="Please enter your phone"></input>
										<div class="help-block with-errors"></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="form_message">Message *</label>
										<textarea id="form_message" name="message" path="message"
											class="form-control" placeholder="Message for me *" rows="4"
											required="required" data-error="Please,leave us a message."
											cols=""></textarea>
										<div class="help-block with-errors"></div>
									</div>
								</div>
								<div class="col-md-12">
									<input type="submit" class="btn btn-success btn-send"
										value="contactus"></input>
									<!-- <input type="submit" value="Save"> -->

								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<p class="text-muted">
										<strong>*</strong> These fields are required.
									</p>
								</div>
							</div>
						</div>

					</form:form>


				</div>

			</div>

		</div>

		<div id="footer">
			<div class="container">
				<div class="row">
					<h3 class="footertext">About Us:</h3>
					<br />
					<div class="col-md-4 text-center">

						<a href="www.facebook.com/sushantmishra94"><img
							src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle"
							alt="the-brains"></img></a> <br />
						<h4 class="footertext">Programmer</h4>
						<p class="footertext">You can thank all the crazy programming
							here to this guy.</p>
						<br />

					</div>
					<div class="col-md-4 text-center">

						<a href="www.facebook.com/sushantmishra94"> <img
							src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle"
							alt="artist"></img></a> <br />
						<h4 class="footertext">Artist</h4>
						<p class="footertext">All the images here are hand drawn by
							this man.</p>
						<br />

					</div>
					<div class="col-md-4 text-center">

						<a href="www.facebook.com/sushantmishra94"> <img
							src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle"
							alt="Designer"></img></a> <br />
						<h4 class="footertext">Designer</h4>
						<p class="footertext">This pretty site and the copy it holds
							are all thanks to this guy.</p>
						<br />

					</div>
				</div>
				<div class="row text-center">
					<p>
						<a href="#">Contact Stuff Here</a>
					</p>
					<p class="footertext">Copyright 2018</p>
				</div>
			</div>
		</div>


		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
			type="text/javascript"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			type="text/javascript"></script>

		<script src="https://code.jquery.com/jquery-1.12.0.min.js"
			type="text/javascript"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script src="validator.js" type="text/javascript"></script>
		<script src="contact.js" type="text/javascript"></script>
	</div>




	<%-- 

${msg}<br>
	<form:form action="dude" method="post" commandName="reg_model">
		<label>Full Name:
			<form:input path="fullname"/>
		</label><br>
		<label>Email:
			<form:input path="email"/>
		</label><br>
		<label>Phone Number:
			<form:input path="phone"/>
		</label><br>
		<label>Address:
			<form:textarea path="address"/>
		</label><br>
		<label>Qualification:
			<form:input path="qualification"/>
		</label><br>
		<label>UserName:
			<form:input path="username"/>
		</label><br>
		<label>Password:
			<form:input path="password"/>
		</label><br>
		<input type="submit" value="Save">
	</form:form>
 --%>
</body>
</html>