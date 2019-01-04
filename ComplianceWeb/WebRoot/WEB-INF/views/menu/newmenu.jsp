<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/menu/savemenu" var="urlForm" />
<meta charset="ISO-8859-1">
<title>AvanceTi | New Profile</title>
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
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	<h3>Welcome, New Profile</h3>
	<form:form method="POST" action="${urlForm}" modelAttribute="menu">
		<table>
			<tr>
				<td><label for="idmodulo">Modulo</label></td>
				<td><form:select path="idmodulo.idmodulo" id="idmodulo">
						<form:options items="${moduloLista}" itemLabel="nombre"
							itemValue="idmodulo" />
					</form:select></td>
			</tr>
			<tr>
				<td><form:label path="codmenu">Code Menu</form:label></td>
				<td><form:input path="codmenu" /></td>
			</tr>
			<tr>
				<td><form:label path="nombremenu">Nombre Menu</form:label></td>
				<td><form:input path="nombremenu" /></td>
			</tr>
			<tr>
				<td><form:label path="observacion">Observacion</form:label></td>
				<td><form:input path="observacion" /></td>
			</tr>
			<tr>
				<td><form:label path="custom1">Url</form:label></td>
				<td><form:input path="custom1" /></td>
			</tr>
			<tr>
				<td><form:label path="custom2">Estatus</form:label></td>
				<td><form:input path="custom2" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>