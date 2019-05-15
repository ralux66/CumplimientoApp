<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/" var="urlRoot" />
<!-- 
Theme: Keen - The Ultimate Bootstrap Admin Theme
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: You must have a valid license purchased only from https://themes.getbootstrap.com/product/keen-the-ultimate-bootstrap-admin-theme/ in order to legally use the theme for your project.
-->
<html lang="en">
<!-- begin::Head -->

<head>
<spring:url value="../resources" var="urlForm" />
<meta charset="utf-8" />
<title>Keen | Accordions</title>
<meta name="description" content="Bootstrap collapse based accordions">
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
<!-- end::Head -->
<!-- begin::Body -->
<body
	class="k-header--fixed k-header-mobile--fixed k-subheader--enabled k-subheader--transparent k-aside--enabled k-aside--fixed k-page--loading">
	<!-- begin:: Header Mobile -->
	<div id="k_header_mobile"
		class="k-header-mobile k-header-mobile--fixed ">
		<div class="k-header-mobile__logo">
			<a href="${urlRoot}dashboard/"><img alt="Logo" src="${urlForm}/assets/media/logos/logo-6.png"/></a>
		</div>
		<div class="k-header-mobile__toolbar">
			<button
				class="k-header-mobile__toolbar-toggler k-header-mobile__toolbar-toggler--left"
				id="k_aside_mobile_toggler">
				<span></span>
			</button>
			<button class="k-header-mobile__toolbar-toggler"
				id="k_header_mobile_toggler">
				<span></span>
			</button>
			<button class="k-header-mobile__toolbar-topbar-toggler"
				id="k_header_mobile_topbar_toggler">
				<i class="flaticon-more"></i>
			</button>
		</div>
	</div>
	<!-- end:: Header Mobile -->
	<!-- begin:: Root -->
	<div class="k-grid k-grid--hor k-grid--root">
		<!-- begin:: Page -->
		<div class="k-grid__item k-grid__item--fluid k-grid k-grid--ver k-page">
			<!-- begin:: Aside -->
			<button class="k-aside-close " id="k_aside_close_btn">
				<i class="la la-close"></i>
			</button>
			<div
				class="k-aside k-aside--fixed k-grid__item k-grid k-grid--desktop k-grid--hor-desktop"
				id="k_aside">
				<!-- begin::Aside Brand -->
				<div class="k-aside__brand k-grid__item " id="k_aside_brand">
					<div class="k-aside__brand-logo">
						<a href="${urlRoot}dashboard/"> <img alt="Logo" src="${urlForm}/assets/media/logos/logo-6.png" />
						</a>
					</div>
					<div class="k-aside__brand-tools">
						<button
							class="k-aside__brand-aside-toggler k-aside__brand-aside-toggler--left"
							id="k_aside_toggler">
							<span></span>
						</button>
					</div>
				</div>
				<!-- end:: Aside Brand -->
				<!-- begin:: Aside Menu -->
				<div class="k-aside-menu-wrapper k-grid__item k-grid__item--fluid"
					id="k_aside_menu_wrapper">
					<div id="k_aside_menu" class="k-aside-menu "
						data-kmenu-vertical="1" data-kmenu-scroll="1"
						data-kmenu-dropdown-timeout="500">
						<ul class="k-menu__nav ">
							<li class="k-menu__item " aria-haspopup="true"><a
								href="${urlRoot}dashboard/" class="k-menu__link "><i
									class="k-menu__link-icon flaticon2-graphic"> </i><span
									class="k-menu__link-text">DashBoard</span></a></li>
							<li class="k-menu__section ">
								<h4 class="k-menu__section-text">Accion</h4> <i
								class="k-menu__section-icon flaticon-more-v2"></i>
							</li>
							<li
								class="k-menu__item k-menu__item--submenu k-menu__item--open k-menu__item--here"
								aria-haspopup="true" data-kmenu-submenu-toggle="hover"><a
								href="javascript:;" class="k-menu__link k-menu__toggle"><i
									class="k-menu__link-icon flaticon2-layers-1"></i><span
									class="k-menu__link-text">Busquedas</span><i
									class="k-menu__ver-arrow la la-angle-right"></i></a>
								<div class="k-menu__submenu ">
									<span class="k-menu__arrow"></span>
									<ul class="k-menu__subnav">
										<li class="k-menu__item k-menu__item--parent"
											aria-haspopup="true"><span class="k-menu__link"><span
												class="k-menu__link-text">Buscar Lista</span></span></li>
										<li class="k-menu__item " aria-haspopup="true"><a
											href="${urlRoot}peps/search" class="k-menu__link "> <i
												class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
												<span class="k-menu__link-text">Peps</span>
										</a></li>
										<li class="k-menu__item " aria-haspopup="true"><a
											href="${urlRoot}blacklist/search" class="k-menu__link ">
												<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
												<span class="k-menu__link-text">BlackList</span>
										</a></li>
										<li class="k-menu__item " aria-haspopup="true"><a
											href="${urlRoot}mostwanted/search" class="k-menu__link ">
												<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
												<span class="k-menu__link-text">Mas Buscados</span>
										</a></li>
										<li class="k-menu__item " aria-haspopup="true"><a
											href="${urlRoot}notario/search" class="k-menu__link "> <i
												class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
												<span class="k-menu__link-text">Notarios</span>
										</a></li>
										<li class="k-menu__item " aria-haspopup="true"><a
											href="${urlRoot}abogado/search" class="k-menu__link "> <i
												class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
												<span class="k-menu__link-text">Abogados</span>
										</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
				<!-- end:: Aside Menu -->
				<!-- begin:: Aside Footer -->
				<div class="k-aside__footer k-grid__item" id="k_aside_footer">
					<div class="k-aside__footer-nav">
						<div class="k-aside__footer-item">
							<a href="#" class="btn btn-icon"><i class="flaticon2-gear"></i></a>
						</div>
						<div class="k-aside__footer-item">
							<a href="#" class="btn btn-icon"><i class="flaticon2-cube"></i></a>
						</div>
						<div class="k-aside__footer-item">
							<a href="#" class="btn btn-icon"><i
								class="flaticon2-bell-alarm-symbol"></i></a>
						</div>
						<div class="k-aside__footer-item">
							<button type="button" class="btn btn-icon" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								<i class="flaticon2-add"></i>
							</button>
							<div class="dropdown-menu dropdown-menu-left">
								<ul class="k-nav">
									<li class="k-nav__section k-nav__section--first"><span
										class="k-nav__section-text">Herramientas de Exportacion</span>
									</li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<i class="k-nav__link-icon la la-print"></i> <span
											class="k-nav__link-text">Imprimir</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<i class="k-nav__link-icon la la-copy"></i> <span
											class="k-nav__link-text">Copiar</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<i class="k-nav__link-icon la la-file-excel-o"></i> <span
											class="k-nav__link-text">Excel</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<i class="k-nav__link-icon la la-file-text-o"></i> <span
											class="k-nav__link-text">CSV</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<i class="k-nav__link-icon la la-file-pdf-o"></i> <span
											class="k-nav__link-text">PDF</span>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="k-aside__footer-item">
							<a href="#" class="btn btn-icon"><i
								class="flaticon2-calendar-2"></i></a>
						</div>
					</div>
				</div>
				<!-- end:: Aside Footer-->
			</div>
			<!-- end:: Aside -->
			<!-- begin:: Wrapper -->
			<div
				class="k-grid__item k-grid__item--fluid k-grid k-grid--hor k-wrapper"
				id="k_wrapper">
				<!-- begin:: Header -->
				<div id="k_header" class="k-header k-grid__item k-header--fixed ">
					<!-- begin:: Header Menu -->
					<button class="k-header-menu-wrapper-close"
						id="k_header_menu_mobile_close_btn">
						<i class="la la-close"></i>
					</button>
					<div class="k-header-menu-wrapper" id="k_header_menu_wrapper">
						<div id="k_header_menu"
							class="k-header-menu k-header-menu-mobile k-header-menu--layout- ">
							<ul class="k-menu__nav ">
								<li
									class="k-menu__item k-menu__item--submenu k-menu__item--rel k-menu__item--active"
									data-kmenu-submenu-toggle="click" aria-haspopup="true"><a
									href="javascript:;" class="k-menu__link k-menu__toggle"><span
										class="k-menu__link-text">Pages</span><i
										class="k-menu__hor-arrow la la-angle-down"></i><i
										class="k-menu__ver-arrow la la-angle-right"></i></a>
									<div
										class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
										<ul class="k-menu__subnav">
											<li class="k-menu__item " aria-haspopup="true"><a
												href="#" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Crear Nueva Entrada</span>
											</a></li>
											<li class="k-menu__item " aria-haspopup="true"><a
												href="#" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Generar Reportes</span> <span
													class="k-menu__link-badge"><span
														class="k-badge k-badge--success">2</span></span>
											</a></li>
											<li class="k-menu__item k-menu__item--submenu"
												data-kmenu-submenu-toggle="hover" aria-haspopup="true">
												<a href="javascript:;" class="k-menu__link k-menu__toggle">
													<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Administrar Ordenes</span><i
													class="k-menu__hor-arrow la la-angle-right"></i><i
													class="k-menu__ver-arrow la la-angle-right"></i>
											</a>
												<div
													class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
													<ul class="k-menu__subnav">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Ultimas Ordenes</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Ordenes Pendientes</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Ordenes Procesadas</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Reportes de Despachos</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Pagos</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Clientes</span></a></li>
													</ul>
												</div>
											</li>
											<li class="k-menu__item k-menu__item--submenu"
												data-kmenu-submenu-toggle="hover" aria-haspopup="true">
												<a href="#" class="k-menu__link k-menu__toggle"> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Comentarios de
														Nuestros Clientes</span><i
													class="k-menu__hor-arrow la la-angle-right"></i><i
													class="k-menu__ver-arrow la la-angle-right"></i>
											</a>
												<div
													class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
													<ul class="k-menu__subnav">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Comentarios de Nuestros
																	Clientes</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Comentarios de Nuestros
																	Proveedores</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Comentarios Revisados</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Comentarios Resueltos</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Reportes de Comentarios</span></a></li>
													</ul>
												</div>
											</li>
											<li class="k-menu__item " aria-haspopup="true"><a
												href="#" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Registrar Usuario</span>
											</a></li>
										</ul>
									</div></li>
								<li class="k-menu__item k-menu__item--submenu k-menu__item--rel"
									data-kmenu-submenu-toggle="click" aria-haspopup="true"><a
									href="javascript:;" class="k-menu__link k-menu__toggle"><span
										class="k-menu__link-text">Reportes</span><i
										class="k-menu__hor-arrow la la-angle-down"></i><i
										class="k-menu__ver-arrow la la-angle-right"></i></a>
									<div
										class="k-menu__submenu k-menu__submenu--fixed k-menu__submenu--left"
										style="width: 1000px">
										<div class="k-menu__subnav">
											<ul class="k-menu__content">
												<li class="k-menu__item ">
													<h3 class="k-menu__heading k-menu__toggle">
														<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
														<span class="k-menu__link-text">Reportes
															Financieros</span><i class="k-menu__ver-arrow la la-angle-right"></i>
													</h3>
													<ul class="k-menu__inner">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-map"></i><span
																class="k-menu__link-text">Reportes Anuales</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-user"></i><span
																class="k-menu__link-text">Reportes de Personal</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-clipboard"></i><span
																class="k-menu__link-text">Reportes de Produccion</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-graphic-1"></i><span
																class="k-menu__link-text">Margenes Financieros</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-graphic-2"></i><span
																class="k-menu__link-text">Reportes de
																	Renovaciones</span></a></li>
													</ul>
												</li>
												<li class="k-menu__item ">
													<h3 class="k-menu__heading k-menu__toggle">
														<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
														<span class="k-menu__link-text">Reportes de
															Proyectos</span><i class="k-menu__ver-arrow la la-angle-right"></i>
													</h3>
													<ul class="k-menu__inner">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Coca Cola CRM</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Delta Airlines
																	Booking Site</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Malibu Accounting</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Vineseed Website
																	Rewamp</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Zircon Mobile App</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i>
																<span class="k-menu__link-text">Mercury CMS</span>
														</a></li>
													</ul>
												</li>
												<li class="k-menu__item ">
													<h3 class="k-menu__heading k-menu__toggle">
														<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
														<span class="k-menu__link-text">Reportes de
															Personal</span><i class="k-menu__ver-arrow la la-angle-right"></i>
													</h3>
													<ul class="k-menu__inner">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Directorio de
																	Personal</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Directorio de
																	Clientes</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Reportes de
																	Salarios</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Nomina del
																	Personal</span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Gastos
																	Corporativos </span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
																<span class="k-menu__link-text">Gasos de
																	Proyectos</span>
														</a></li>
													</ul>
												</li>
												<li class="k-menu__item ">
													<h3 class="k-menu__heading k-menu__toggle">
														<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
														<span class="k-menu__link-text">Reporting Apps</span><i
															class="k-menu__ver-arrow la la-angle-right"></i>
													</h3>
													<ul class="k-menu__inner">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Report Adjusments</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Sources & Mediums</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Reporting Settings</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Conversions</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Report Flows</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><span
																class="k-menu__link-text">Audit & Logs</span></a></li>
													</ul>
												</li>
											</ul>
										</div>
									</div></li>
								<li class="k-menu__item k-menu__item--submenu k-menu__item--rel"
									data-kmenu-submenu-toggle="click" aria-haspopup="true"><a
									href="javascript:;" class="k-menu__link k-menu__toggle"><span
										class="k-menu__link-text">Apps</span><i
										class="k-menu__hor-arrow la la-angle-down"></i><i
										class="k-menu__ver-arrow la la-angle-right"></i></a>
									<div
										class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
										<ul class="k-menu__subnav">
											<li class="k-menu__item " aria-haspopup="true"><a
												href="javascript:;" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">eCommerce</span>
											</a></li>
											<li class="k-menu__item k-menu__item--submenu"
												data-kmenu-submenu-toggle="hover" aria-haspopup="true">
												<a href="components_datatable_v1.html"
												class="k-menu__link k-menu__toggle"> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Audience</span><i
													class="k-menu__hor-arrow la la-angle-right"></i><i
													class="k-menu__ver-arrow la la-angle-right"></i>
											</a>
												<div
													class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
													<ul class="k-menu__subnav">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-users"></i><span
																class="k-menu__link-text">Active Users</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-interface-1"></i><span
																class="k-menu__link-text">User Explorer</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-lifebuoy"></i><span
																class="k-menu__link-text">Users Flows</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-graphic-1"></i><span
																class="k-menu__link-text">Market Segments</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-graphic"></i><span
																class="k-menu__link-text">User Reports</span></a></li>
													</ul>
												</div>
											</li>
											<li class="k-menu__item " aria-haspopup="true"><a
												href="javascript:;" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Marketing</span>
											</a></li>
											<li class="k-menu__item " aria-haspopup="true"><a
												href="javascript:;" class="k-menu__link "> <i
													class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Campaigns</span> <span
													class="k-menu__link-badge"><span
														class="k-badge k-badge--success">3</span></span>
											</a></li>
											<li class="k-menu__item k-menu__item--submenu"
												data-kmenu-submenu-toggle="hover" aria-haspopup="true">
												<a href="javascript:;" class="k-menu__link k-menu__toggle">
													<i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i>
													<span class="k-menu__link-text">Cloud Manager</span><i
													class="k-menu__hor-arrow la la-angle-right"></i><i
													class="k-menu__ver-arrow la la-angle-right"></i>
											</a>
												<div
													class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
													<ul class="k-menu__subnav">
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "> <i
																class="k-menu__link-icon flaticon-add"></i><span
																class="k-menu__link-text">File Upload</span> <span
																class="k-menu__link-badge"><span
																	class="k-badge k-badge--danger">3</span></span>
														</a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-signs-1"></i><span
																class="k-menu__link-text">File Attributes</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-folder"></i><span
																class="k-menu__link-text">Folders</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a
															href="#" class="k-menu__link "><i
																class="k-menu__link-icon flaticon-cogwheel-2"></i><span
																class="k-menu__link-text">System Settings</span></a></li>
													</ul>
												</div>
											</li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
					<!-- end:: Header Menu -->
					<!-- begin:: Header Topbar -->
					<div class="k-header__topbar">
						<!--begin: Search -->
						<div
							class="k-header__topbar-item k-header__topbar-item--search dropdown">
							<div class="k-header__topbar-wrapper" data-toggle="dropdown"
								data-offset="10px,0">
								<span class="k-header__topbar-icon"><i
									class="flaticon2-search-1"></i></span>
							</div>
							<div
								class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-top-unround dropdown-menu-anim dropdown-menu-lg">
								<div
									class="k-quick-search k-quick-search--dropdown k-quick-search--result-compact"
									id="k_quick_search_dropdown">
									<form method="get" class="k-quick-search__form">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="flaticon2-search-1"></i></span>
											</div>
											<input type="text" class="form-control k-quick-search__input"
												placeholder="Search...">
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="la la-close k-quick-search__close"></i></span>
											</div>
										</div>
									</form>
									<div class="k-quick-search__wrapper k-scroll"
										data-scroll="true" data-height="325" data-mobile-height="200"></div>
								</div>
							</div>
						</div>
						<!--end: Search -->
						<!--begin: Notifications -->
						<div class="k-header__topbar-item dropdown">
							<div class="k-header__topbar-wrapper" data-toggle="dropdown"
								data-offset="30px -2px" aria-expanded="true">
								<span class="k-header__topbar-icon"> <i
									class="flaticon2-bell-alarm-symbol"></i> <span
									class="k-badge k-badge--dot k-badge--notify k-badge--sm k-badge--brand"></span>
								</span>
							</div>
							<div
								class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-lg">
								<form>
									<div class="k-head"
										style="background-image: url(${urlForm}/assets/media/misc/head_bg_sm.jpg)">
										<h3 class="k-head__title">Notificaciones de Usuarios</h3>
										<div class="k-head__sub">
											<span class="k-head__desc">23 nuevas notificaciones</span>
										</div>
									</div>
									<div
										class="k-notification k-margin-t-30 k-margin-b-20 k-scroll"
										data-scroll="true" data-height="270" data-mobile-height="220">
										<a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-line-chart k-font-success"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nueva orden ha
													sido recibida</div>
												<div class="k-notification__item-time">2 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-box-1 k-font-brand"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo usuario
													ha sido registrado</div>
												<div class="k-notification__item-time">3 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-chart2 k-font-danger"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Solicitud ha
													sido aprobada</div>
												<div class="k-notification__item-time">3 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-image-file k-font-warning"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo archivo
													ha sido subido</div>
												<div class="k-notification__item-time">5 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-bar-chart k-font-info"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo
													comentario de cliente ha sido recibido</div>
												<div class="k-notification__item-time">8 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-pie-chart-2 k-font-success"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Reinicio de
													Sistema exitoso</div>
												<div class="k-notification__item-time">12 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-favourite k-font-focus"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nueva orden ha
													sido adjudicada</div>
												<div class="k-notification__item-time">15 hrs atras</div>
											</div>
										</a> <a href="#"
											class="k-notification__item k-notification__item--read">
											<div class="k-notification__item-icon">
												<i class="flaticon2-safe k-font-primary"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Reunion
													Corporativa cancelada</div>
												<div class="k-notification__item-time">19 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-psd k-font-success"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo reporte
													ha sido recibido</div>
												<div class="k-notification__item-time">23 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon-download-1 k-font-danger"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Reporte
													Financiero generado exitosamente</div>
												<div class="k-notification__item-time">25 hrs atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon-security k-font-warning"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo
													comentario de cliente recibido</div>
												<div class="k-notification__item-time">2 days atras</div>
											</div>
										</a> <a href="#" class="k-notification__item">
											<div class="k-notification__item-icon">
												<i class="flaticon2-pie-chart k-font-focus"></i>
											</div>
											<div class="k-notification__item-details">
												<div class="k-notification__item-title">Nuevo usuario
													registrado exitosamente</div>
												<div class="k-notification__item-time">3 days atras</div>
											</div>
										</a>
									</div>
								</form>
							</div>
						</div>
						<!--end: Notifications -->
						<!--begin: Quick Actions -->
						<div class="k-header__topbar-item">
							<div class="k-header__topbar-wrapper"
								id="k_offcanvas_toolbar_quick_actions_toggler_btn">
								<span class="k-header__topbar-icon"><i
									class="flaticon2-gear"></i></span>
							</div>
						</div>
						<!--end: Quick Actions -->
						<!--begin:: Languages -->
						<div class="k-header__topbar-item k-header__topbar-item--langs">
							<div class="k-header__topbar-wrapper" data-toggle="dropdown"
								data-offset="10px -2px">
								<span class="k-header__topbar-icon"> <img class=""
									src="${urlForm}/assets/media/flags/020-flag.svg" alt="" />
								</span>
							</div>
							<div
								class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround">
								<ul class="k-nav k-margin-t-10 k-margin-b-10">
									<li class="k-nav__item k-nav__item--active"><a href="#"
										class="k-nav__link"> <span class="k-nav__link-icon">
												<img src="${urlForm}/assets/media/flags/020-flag.svg" alt="" />
										</span> <span class="k-nav__link-text">Ingles</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<span class="k-nav__link-icon"> <img
												src="${urlForm}/assets/media/flags/016-spain.svg" alt="" />
										</span> <span class="k-nav__link-text">Español</span>
									</a></li>
									<li class="k-nav__item"><a href="#" class="k-nav__link">
											<span class="k-nav__link-icon"> <img
												src="${urlForm}/assets/media/flags/017-germany.svg" alt="" />
										</span> <span class="k-nav__link-text">Aleman</span>
									</a></li>
								</ul>
							</div>
						</div>
						<!--end:: Languages -->
						<!--begin: User Bar -->
						<div class="k-header__topbar-item k-header__topbar-item--user">
							<div class="k-header__topbar-wrapper" data-toggle="dropdown"
								data-offset="0px -2px">
								<div class="k-header__topbar-user">
									<span class="k-header__topbar-welcome k-hidden-mobile">Hola,</span>
									<span class="k-header__topbar-username k-hidden-mobile">${user.codusr}-${user.apellido}</span>
									<img alt="Pic" src="${urlForm}/assets/media/users/300_25.jpg" />
									<!--use below badge element instead the user avatar to display username's first letter(remove k-hidden class to display it) -->
									<span
										class="k-badge k-badge--username k-badge--lg k-badge--brand k-hidden k-badge--bold">S</span>
								</div>
							</div>
							<div
								class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-sm">
								<div
									class="k-user-card k-margin-b-50 k-margin-b-30-tablet-and-mobile"
									style="background-image: url(${urlForm}/assets/media/misc/head_bg_sm.jpg)">
									<div class="k-user-card__wrapper">
										<div class="k-user-card__pic">
											<img alt="Pic" src="${urlForm}/assets/media/users/300_21.jpg" />
										</div>
										<div class="k-user-card__details">
											<div class="k-user-card__name">Alex Stone</div>
											<div class="k-user-card__position">CTO, Loop Inc.</div>
										</div>
									</div>
								</div>
								<ul class="k-nav k-margin-b-10">
									<li class="k-nav__item"><a
										href="custom_user_profile-v1.html" class="k-nav__link"> <span
											class="k-nav__link-icon"><i
												class="flaticon2-calendar-3"></i></span> <span
											class="k-nav__link-text">Mi Perfil</span>
									</a></li>
									<li class="k-nav__item"><a
										href="custom_user_profile-v1.html" class="k-nav__link"> <span
											class="k-nav__link-icon"><i
												class="flaticon2-browser-2"></i></span> <span
											class="k-nav__link-text">Mis Tareas</span>
									</a></li>
									<li class="k-nav__item"><a
										href="custom_user_profile-v1.html" class="k-nav__link"> <span
											class="k-nav__link-icon"><i class="flaticon2-mail"></i></span>
											<span class="k-nav__link-text">Mensajes</span>
									</a></li>
									<li class="k-nav__item"><a
										href="custom_user_profile-v1.html" class="k-nav__link"> <span
											class="k-nav__link-icon"><i class="flaticon2-gear"></i></span>
											<span class="k-nav__link-text">Ajustes</span>
									</a></li>
									<li class="k-nav__item k-nav__item--custom k-margin-t-15">
										<a href="custom_user_login-v2.html" target="_blank"
										class="btn btn-outline-metal btn-hover-brand btn-upper btn-font-dark btn-sm btn-bold">Salir</a>
									</li>
								</ul>
							</div>
						</div>
						<!--end: User Bar -->
						<!--begin:: Quick Panel Toggler -->
						<div
							class="k-header__topbar-item k-header__topbar-item--quick-panel"
							data-toggle="k-tooltip" title="Quick panel"
							data-placement="right">
							<span class="k-header__topbar-icon"
								id="k_quick_panel_toggler_btn"> <i
								class="flaticon2-grids"></i>
							</span>
						</div>
						<!--end:: Quick Panel Toggler -->
					</div>
					<!-- end:: Header Topbar -->
				</div>
				<!-- end:: Header -->
				<div class="k-grid__item k-grid__item--fluid k-grid k-grid--hor">