<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/client/saveclient" var="urlForm" />
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome, Enter The Employee Details</h3>
	${message}
	<form:form method="POST" action="${urlForm}"
		modelAttribute="client">
		<table>
			<tr>
				<td><form:label path="nombrepropio1">Name</form:label></td>
				<td><form:input path="nombrepropio1" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="telefonocontacto1">telefonocontacto1</form:label></td>
				<td><form:input path="telefonocontacto1" /></td>
			</tr>
			<tr>
				<td><form:label path="direccion1">direccion1</form:label></td>
				<td><form:input path="direccion1" /></td>
			</tr>
			<tr>
				<td><form:label path="tipodeentidad">tipodeentidad</form:label></td>
				<td><form:input path="tipodeentidad" /></td>
			</tr>
			<tr>
				<td><form:label path="telefono1">
                      telefono1</form:label></td>
				<td><form:input path="telefono1" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
		
		<c:forEach var="allClient" items="${allClient}">							
								${allClient.nombrepropio1}
								${allClient.direccion1}
								${allClient.email}
								${allClient.tipodeentidad}
								${allClient.telefono1}
								${allClient.ciudad}															
	</c:forEach>
	</form:form>
</body>
</html>