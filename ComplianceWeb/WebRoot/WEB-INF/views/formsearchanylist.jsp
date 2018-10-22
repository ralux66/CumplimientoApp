<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/allconsulting/goSearch" var="urlForm" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>ComplianceWeb | All Search</title>
</head>
<body>
	<form action="${urlForm}" method="post">
		<div class="container">
			<!-- Content here -->

			<div class="form-group">
				<label for="nameSearch">Search</label> <input type="text"
					class="form-control" name="nameSearch" id="nameSearch"
					placeholder="Name to search">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
			<div class="container">
				<div class="table-responsive-sm">
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th>Entity</th>
								<th>Name</th>
								<th>Address</th>
								<th>Alter name</th>
								<th>Score</th>
								<th>List Source</th>
								<th>City</th>
								<th>Country</th>
								<th>Remarks</th>
								<th>Title</th>
								<th>Type Entity</th>
							</tr>
						</thead>
						<c:forEach var="allResult" items="${allResult}">
							<tr>
								<td>${allResult.keyEntity}</td>
								<td>${allResult.name}</td>
								<td>${allResult.address}</td>
								<td>${allResult.altername}</td>
								<td>${allResult.score}</td>
								<td>${allResult.listSource}</td>
								<td>${allResult.city}</td>
								<td>${allResult.country}</td>
								<td>${allResult.remarks}</td>
								<td>${allResult.title}</td>
								<td>${allResult.typeEntity}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</form>


</body>
</html>