<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="../resources" var="urlForm" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Keen | Bootstrap Select</title>
<meta name="description" content="Bootstrap select examples">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--begin::Fonts -->
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Poppins:300,400,500,600,700" ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>
<!--end::Fonts -->
<!--begin:: Global Mandatory Vendors -->
<link
	href="${urlForm}/assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />
<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->
<link
	href="${urlForm}/assets/vendors/general/tether/dist/css/tether.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/nouislider/distribute/nouislider.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/dropzone/dist/dropzone.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/summernote/dist/summernote.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/vendors/general/animate.css/animate.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/vendors/general/toastr/build/toastr.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/vendors/general/morris.js/morris.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/general/sweetalert2/dist/sweetalert2.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/vendors/general/socicon/css/socicon.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/custom/vendors/line-awesome/css/line-awesome.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/custom/vendors/flaticon/flaticon.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/custom/vendors/flaticon2/flaticon.css"
	rel="stylesheet" type="text/css" />
<link
	href="${urlForm}/assets/vendors/custom/vendors/fontawesome5/css/all.min.css"
	rel="stylesheet" type="text/css" />
<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Styles(used by all pages) -->

<link href="${urlForm}/assets/demo/default/base/style.bundle.css"
	rel="stylesheet" type="text/css" />
<!--end::Global Theme Styles -->
<!--begin::Layout Skins(used by all pages) -->
<link href="${urlForm}/assets/demo/default/skins/header/base/light.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/demo/default/skins/header/menu/light.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/demo/default/skins/brand/navy.css"
	rel="stylesheet" type="text/css" />
<link href="${urlForm}/assets/demo/default/skins/aside/navy.css"
	rel="stylesheet" type="text/css" />
<!--end::Layout Skins -->
<link rel="shortcut icon"
	href="${urlForm}/assets/media/logos/favicon.ico" />
</head>
<jsp:include page="../includes/headertemplate.jsp"></jsp:include>
<jsp:include page="../includes/newFormClientContent.jsp"></jsp:include>
<jsp:include page="../includes/footertemplate.jsp"></jsp:include>