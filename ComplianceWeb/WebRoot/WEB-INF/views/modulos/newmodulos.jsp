<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<spring:url value="/modulos/savemodulo" var="urlForm" />
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
<title>AvanceTi | New Modulos</title>
</head>
<body>
<jsp:include page="../includes/menu.jsp"></jsp:include>	
	<form:form method="POST" action="${urlForm}" modelAttribute="modulos">
		<table>
			<tr>
				<td><form:label path="idmodulo">Id Modulo</form:label></td>
				<td><form:input path="idmodulo" /></td>
			</tr>
			<tr>
				<td><form:label path="nombre">Nombre modulo</form:label></td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td><form:label path="descripcion">Descripcion</form:label></td>
				<td><form:input path="descripcion" /></td>
			</tr>
			<tr>
				<td><form:label path="custom1">Opcional</form:label></td>
				<td><form:input path="custom1" /></td>
			</tr>
			<tr>
				<td><form:label path="custom2">Opcional</form:label></td>
				<td><form:input path="custom2" /></td>
			</tr>
			<tr>
				<td><form:label path="custom3">Opcional</form:label></td>
				<td><form:input path="custom3" /></td>
			</tr>			
			<tr>
				<td><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>