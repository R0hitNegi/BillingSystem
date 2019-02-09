<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Find Doctors</title>

<%@include file="externallinks.jsp"%>

<style>
#footer {
	position: bottom;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 280px;
	background: /* color overlay */ linear-gradient( rgba( 240, 212, 0, 0.45
		), rgba( 0, 0, 0, 0.45)), /* image to overlay */
    url(http://images.cdn.fotopedia.com/_avPIZmqM3w-7z161LH_268-hd.jpg);
}

#zero {
	background-image: "images/div.jpg";
	background-repeat: no-repeat;
	background-position: right top;
}

/* other one */
/* div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
} */
</style>
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
								<li><a href="#">NDTV</a></li>
								<li><a href="#">INDIA TV</a></li>
								<li><a href="#">AAJ TAK</a></li>
							</ul></li>
						<li><a href="contactus">Contact Us</a></li>

						<!--  <li><a href="save"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>-->
					</ul>
				</div>
			</div>
		</nav>
		<div class="container text-center" style="background: #FCF3CF;">
			<br /> <br /> <br /> <br /> ${msg} <br>
			<p>
				<strong><font size="15">Consultancy at your doorstep</font></strong>
			</p>
			<br />


			<h3>
				<b>Find An Appointment</b>
			</h3>

			<select class="selectpicker" id="city" name="area"
				data-live-search="true">
				<optgroup label="Delhi">
					<option>South Delhi</option>
					<option>North Delhi</option>
					<option>West Delhi</option>
					<option>Jamuna Paar</option>
				</optgroup>
				<optgroup label="Uttar Pradesh">
					<option>Noida</option>
					<option>Ghaziabad</option>
					<option>Greater Noida</option>
				</optgroup>
				<optgroup label="Hariyana">
					<option>Gurugram</option>
					<option>Faridabad</option>
					<option>Sonipat</option>
				</optgroup>
			</select> <select class="selectpicker" id="specialization"
				name="specialization" data-live-search="true">
				<optgroup label="Specialization">
					<option>Cardiologist</option>
					<option>Dermatologist</option>
					<option>Dentist</option>
					<option>Cordiologist</option>
					<option>Gynecologist</option>
					<option>Pediatrician</option>
					<option>Psychiatrist</option>
					<option>Radiologist</option>
					<option>Ayurveda</option>
				</optgroup>
			</select>
			<button type="button" onclick="search()">Search</button>
			<div id="msg">
				<h2 id="msg2">Search your Doctor..</h2>
			</div>
			<script>
function search(){
	var city=document.getElementById("city").value;
	var specialization=document.getElementById("specialization").value;
//alert(city+"    "+specialization);

if(city=='Noida'||specialization=='Cardiologist')
	{
	document.getElementById("msg2").innerHTML='Dr. Vijay Kumar <br> (Available)';
	}
else if(city=='South Delhi'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. Rekha <br> (Available)";
}
else if(city=='Jamuna Paar'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. Shikha <br> (Not Available)";
}
else if(city=='Ghaziabad'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. Pariktshit <br> (Available)";
}
else if(city=='Greater Noida'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. Chandramohan <br> (Available)";
}
else if(city=='Gurugram'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. vinay <br> (Available)";
}

else if(city=='Faridabad'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. shubham <br> (Available)";
}
else if(city=='Sonipat'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. Alex Smith <br> (Available)";
}
else if(city=='West Delhi'||specialization=='Cardiologist')
{
	document.getElementById("msg2").innerHTML="Dr. John Padila <br> (Available)";
}
}

