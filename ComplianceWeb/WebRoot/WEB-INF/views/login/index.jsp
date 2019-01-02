<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/gologin" var="urlForm" />
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<title>AvanceTi | Login</title>
</head>
<body id="LoginForm">
	<div class="container">
		<spring:hasBindErrors name="pelicula">
			<div class='alert alert-danger' role='alert'>
			Por favor corrija los siguientes errores:
				<ul>
					<c:forEach var="error" items="${errors.allErrors}">
						<li><spring:message message="${error}" /></li>
					</c:forEach>
				</ul>
				<!-- 
				<form:errors path="pelicula.*" cssClass="error" />
				-->
			</div>
		</spring:hasBindErrors>
		<h1 class="form-heading">Login Form</h1>
		<span style="color: red;">${message}</span>
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>Admin Login</h2>
					<p>Please enter your email and password</p>
				</div>
				<form:form id="Login" action="${urlForm}" method="POST"	modelAttribute="user">
					<div class="form-group">
						<form:input type="text" class="form-control" id="inputEmail"
							path="codusr" placeholder="User Code"></form:input>
					</div>
					<div class="form-group">
						<form:input type="password" class="form-control"
							id="inputPassword" path="password" placeholder="Password"></form:input>
					</div>
					<div class="forgot">
						<a href="/login/reset.jsp">Forgot password?</a>
					</div>
					<button type="submit" class="btn btn-primary">Login</button>					
				</form:form>
			</div>
			<p class="botto-text">AvanceTI</p>
		</div>
	</div>
</body>
</html>