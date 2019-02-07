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
				<th>Id</th>
				<th>source</th>
				<th>name</th>
			</tr>
			<c:forEach var="allListOfac" items="${allListOfac}">
				<tr>
					<td>${allListOfac.id}</td>
					<td>${allListOfac.source}</td>
					<td>${allListOfac.name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>