</script>

			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <strong><a
				href="#">Order Medicines</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="#">View Medical Records</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">Book Test</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="#">Read Articles</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="#">For Healthcare Providers</a></strong>

		</div>
	</div>
	<div class="fine" style="background-color: white">
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
	</div>
	<div>

		<div class="container-fluid"
			style="background: #FCF3CF; margin-bottom: 0px">
			<table style="width: 100%">

				<tr>

					<td>
						<ul style="list-style-type: none">
							<li><h5>Upchaar</h5></li>
							<li><a href="aboutus"> About</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="careers87u ">Careers</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="contactus">Contact Us</a></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</td>
					<td>
						<ul style="list-style-type: none">
							<li><h5>For Patients</h5></li>
							<li><a href="#"> Ask free health questions</a></li>
							<li><a href="#">Search For Doctors</a></li>
							<li><a href="#">Search For Clinics</a></li>
							<li><a href="#">Search For Hospitals</a></li>
							<li><a href="#">Consult A Doctor</a></li>
							<li><a href="#">Order Medicines</a></li>
							<li><a href="#">Read About Medicines</a></li>
							<li><a href="#">Upchaar Drive</a></li>
							<li><a href="#">Upchaar App</a></li>
						</ul>
					</td>
					<td>
						<ul style="list-style-type: none">
							<li><h5>For Doctors</h5></li>
							<li><a href="#"> Upchaar Consult</a></li>
							<li><a href="#">Upchaar HealthFeedeed</a></li>
							<li><a href="#">Upchaar Profile</a></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>

						</ul>
					</td>
					<td>
						<ul style="list-style-type: none">
							<li><h5>For Hospitals</h5></li>
							<li><a href="#">Insta By Upchaar</a></li>
							<li><a href="#">Qikwell By Upchaar</a></li>
							<li><a href="#">Upchaar profile</a></li>
							<li><a href="#">Upchaar health</a></li>
							<li><a href="#">Upchaar Drive</a></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</td>
					<td>
						<ul style="list-style-type: none">
							<li><h5>More</h5></li>
							<li><a href="#"> Help</a></li>
							<li><a href="#">Developers</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Terms &amp; Conditions</a></li>
							<li><a href="#">Health Care Directory</a></li>
							<li><a href="#">Upchaar Health Wiki</a></li>
							<li></li>
							<li></li>
						</ul>
					</td>
					<td>
						<ul style="list-style-type: none">
							<li><h5>Social</h5></li>
							<li><a href="#"> Facebook</a></li>
							<li><a href="#">Twitter</a></li>
							<li><a href="#">LinkedIn</a></li>
							<li><a href="#">YouTube</a></li>
							<li><a href="#">GitHub</a></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="footer">
		<div class="container">
			<div class="row">
				<h3 class="footertext">About Us:</h3>
				<br />
				<div class="col-md-4">
					<a href="www.facebook.com/sushantmishra94"><img
						src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle"
						alt="the-brains" /></a> <br />
					<h4 class="footertext">Programmer</h4>
					<p class="footertext">You can thank all the crazy programming
						here to this guy.</p>
				</div>
				<div class="col-md-4">
					<a href="www.facebook.com/sushantmishra94"> <img
						src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle"
						alt="artist" /></a> <br />
					<h4 class="footertext">Artist</h4>
					<p class="footertext">All the images here are hand drawn by
						this man.</p>

				</div>
				<div class="col-md-4">
					<a href="www.facebook.com/sushantmishra94"> <img
						src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle"
						alt="Designer" /></a> <br />
					<h4 class="footertext">Designer</h4>
					<p class="footertext">This pretty site and the copy it holds
						are all thanks to this guy.</p>
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
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>










	<div class="container">

		<header>
			<h1>City Gallery</h1>
		</header>

		<nav>
			<ul>
				<li><a href="#">Facebook</a></li>
				<li><a href="#">Twitter</a></li>
				<li><a href="#">Orkut</a></li>
			</ul>
		</nav>

		<article>
			<h1></h1>
			<p>Try Out Something New by registering with Us :</p>
			<p>Login</p>
			<a href="login"><input type="button" value="Login"></a>

			<p>New Register</p>
			<a href="save"><input type="button" value="Register"></a>

			<p>VVIP Login</p>
			<a href="vvip"><input type="button" value="Register"></a>
		</article>

		<footer>Copyright &copy; W3Schools.com</footer>

	</div>

</body>
</html>
