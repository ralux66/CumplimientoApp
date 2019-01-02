<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AvanceTi | New Profile</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	<h3>Welcome, New Menu</h3>
	<form:form method="POST" action="${urlForm}" modelAttribute="profile">
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