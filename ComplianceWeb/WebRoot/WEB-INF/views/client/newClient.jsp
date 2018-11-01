<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Create Client</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:url value="/client/saveclient" var="urlForm" />
<spring:url value="/resources" var="urlPublic" />
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${urlPublic}/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${urlPublic}/css/util.css">
<link rel="stylesheet" type="text/css" href="${urlPublic}/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>

	<spring:hasBindErrors name="client">
		<div class='alert alert-danger' role='alert'>
			Por favor corrija los siguientes errores:
			<ul>
				<c:forEach var="error" items="${errors.allErrors}">
					<li><spring:message message="${error}" /></li>
				</c:forEach>
			</ul>
		</div>
	</spring:hasBindErrors>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form:form class="contact100-form validate-form" action="${urlForm}"
				method="post" modelAttribute="client">
				
				<span class="contact100-form-title"> Form User </span>
				<div class="wrap-input100 validate-input bg1"
					data-validate="Please Type Your Name">
					<span class="label-input100">FULL NAME *</span>
					<form:input class="input100" type="text" path="nombrepropio1"
						placeholder="Enter Your Name" />
				</div>

				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100"
					data-validate="Enter Your Email (e@a.x)">
					<span class="label-input100">Email *</span>
					<form:input class="input100" type="text" path="email"
						placeholder="Enter Your Email " />
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Phone</span>
					<form:input class="input100" type="text" path="telefono1"
						placeholder="Enter Number Phone" />
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Phone Contact</span>
					<form:input class="input100" type="text" path="telefonocontacto1"
						placeholder="Enter Number Phone of Contact" />
				</div>

				<div class="w-full dis-none js-show-service">
					<div class="wrap-contact100-form-radio">
						<div class="wrap-input100 validate-input bg1"
							data-validate="Please Type Your Name">
							<span class="label-input100">FULL ADDRESS *</span>
							<form:input class="input100" type="text" path="direccion1"
								placeholder="Enter Your Address" />
						</div>
					</div>
					<div class="wrap-input100 bg1 rs1-wrap-input100">
						<span class="label-input100">Type Entity</span>
						<form:input class="input100" type="text" path="tipodeentidad"
							placeholder="Enter Type Entity" />
					</div>
				</div>
				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn">
						<span> Submit <i class="fa fa-long-arrow-right m-l-7"
							aria-hidden="true"></i>
						</span>
					</button>
					<button type="submit" class="btn btn-danger" >Guardar</button>
				</div>
			</form:form>
		</div>
	</div>



	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/bootstrap/js/popper.js"></script>
	<script src="${urlPublic}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});

			$(".js-select2").each(function() {
				$(this).on('select2:close', function(e) {
					if ($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					} else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/daterangepicker/moment.min.js"></script>
	<script src="${urlPublic}/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/vendor/noui/nouislider.min.js"></script>
	<script>
		var filterBar = document.getElementById('filter-bar');

		noUiSlider.create(filterBar, {
			start : [ 1500, 3900 ],
			connect : true,
			range : {
				'min' : 1500,
				'max' : 7500
			}
		});

		var skipValues = [ document.getElementById('value-lower'),
				document.getElementById('value-upper') ];

		filterBar.noUiSlider.on('update', function(values, handle) {
			skipValues[handle].innerHTML = Math.round(values[handle]);
			$('.contact100-form-range-value input[name="from-value"]').val(
					$('#value-lower').html());
			$('.contact100-form-range-value input[name="to-value"]').val(
					$('#value-upper').html());
		});
	</script>
	<!--===============================================================================================-->
	<script src="${urlPublic}/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
