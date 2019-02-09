<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<bean id="signupModel" class="com.commerceo.springmvc.model.SignupModel"/>
<%@include file="externallinks.jsp"%>

<title>Welcome ${firstname}</title>
</head>
<body>
<h1>Welcome ${firstname}</h1>
<% String firstname = (String)request.getAttribute("firstname"); %>
<%=firstname %>
</body>
</html>