<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/profile/saveprofile" var="urlForm" />
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
	<form:form method="POST" action="${urlForm}" modelAttribute="profile">
		<table>
			<tr>
				<td><label for="idmodulo">Modulo</label></td>
				<td><select>
						<c:forEach var="modulolista" items="${modulolista}">
							<option value="${modulolista.idmodulo}">${modulolista.nombre}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td><form:label path="idperfil">idperfil</form:label></td>
				<td><form:input path="idperfil" /></td>
			</tr>
			<tr>
				<td><form:label path="descripcion">descripcion</form:label></td>
				<td><form:input path="descripcion" /></td>
			</tr>
			<tr>
				<td><form:label path="estado">estado</form:label></td>
				<td><form:input path="estado" /></td>
			</tr>
			<tr>
				<td><form:label path="observacion">observacion</form:label></td>
				<td><form:input path="observacion" /></td>
			</tr>
			<tr>
				<td><form:label path="custom1">Custom1</form:label></td>
				<td><form:input path="custom1"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>