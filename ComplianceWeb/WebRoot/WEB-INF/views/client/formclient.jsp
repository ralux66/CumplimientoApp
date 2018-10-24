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
<spring:url value="/client/saveclient" var="urlForm" />
</head>
<body>
	<h1>Cliente Home</h1>

	<c:forEach var="allClient" items="${allClient}">							
								${allClient.nombrepropio1}
								${allClient.direccion1}
								${allClient.email}
								${allClient.tipodeentidad}
								${allClient.telefono1}
								${allClient.ciudad}															
	</c:forEach>


	<form action="${urlForm}" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label> <input
				type="email" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter email"> <small
				id="emailHelp" class="form-text text-muted">We'll never
				share your email with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password</label> <input
				type="password" class="form-control" id="exampleInputPassword1"
				placeholder="Password">
		</div>
		<div class="form-group form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>