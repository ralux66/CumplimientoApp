<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
	
<meta charset="ISO-8859-1">
<spring:url value="/peps/savepeps" var="urlForm" />
<title>AvanceTi | New Peps</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	<h3>Welcome, Enter The Peps Details</h3>
	<form:form method="POST" action="${urlForm}" modelAttribute="peps">
		<table>
			<tr>
				<td><form:label path="institucion">institucion</form:label></td>
				<td><form:input path="institucion" /></td>
			</tr>
			<tr>
				<td><form:label path="funcionario">funcionario</form:label></td>
				<td><form:input path="funcionario" /></td>
			</tr>
			<tr>
				<td><form:label path="gradoAcademico">gradoAcademico</form:label></td>
				<td><form:input path="gradoAcademico" /></td>
			</tr>
			<tr>
				<td><form:label path="cargo">cargo</form:label></td>
				<td><form:input path="cargo" /></td>
			</tr>
			<tr>
				<td><form:label path="numeroAcuerdo">numeroAcuerdo</form:label></td>
				<td><form:input path="numeroAcuerdo" /></td>
			</tr>
			<tr>
				<td><form:label path="fechaNombramiento">fechaNombramiento</form:label></td>
				<td><form:input path="fechaNombramiento" /></td>
			</tr>
			<tr>
				<td><form:label path="fechaFinalizacion">fechaFinalizacion</form:label></td>
				<td><form:input path="fechaFinalizacion"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>