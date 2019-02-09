<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="externallinks.jsp"%>

<title>Insert title here</title>
</head>
<body>${msg}<br>
	<form:form modelAttribute="reg_bean">
		${reg_bean.fullname}<br>
		${reg_bean.email}<br>
		${reg_bean.phone}<br>
		${reg_bean.address}<br>
		${reg_bean.qualification}<br>

	</form:form>
</body>
</html>