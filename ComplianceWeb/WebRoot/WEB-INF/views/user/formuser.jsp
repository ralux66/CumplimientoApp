<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/user/saveuser" var="urlForm" />
<title>Form | New user</title>
</head>
<body>
	<h3>Welcome, Enter The Employee Details</h3>
	${message}
	<form:form method="POST" action="${urlForm}" modelAttribute="user">
		<table>
			<tr>
				<td><form:label path="codusr">Codigo Usuario</form:label></td>
				<td><form:input path="codusr" /></td>
			</tr>
			<tr>
				<td><form:label path="nombre">Nombre</form:label></td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td><form:label path="apellido">Apellido</form:label></td>
				<td><form:input path="apellido" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Correo</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="sexo">Genero</form:label></td>
				<td><form:input path="sexo" /></td>
			</tr>
			<tr>
				<td><form:label path="dui">Documento unico</form:label></td>
				<td><form:input path="dui" /></td>
			</tr>
			<tr>
				<td><form:label path="nit">Numero tributario</form:label></td>
				<td><form:input path="nit" /></td>
			</tr>
			<tr>
				<td><form:label path="fechaNac">Fecha nacimiento</form:label></td>
				<td><form:input path="fechaNac" /></td>
			</tr>
			<tr>
				<td><form:label path="idcliente">idcliente</form:label></td>
				<td><form:select path="idcliente" items="${allClient}">

					</form:select></td>
			</tr>
			<tr>
				<td><form:label path="idperfil">idperfil</form:label></td>
				<td><form:select path="idperfil" items="${allProfile}">

					</form:select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>