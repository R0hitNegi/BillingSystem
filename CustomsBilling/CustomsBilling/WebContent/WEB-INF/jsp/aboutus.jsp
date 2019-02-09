<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>About Us| Upchaar</title>

<%@include file="externallinks.jsp"%>

<style type="text/css">
.mt-0 {
	margin-top: 0 !important;
}

.mb-0 {
	margin-bottom: 0 !important;
}

.duh {
	background-color: white;
	text-align: center;
	width: 100%;
}

.first {
	display: block;
	text-align: center;
	;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style='background-image: url(images/div.jpg);'>


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
								<li><a href="#">NEWS 1-1</a></li>
								<li><a href="#">NEWS 1-2</a></li>
								<li><a href="#">NEWS 1-3</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">FEATURES <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">FEATURES 1-1</a></li>
								<li><a href="#">FEATURES 1-2</a></li>
								<li><a href="#">FEATURES 1-3</a></li>
							</ul></li>


					</ul>
				</div>
			</div>
		</nav>
	</div>

	<section class="bg- clear-all video-player">
		<video width="100%" title="About us | What we do - Upchaar"
			preload='metadata'
			poster="https://www.practo.com/providers/static/images/pages/company/bridge_video_poster.png"
			onclick="window.videoPlayer(this)" src="">
			<source src="#" type="video/mp4"></source>
		</video>
	</section>
	<div class="clearfix"></div>
	<div class="duh">

		<br /> <br /> <br /> <font size="8"><strong>Consultancy
				at your doorstep..</strong></font> <br /> <br /> <br />

		<div class="container">
			<div class="row">
				<div class="col"></div>

				<div class="col-10">
					<font size="4">For millions of people, Upchaar is the
						trusted and familiar home where they know they’ll find a healing
						touch. It connects them with everything they need to take good
						care of themselves and their family - assessing health issues,
						finding the right doctor, booking diagnostic tests, obtaining
						medicines, storing health records or learning new ways to live
						healthier.<br /> <br /> Healthcare providers can also harness
						the power of Upchaar as the definitive platform that helps them
						build their presence, grow establishments and engage patients more
						deeply than ever.
					</font>
				</div>

				<div class="col"></div>

			</div>
		</div>

		<br /> <br /> <br /> <br />
	</div>

	<div class="container-fluid"></div>

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

	${msg}
	<br>
	<%-- <form:form action="dude" method="post" commandName="reg_model">
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
	</form:form> --%>
</body>
</html>