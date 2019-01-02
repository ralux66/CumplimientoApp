<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="table-responsive">
		<table class="table table-hover table-striped table-bordered">
			<tr>
				<th>Nombre Propio</th>
				<th>Direccion</th>
				<th>Tipo entidad</th>
				<th>Telefono</th>
				<th>Ciudad</th>
			</tr>
			<c:forEach var="allClient" items="${allClient}">
				<tr>
					<td>${allClient.nombrepropio1}</td>
					<td>${allClient.direccion1}</td>
					<td>${allClient.tipodeentidad}</td>
					<td>${allClient.telefono1}</td>
					<td>${allClient.ciudad}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>