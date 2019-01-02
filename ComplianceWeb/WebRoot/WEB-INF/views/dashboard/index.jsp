<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
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
<title>AvanceTi | DashBoard</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	<br>
	<div class="card" style="width: 18rem;">
		<div class="card-body">
			<h5 class="card-title">${user.apellido},${user.nombre}
				(${user.codusr})</h5>
			<p class="card-text">email: ${user.email}</p>
			<p class="card-text">Dui : ${user.dui}</p>
			<p class="card-text">Nit : ${user.nit}</p>
			<p class="card-text">Perfil : ${user.idperfil.descripcion}</p>
			<p class="card-text">Compania : ${user.idcliente.nombrepropio1}</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
		</div>
	</div>
	<c:forEach var="modulosPerfilesList" items="${user.idperfil.modulosPerfilesList}" varStatus="loop">
		<tr>
			<td>Modulo : ${modulosPerfilesList.idmodulo.descripcion}</td> <br>
			<!--  <td>${modulosPerfilesList.idmodulo.menusList[loop.index].nombremenu}</td><br>-->
			<td>Menu : ${modulosPerfilesList.idmodulo.menusList[loop.index-1].custom1}</td><br>
		</tr>
	</c:forEach>	
</body>
</html>