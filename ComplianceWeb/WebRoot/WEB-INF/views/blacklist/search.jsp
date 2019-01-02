<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/search/gosearch" var="urlForm" />
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

<title>Search | Blacklist</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	<form method="POST" action="${urlForm}">
		<div class="container">
			<c:if test="${not empty message}">
				<div class="alert alert-success" role="alert">${message}</div>
			</c:if>
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Nombre a buscar" aria-label="Recipient's username"
					aria-describedby="button-addon2" name="nameToSearch"
					id="nameToSearch">
				<div class="input-group-append">
					<button type="submit" class="btn btn-outline-secondary"
						id="button-addon3">Buscar</button>
				</div>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Alias</th>
						<th scope="col">Address</th>
						<th scope="col">City</th>
						<th scope="col">Type</th>
						<th scope="col">Programs</th>
						<th scope="col">List</th>
						<th scope="col">Score</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="allResultreturn" items="${allResultreturn}"
						varStatus="loop">
						<tr>
							<td>${allResultreturn.sDNName}</td>
							<td>${allResultreturn.consAltList[loop.index].altName}</td>
							<td>${allResultreturn.consAddList[loop.index].address}</td>
							<td>${allResultreturn.consAddList[loop.index].city}</td>
							<td>${allResultreturn.sDNType}</td>
							<td>${allResultreturn.program}</td>
							<td>${allResultreturn.title}</td>
							<td><fmt:formatNumber type="percent" maxFractionDigits="3"
									value="${allResultreturn.score}" /></td>
							<td>
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary" onclick=""
									data-toggle="modal" data-target="#myModal">Launch demo
									modal</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Error</h4>
						</div>
						<div class="modal-body">
							<p></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		$('.modalShow').click(function(event) {
			event.preventDefault();
			var e = $(this);
			var title = e.data('title');
			var body = e.data('value');
			$("#myModal").modal("show");
			$('#modal-title').html(title);
			$('#modal-body').html(body);
		});
	</script>
</body>
</html>