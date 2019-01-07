<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<spring:url value="../resources" var="urlPublic" />
		<meta charset="utf-8" />
		<title>Keen | Dashboard</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />

		<!--begin::Web font -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
			WebFont.load({
                google: {"families":["Poppins:300,400,500,600,700","Raleway:300,400,500,600,700"]},
                active: function() {
                    sessionStorage.fonts = true;
                }
            });
        </script>

		<!--end::Web font -->

		<!--begin::Page Vendors Styles -->
		<link href="${urlPublic}/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />

		<!--end::Page Vendors Styles -->

		<!--begin:: Global Mandatory Vendors -->
		<link href="${urlPublic}/assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		<link href="${urlPublic}/assets/vendors/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="${urlPublic}/assets/vendors/custom/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Styles -->
		<link href="${urlPublic}/assets/demo/demo5/base/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--end::Global Theme Styles -->

		<!--begin::Layout Skins -->
		<link href="${urlPublic}/assets/demo/demo5/skins/header/navy.css" rel="stylesheet" type="text/css" />

		<!--end::Layout Skins -->
		<link rel="shortcut icon" href="${urlPublic}/assets/media/logos/favicon.ico" />
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="k-header--fixed k-header-mobile--fixed k-aside--enabled k-aside--fixed k-aside--offcanvas-default">

		<!-- begin:: Page -->

		<!-- begin:: Header Mobile -->
		<div id="k_header_mobile" class="k-header-mobile  k-header-mobile--fixed ">
			<div class="k-header-mobile__logo">
				<a href="index.html">
					<img alt="Logo" src="${urlPublic}/assets/media/logos/logo-1.png" />
				</a>
			</div>
			<div class="k-header-mobile__toolbar">
				<button class="k-header-mobile__toolbar-toggler" id="k_header_mobile_toggler"><span></span></button>
				<button class="k-header-mobile__toolbar-topbar-toggler" id="k_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
			</div>
		</div>

		<!-- end:: Header Mobile -->
		<div class="k-grid k-grid--hor k-grid--root">
			<div class="k-grid__item k-grid__item--fluid k-grid k-grid--ver k-page">
				<div class="k-grid__item k-grid__item--fluid k-grid k-grid--hor k-wrapper" id="k_wrapper">

					<!-- begin:: Header -->
					<div id="k_header" class="k-header k-grid__item k-grid k-grid--ver  k-header--fixed ">

						<!-- begin:: Brand -->
						<div class="k-header__brand   k-grid__item" id="k_header_brand">
							<a href="index.html">
								<img alt="Logo" src="${urlPublic}/assets/media/logos/logo-1.png" />
							</a>
						</div>

						<!-- end:: Brand -->

						<!-- begin: Header Menu -->
						<button class="k-header-menu-wrapper-close" id="k_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
						<div class="k-header-menu-wrapper k-grid__item" id="k_header_menu_wrapper">
							<div id="k_header_menu" class="k-header-menu k-header-menu-mobile ">
								<ul class="k-menu__nav ">
									<li class="k-menu__item  k-menu__item--open k-menu__item--here k-menu__item--submenu k-menu__item--rel k-menu__item--open k-menu__item--here" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Dashboard</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
										<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
											<ul class="k-menu__subnav">
												<li class="k-menu__item " aria-haspopup="true"><a href="index.html" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Default</span></a></li>
												<li class="k-menu__item  k-menu__item--active " aria-haspopup="true"><a href="dashboards_content-fluid.html" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Fluid Content</span></a></li>
											</ul>
										</div>
									</li>
									<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Pages</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
										<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
											<ul class="k-menu__subnav">
												<li class="k-menu__item " aria-haspopup="true"><a href="javascript:;" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Create New Post</span></a></li>
												<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Generate Reports</span><span class="k-menu__link-badge"><span class="k-badge k-badge--success">2</span></span></a></li>
												<li class="k-menu__item  k-menu__item--submenu" data-kmenu-submenu-toggle="hover" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Manage Orders</span><i class="k-menu__hor-arrow la la-angle-right"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
													<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
														<ul class="k-menu__subnav">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Latest Orders</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Pending Orders</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Processed Orders</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Delivery Reports</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Payments</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Customers</span></a></li>
														</ul>
													</div>
												</li>
												<li class="k-menu__item  k-menu__item--submenu" data-kmenu-submenu-toggle="hover" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Customer Feedbacks</span><i class="k-menu__hor-arrow la la-angle-right"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
													<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
														<ul class="k-menu__subnav">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Customer Feedbacks</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Supplier Feedbacks</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Reviewed Feedbacks</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Resolved Feedbacks</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Feedback Reports</span></a></li>
														</ul>
													</div>
												</li>
												<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Register Member</span></a></li>
											</ul>
										</div>
									</li>
									<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Reports</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
										<div class="k-menu__submenu  k-menu__submenu--fixed k-menu__submenu--left" style="width:1000px">
											<div class="k-menu__subnav">
												<ul class="k-menu__content">
													<li class="k-menu__item ">
														<h3 class="k-menu__heading k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Finance Reports</span><i class="k-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="k-menu__inner">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-map"></i><span class="k-menu__link-text">Annual Reports</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-user"></i><span class="k-menu__link-text">HR Reports</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-clipboard"></i><span class="k-menu__link-text">IPO Reports</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-graphic-1"></i><span class="k-menu__link-text">Finance Margins</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-graphic-2"></i><span class="k-menu__link-text">Revenue Reports</span></a></li>
														</ul>
													</li>
													<li class="k-menu__item ">
														<h3 class="k-menu__heading k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Project Reports</span><i class="k-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="k-menu__inner">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Coca Cola CRM</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Delta Airlines Booking Site</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Malibu Accounting</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Vineseed Website Rewamp</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Zircon Mobile App</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Mercury CMS</span></a></li>
														</ul>
													</li>
													<li class="k-menu__item ">
														<h3 class="k-menu__heading k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">HR Reports</span><i class="k-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="k-menu__inner">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Staff Directory</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Client Directory</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Salary Reports</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Staff Payslips</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Corporate Expenses</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Project Expenses</span></a></li>
														</ul>
													</li>
													<li class="k-menu__item ">
														<h3 class="k-menu__heading k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Reporting Apps</span><i class="k-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="k-menu__inner">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Report Adjusments</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Sources & Mediums</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Reporting Settings</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Conversions</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Report Flows</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Audit & Logs</span></a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Apps</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
										<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
											<ul class="k-menu__subnav">
												<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">eCommerce</span></a></li>
												<li class="k-menu__item  k-menu__item--submenu" data-kmenu-submenu-toggle="hover" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Audience</span><i class="k-menu__hor-arrow la la-angle-right"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
													<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
														<ul class="k-menu__subnav">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-users"></i><span class="k-menu__link-text">Active Users</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-interface-1"></i><span class="k-menu__link-text">User Explorer</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-lifebuoy"></i><span class="k-menu__link-text">Users Flows</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-graphic-1"></i><span class="k-menu__link-text">Market Segments</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-graphic"></i><span class="k-menu__link-text">User Reports</span></a></li>
														</ul>
													</div>
												</li>
												<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Marketing</span></a></li>
												<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Campaigns</span><span class="k-menu__link-badge"><span class="k-badge k-badge--success">3</span></span></a></li>
												<li class="k-menu__item  k-menu__item--submenu" data-kmenu-submenu-toggle="hover" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Cloud Manager</span><i class="k-menu__hor-arrow la la-angle-right"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
													<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--right">
														<ul class="k-menu__subnav">
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-add"></i><span class="k-menu__link-text">File Upload</span><span class="k-menu__link-badge"><span class="k-badge k-badge--danger">3</span></span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-signs-1"></i><span class="k-menu__link-text">File Attributes</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-folder"></i><span class="k-menu__link-text">Folders</span></a></li>
															<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-icon flaticon-cogwheel-2"></i><span class="k-menu__link-text">System Settings</span></a></li>
														</ul>
													</div>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<!-- end: Header Menu -->

						<!-- begin:: Header Topbar -->
						<div class="k-header__topbar k-grid__item k-grid__item--fluid">

							<!--begin: Search -->
							<div class="k-header__topbar-item k-header__topbar-item--search dropdown">
								<div class="k-header__topbar-wrapper" id="k_offcanvas_toolbar_search_toggler_btn">
									<span class="k-header__topbar-icon"><i class="flaticon2-search"></i></span>
								</div>
							</div>

							<!--end: Search -->

							<!--begin: Notifications -->
							<div class="k-header__topbar-item">
								<div class="k-header__topbar-wrapper" id="k_offcanvas_toolbar_notifications_toggler_btn">
									<span class="k-header__topbar-icon"><i class="flaticon2-notification"></i></span>
									<span class="k-badge k-badge--brand"></span>
								</div>
							</div>

							<!--end: Notifications -->

							<!--begin: Quick actions -->
							<div class="k-header__topbar-item">
								<div class="k-header__topbar-wrapper" id="k_offcanvas_toolbar_quick_actions_toggler_btn">
									<span class="k-header__topbar-icon"><i class="flaticon2-settings"></i></span>
								</div>
							</div>

							<!--end: Quick actions -->

							<!--begin: Quick panel toggler -->
							<div class="k-header__topbar-item" data-toggle="k-tooltip" title="Quick panel" data-placement="top">
								<div class="k-header__topbar-wrapper">
									<span class="k-header__topbar-icon" id="k_quick_panel_toggler_btn"><i class="flaticon2-menu"></i></span>
								</div>
							</div>

							<!--end: Quick panel toggler -->

							<!--begin: Language bar -->
							<div class="k-header__topbar-item k-header__topbar-item--langs">
								<div class="k-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px 0">
									<span class="k-header__topbar-icon">
										<img class="" src="${urlPublic}/assets/media/flags/020-flag.svg" alt="" />
									</span>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround">
									<ul class="k-nav k-margin-t-10 k-margin-b-10">
										<li class="k-nav__item k-nav__item--active">
											<a href="#" class="k-nav__link">
												<span class="k-nav__link-icon"><img src="${urlPublic}/assets/media/flags/020-flag.svg" alt="" /></span>
												<span class="k-nav__link-text">English</span>
											</a>
										</li>
										<li class="k-nav__item">
											<a href="#" class="k-nav__link">
												<span class="k-nav__link-icon"><img src="${urlPublic}/assets/media/flags/016-spain.svg" alt="" /></span>
												<span class="k-nav__link-text">Spanish</span>
											</a>
										</li>
										<li class="k-nav__item">
											<a href="#" class="k-nav__link">
												<span class="k-nav__link-icon"><img src="${urlPublic}/assets/media/flags/017-germany.svg" alt="" /></span>
												<span class="k-nav__link-text">German</span>
											</a>
										</li>
									</ul>
								</div>
							</div>

							<!--end: Language bar -->

							<!--begin: User bar -->
							<div class="k-header__topbar-item k-header__topbar-item--user" id="k_offcanvas_toolbar_profile_toggler_btn">
								<div class="k-header__topbar-welcome">
									Hi,
								</div>
								<div class="k-header__topbar-username">
									Nick
								</div>
								<div class="k-header__topbar-wrapper">
									<img alt="Pic" src="${urlPublic}/assets/media/users/default.jpg" />
								</div>
							</div>

							<!--end: User bar -->
						</div>

						<!-- end:: Header Topbar -->
					</div>

					<!-- end:: Header -->

					<!-- begin:: Sub-header -->
					<div id="k_sub_header" class="k-sub-header k-grid__item ">

						<!-- begin:: Sub-header Title -->
						<div class="k-sub-header__title">
							<button class="k-sub-header__toggler k-sub-header__toggler--left" id="k_aside_toggler"><span></span></button>
							<div class="k-sub-header__breadcrumbs">
								<a href="" class="k-sub-header__breadcrumbs-link k-sub-header__breadcrumbs-link--home">Dashboard</a>
								<span class="k-sub-header__breadcrumbs-separator"></span>
								<a href="" class="k-sub-header__breadcrumbs-link ">Fluid Content</a>
							</div>
						</div>

						<!-- end:: Sub-header Title -->

						<!-- begin:: Sub-header toolbar -->
						<div class="k-sub-header__toolbar">
							<div class="k-sub-header__toolbar-wrapper">
								<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Create</a>
								<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Update</a>
								<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Settings</a>
							</div>
						</div>

						<!-- end:: Sub-header toolbar -->
					</div>

					<!-- end:: Sub-header -->
					<div class="k-grid__item k-grid__item--fluid k-grid k-grid--ver k-grid--stretch">
						<div class="k-content-wrapper   k-grid__item k-grid__item--fluid k-grid k-grid--ver">

							<!-- begin:: Content -->
							<div class="k-content k-grid__item k-grid__item--fluid" id="k_content">

								<!--begin::Dashboard 4-->

								<!--begin::Row-->
								<div class="row">
									<div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head k-portlet__head--noborder">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Author Sales</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body k-portlet__body--fluid">
												<div class="k-widget-19">
													<div class="k-widget-19__title">
														<div class="k-widget-19__label"><small>$</small>64M</div>
														<img class="k-widget-19__bg" src="${urlPublic}/assets/media/misc/iconbox_bg.png" alt="bg" />
													</div>
													<div class="k-widget-19__data">

														<!--Doc: For the chart bars you can use state helper classes: k-bg-success, k-bg-info, k-bg-danger. Refer: components/custom/colors.html -->
														<div class="k-widget-19__chart">
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-45 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="45"></div>
															</div>
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-95 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="95"></div>
															</div>
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-63 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="63"></div>
															</div>
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-11 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="11"></div>
															</div>
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-46 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="46"></div>
															</div>
															<div class="k-widget-19__bar">
																<div class="k-widget-19__bar-88 k-bg-success" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="88"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head  k-portlet__head--noborder">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Technologies</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body k-portlet__body--fluid">
												<div class="k-widget-21">
													<div class="k-widget-21__title">
														<div class="k-widget-21__label">9.3M</div>
														<img src="${urlPublic}/assets/media/misc/iconbox_bg.png" class="k-widget-21__bg" alt="bg" />
													</div>
													<div class="k-widget-21__data">

														<!--Doc: For the chart legend bullet colors can be changed with state helper classes: k-bg-success, k-bg-info, k-bg-danger. Refer: components/custom/colors.html -->
														<div class="k-widget-21__legends">
															<div class="k-widget-21__legend">
																<i class="k-bg-success"></i>
																<span>HTML</span>
															</div>
															<div class="k-widget-21__legend">
																<i class="k-bg-warning"></i>
																<span>CSS</span>
															</div>
															<div class="k-widget-21__legend">
																<i class="k-bg-brand"></i>
																<span>Angular</span>
															</div>
														</div>
														<div class="k-widget-21__chart">
															<div class="k-widget-21__stat">+37%</div>

															<!--Doc: For the chart initialization refer to "widgetTechnologiesChart2" function in "src\theme\app\scripts\custom\dashboard.js" -->
															<canvas id="k_widget_technologies_chart_2" style="height: 110px; width: 110px;"></canvas>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-12 col-xl-4 order-lg-1 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head  k-portlet__head--noborder">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Total Orders</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body k-portlet__body--fluid">
												<div class="k-widget-20">
													<div class="k-widget-20__title">
														<div class="k-widget-20__label">17M</div>
														<img class="k-widget-20__bg" src="${urlPublic}/assets/media/misc/iconbox_bg.png" alt="bg" />
													</div>
													<div class="k-widget-20__data">
														<div class="k-widget-20__chart">

															<!--Doc: For the chart initialization refer to "widgetTotalOrdersChart2" function in "src\theme\app\scripts\custom\dashboard.js" -->
															<canvas id="k_widget_total_orders_chart_2"></canvas>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-6 col-xl-4 order-lg-2 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid-half k-widget-13">
											<div class="k-portlet__body">
												<div id="k-widget-slider-13-2" class="k-slider carousel slide" data-ride="carousel" data-interval="4000">
													<div class="k-slider__head">
														<div class="k-slider__label">Projects</div>
														<div class="k-slider__nav">
															<a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-13-2" role="button" data-slide="prev">
																<i class="fa fa-angle-left"></i>
															</a>
															<a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-13-2" role="button" data-slide="next">
																<i class="fa fa-angle-right"></i>
															</a>
														</div>
													</div>
													<div class="carousel-inner">
														<div class="carousel-item active k-slider__body">
															<div class="k-widget-13">
																<div class="k-widget-13__body">
																	<a class="k-widget-13__title" href="#">Keen Admin Launch Day</a>
																	<div class="k-widget-13__desc">
																		To start a blog, think of a topic about and first brainstorm party is ways to write details
																	</div>
																</div>
																<div class="k-widget-13__foot">
																	<div class="k-widget-13__progress">
																		<div class="k-widget-13__progress-info">
																			<div class="k-widget-13__progress-status">
																				Progress
																			</div>
																			<div class="k-widget-13__progress-value">78%</div>
																		</div>
																		<div class="progress">
																			<div class="progress-bar k-bg-brand" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="carousel-item k-slider__body">
															<div class="k-widget-13">
																<div class="k-widget-13__body">
																	<a class="k-widget-13__title" href="#">First Milestone Achivement</a>
																	<div class="k-widget-13__desc">
																		To start a blog, think of a topic about and first brainstorm party is ways to write details
																	</div>
																</div>
																<div class="k-widget-13__foot">
																	<div class="k-widget-13__progress">
																		<div class="k-widget-13__progress-info">
																			<div class="k-widget-13__progress-status">
																				Progress
																			</div>
																			<div class="k-widget-13__progress-value">55%</div>
																		</div>
																		<div class="progress">
																			<div class="progress-bar k-bg-brand" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="carousel-item k-slider__body">
															<div class="k-widget-13">
																<div class="k-widget-13__body">
																	<a class="k-widget-13__title" href="#">Reached 50,000 sales</a>
																	<div class="k-widget-13__desc">
																		To start a blog, think of a topic about and first brainstorm party is ways to write details
																	</div>
																</div>
																<div class="k-widget-13__foot">
																	<div class="k-widget-13__progress">
																		<div class="k-widget-13__progress-info">
																			<div class="k-widget-13__progress-status">
																				Progress
																			</div>
																			<div class="k-widget-13__progress-value">24%</div>
																		</div>
																		<div class="progress">
																			<div class="progress-bar k-bg-brand" role="progressbar" style="width: 24%" aria-valuenow="24" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid-half k-widget-12">
											<div class="k-portlet__body">
												<div class="k-widget-12__body">
													<div class="k-widget-12__head">
														<div class="k-widget-12__date k-widget-12__date--warning">
															<span class="k-widget-12__day">23</span>
															<span class="k-widget-12__month">Dec</span>
														</div>
														<div class="k-widget-12__label">
															<h3 class="k-widget-12__title">Christmas Party</h3>
															<span class="k-widget-12__desc">Bolton House</span>
														</div>
													</div>
													<div class="k-widget-12__info">
														To start a blog, think of a topic about and first brainstorm party is ways to write details
													</div>
												</div>
											</div>
											<div class="k-portlet__foot k-portlet__foot--md">
												<div class="k-portlet__foot-wrapper">
													<div class="k-portlet__foot-info">
														<div class="k-widget-12__members">
															<a href="#" class="k-widget-12__member" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="John Myer">
																<img src="${urlPublic}/assets/media/users/100_1.jpg" alt="image" />
															</a>
															<a href="#" class="k-widget-12__member" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="Alison Brandy">
																<img src="${urlPublic}/assets/media/users/100_10.jpg" alt="image" />
															</a>
															<a href="#" class="k-widget-12__member" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="Selina Cranson">
																<img src="${urlPublic}/assets/media/users/100_11.jpg" alt="image" />
															</a>
															<a href="#" class="k-widget-12__member" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="Luke Walls">
																<img src="${urlPublic}/assets/media/users/100_2.jpg" alt="image" />
															</a>
															<a href="#" class="k-widget-12__member" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="Micheal York">
																<img src="${urlPublic}/assets/media/users/100_3.jpg" alt="image" />
															</a>
															<a href="#" class="k-widget-12__member k-widget-12__member--last">
																+10
															</a>
														</div>
													</div>
													<div class="k-portlet__foot-toolbar">
														<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Join</a>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-12 col-xl-8 order-lg-1 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head k-portlet__head--lg k-portlet__head--noborder k-portlet__head--break-sm">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Recent Orders <small>32500 total</small></h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-wrapper k-form">
														<div class="k-form__group k-form__group--inline k-margin-r-10">
															<div class="k-form__label">Sort By:</div>
															<div class="k-form__control" style="width: 160px;">
																<select class="form-control bootstrap-select" id="k_form_status" title="Status">
																	<option value="1">Pending</option>
																	<option value="2">Delivered</option>
																	<option value="3">Canceled</option>
																	<option value="4">Success</option>
																	<option value="5">Info</option>
																	<option value="6">Danger</option>
																</select>
															</div>
														</div>
														<a href="#" class="btn btn-brand btn-upper btn-bold">New Record</a>
													</div>
												</div>
											</div>
											<div class="k-portlet__body k-portlet__body--fit">

												<!--Doc: For the datatable initialization refer to "recentOrdersInit" function in "src\theme\app\scripts\custom\dashboard.js" -->
												<div class="k-datatable" id="k_recent_orders"></div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-6 col-xl-4 order-lg-2 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Order Statistics</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body">
												<div class="k-widget-18">
													<div class="k-widget-18__summary">
														<div class="k-widget-18__total">7,300</div>
														<div class="k-widget-18__label">Total Orders</div>
													</div>
													<div class="k-widget-18__progress">
														<div class="progress">

															<!-- Doc: A bootstrap progress bar can be used to show a user how far along it's in a process, see https://getbootstrap.com/docs/4.1/components/progress/ -->
															<div class="progress-bar bg-brand" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
															<div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
															<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
															<div class="progress-bar bg-warning" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
															<div class="progress-bar bg-dark" role="progressbar" style="width: 5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</div>
													<div class="k-widget-18__item">
														<div class="k-widget-18__legend k-bg-brand"></div>
														<div class="k-widget-18__desc">
															<a href="">
																<div class="k-widget-18__title">
																	Mobile Games
																</div>
															</a>
															<div class="k-widget-18__desc">
																Swift, Python, Java SDK
															</div>
														</div>
														<div class="k-widget-18__orders">
															<span>3,244</span> Orders
														</div>
													</div>
													<div class="k-widget-18__item">
														<div class="k-widget-18__legend k-bg-success"></div>
														<div class="k-widget-18__desc">
															<a href="">
																<div class="k-widget-18__title">
																	B2B2C Solutions
																</div>
															</a>
															<div class="k-widget-18__desc">
																ASP.NET, Ruby, Python
															</div>
														</div>
														<div class="k-widget-18__orders">
															<span>962</span> Orders
														</div>
													</div>
													<div class="k-widget-18__item">
														<div class="k-widget-18__legend k-bg-danger"></div>
														<div class="k-widget-18__desc">
															<a href="">
																<div class="k-widget-18__title">
																	HTML Templates
																</div>
															</a>
															<div class="k-widget-18__desc">
																HTML, CSS, JS
															</div>
														</div>
														<div class="k-widget-18__orders">
															<span>2,750</span> Orders
														</div>
													</div>
													<div class="k-widget-18__item">
														<div class="k-widget-18__legend k-bg-info"></div>
														<div class="k-widget-18__desc">
															<a href="">
																<div class="k-widget-18__title">
																	Back-end Plugins
																</div>
															</a>
															<div class="k-widget-18__desc">
																PHP, Ruby, C#, ASP.NET
															</div>
														</div>
														<div class="k-widget-18__orders">
															<span>890</span> Orders
														</div>
													</div>
													<div class="k-widget-18__item">
														<div class="k-widget-18__legend k-bg-dark"></div>
														<div class="k-widget-18__desc">
															<a href="">
																<div class="k-widget-18__title">
																	Admin Software
																</div>
															</a>
															<div class="k-widget-18__desc">
																Bootsrap, CSS, SCSS, AngularJS
															</div>
														</div>
														<div class="k-widget-18__orders">
															<span>1,644</span> Orders
														</div>
													</div>

													<!--
			<div class="k-widget-18__item">
				<div class="k-widget-18__legend k-bg-success"></div>
				<div class="k-widget-18__desc">
					<a href=""><div class="k-widget-18__title">
						Dashboard System
					</div></a>
					<div class="k-widget-18__desc">
						Angular, Oracle, Java
					</div>
				</div>
				<div class="k-widget-18__orders">
					<span>560</span> Orders
				</div>
			</div>
			-->
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-6 col-xl-4 order-lg-2 order-xl-1">
										<div class="k-portlet k-portlet--tabs k-portlet--height-fluid">
											<div class="k-portlet__head">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">
														Notifications
													</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
														<li class="nav-item">
															<a class="nav-link active" data-toggle="tab" href="#k_portlet_tabs_1_1_1_content" role="tab">
																Today
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_1_2_content" role="tab">
																Week
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_1_3_content" role="tab">
																Month
															</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="k-portlet__body">
												<div class="tab-content">
													<div class="tab-pane fade active show" id="k_portlet_tabs_1_1_1_content" role="tabpanel">
														<div class="k-scroll" data-scroll="true" style="height: 420px;" data-mobile-height="350">

															<!--Begin::Timeline -->
															<div class="k-timeline">

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--success">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-feed k-font-success"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">02:30 PM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--danger">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-safe-shield-protection k-font-danger"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall & order to take aktion on User Preferences
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--brand">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon2-box k-font-brand"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Yestardey</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		FlyMore design mock-ups been uploadet by designers Bob, Naomi, Richard
																	</a>
																	<div class="k-timeline__item-info">
																		PSD, Sketch, AJ
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--warning">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-pie-chart-1 k-font-warning"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Aug 13,2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		Meeting with Ken Digital Corp ot Unit14, 3 Edigor Buildings, George Street, Loondon<br> England, BA12FJ
																	</a>
																	<div class="k-timeline__item-info">
																		Meeting, Customer
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--info">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-notepad k-font-info"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">May 09, 2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--accent">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-bell k-font-accent"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall & order to take aktion on User Preferences
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->
															</div>

															<!--End::Timeline 1 -->
														</div>
													</div>
													<div class="tab-pane fade" id="k_portlet_tabs_1_1_2_content" role="tabpanel">
														<div class="k-scroll" data-scroll="true" style="height: 420px;" data-mobile-height="350">

															<!--Begin::Timeline -->
															<div class="k-timeline">

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--info">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-psd  k-font-info"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall &amp; order to take<br> aktion on User Preferences
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--success">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-pie-chart-1 k-font-success"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">02:30 PM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--accent">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-shopping-basket k-font-accent"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall &amp; order to take<br> aktion on User references
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--warning">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-rotate k-font-warning"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">May 09, 2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--brand">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-paper-plane-1 k-font-brand"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Aug 13,2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		Meeting with Ken Digital Corp ot Unit14, 3<br> Edigor Buildings, George Street, Loondon<br> England, BA12FJ
																	</a>
																	<div class="k-timeline__item-info">
																		Meeting, Customer
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--danger">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-pie-chart-1 k-font-danger"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Yestardey</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		FlyMore design mock-ups been uploadet by<br> designers Bob, Naomi, Richard
																	</a>
																	<div class="k-timeline__item-info">
																		PSD, Sketch, AJ
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--warning">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-security k-font-warning"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Yestardey</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		FlyMore design mock-ups been uploadet by<br> designers Bob, Naomi, Richard
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--brand">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-price-tag k-font-brand"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">02:30 PM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->
															</div>

															<!--End::Timeline 1 -->
														</div>
													</div>
													<div class="tab-pane fade" id="k_portlet_tabs_1_1_3_content" role="tabpanel">
														<div class="k-scroll" data-scroll="true" style="height: 420px;" data-mobile-height="350">

															<!--Begin::Timeline -->
															<div class="k-timeline">

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--brand">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-medal k-font-brand"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Aug 13,2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		Meeting with Ken Digital Corp ot Unit14, 3<br> Edigor Buildings, George Street, Loondon<br> England, BA12FJ
																	</a>
																	<div class="k-timeline__item-info">
																		Meeting, Customer
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--danger">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-safe-shield-protection k-font-danger"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Yestardey</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		FlyMore design mock-ups been uploadet by<br> designers Bob, Naomi, Richard
																	</a>
																	<div class="k-timeline__item-info">
																		PSD, Sketch, AJ
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--info">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon2-box  k-font-info"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall &amp; order to take<br> aktion on User Preferences
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--success">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-pie-chart-1 k-font-success"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">02:30 PM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--accent">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-envelope k-font-accent"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">01:20 AM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		New secyrity alert by Firewall &amp; order to take<br> aktion on User references
																	</a>
																	<div class="k-timeline__item-info">
																		Security, Fieewall
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--warning">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-rotate k-font-warning"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">May 09, 2018</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--info">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-feed k-font-info"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">Yestardey</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		FlyMore design mock-ups been uploadet by<br> designers Bob, Naomi, Richard
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->

																<!--Begin::Item -->
																<div class="k-timeline__item k-timeline__item--brand">
																	<div class="k-timeline__item-section">
																		<div class="k-timeline__item-section-border">
																			<div class="k-timeline__item-section-icon">
																				<i class="flaticon-download-1 k-font-brand"></i>
																			</div>
																		</div>
																		<span class="k-timeline__item-datetime">02:30 PM</span>
																	</div>
																	<a href="" class="k-timeline__item-text">
																		KeenThemes created new layout whith tens of<br> new options for Keen Admin panel
																	</a>
																	<div class="k-timeline__item-info">
																		HTML,CSS,VueJS
																	</div>
																</div>

																<!--End::Item -->
															</div>

															<!--End::Timeline 1 -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Latest Uploads</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-actions">
														<a href="#" class="btn btn-default btn-upper btn-sm btn-bold">All FILES</a>
													</div>
												</div>
											</div>
											<div class="k-portlet__body k-portlet__body--fit k-portlet__body--fluid">
												<div class="k-widget-7">
													<div class="k-widget-7__items">
														<div class="k-widget-7__item">
															<div class="k-widget-7__item-pic">
																<img src="${urlPublic}/assets/media/files/doc.svg" alt="" />
															</div>
															<div class="k-widget-7__item-info">
																<a href="#" class="k-widget-7__item-title">
																	Keeg Design Reqs
																</a>
																<div class="k-widget-7__item-desc">
																	95 MB
																</div>
															</div>
															<div class="k-widget-7__item-toolbar">
																<div class="dropdown dropdown-inline">
																	<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																		<i class="flaticon-more-1"></i>
																	</button>
																	<div class="dropdown-menu dropdown-menu-right">
																		<ul class="k-nav">
																			<li class="k-nav__section k-nav__section--first">
																				<span class="k-nav__section-text">EXPORT TOOLS</span>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-eye"></i>
																					<span class="k-nav__link-text">View</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-comment-o"></i>
																					<span class="k-nav__link-text">Coments</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-copy"></i>
																					<span class="k-nav__link-text">Copy</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-file-excel-o"></i>
																					<span class="k-nav__link-text">Excel</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="k-widget-7__item">
															<div class="k-widget-7__item-pic">
																<img src="${urlPublic}/assets/media/files/pdf.svg" alt="" />
															</div>
															<div class="k-widget-7__item-info">
																<a href="#" class="k-widget-7__item-title">
																	S.E.R Agreement
																</a>
																<div class="k-widget-7__item-desc">
																	805 MB
																</div>
															</div>
															<div class="k-widget-7__item-toolbar">
																<div class="dropdown dropdown-inline">
																	<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																		<i class="flaticon-more-1"></i>
																	</button>
																	<div class="dropdown-menu dropdown-menu-right">
																		<ul class="k-nav">
																			<li class="k-nav__section k-nav__section--first">
																				<span class="k-nav__section-text">EXPORT TOOLS</span>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-eye"></i>
																					<span class="k-nav__link-text">View</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-comment-o"></i>
																					<span class="k-nav__link-text">Coments</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-copy"></i>
																					<span class="k-nav__link-text">Copy</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-file-excel-o"></i>
																					<span class="k-nav__link-text">Excel</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="k-widget-7__item">
															<div class="k-widget-7__item-pic">
																<img src="${urlPublic}/assets/media/files/jpg.svg" alt="" />
															</div>
															<div class="k-widget-7__item-info">
																<a href="#" class="k-widget-7__item-title">
																	FlyMore Screenshot
																</a>
																<div class="k-widget-7__item-desc">
																	4 MB
																</div>
															</div>
															<div class="k-widget-7__item-toolbar">
																<div class="dropdown dropdown-inline">
																	<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																		<i class="flaticon-more-1"></i>
																	</button>
																	<div class="dropdown-menu dropdown-menu-right">
																		<ul class="k-nav">
																			<li class="k-nav__section k-nav__section--first">
																				<span class="k-nav__section-text">EXPORT TOOLS</span>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-eye"></i>
																					<span class="k-nav__link-text">View</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-comment-o"></i>
																					<span class="k-nav__link-text">Coments</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-copy"></i>
																					<span class="k-nav__link-text">Copy</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-file-excel-o"></i>
																					<span class="k-nav__link-text">Excel</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="k-widget-7__item">
															<div class="k-widget-7__item-pic">
																<img src="${urlPublic}/assets/media/files/zip.svg" alt="" />
															</div>
															<div class="k-widget-7__item-info">
																<a href="#" class="k-widget-7__item-title">
																	ST.11 Dacuments
																</a>
																<div class="k-widget-7__item-desc">
																	Unknown
																</div>
															</div>
															<div class="k-widget-7__item-toolbar">
																<div class="dropdown dropdown-inline">
																	<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																		<i class="flaticon-more-1"></i>
																	</button>
																	<div class="dropdown-menu dropdown-menu-right">
																		<ul class="k-nav">
																			<li class="k-nav__section k-nav__section--first">
																				<span class="k-nav__section-text">EXPORT TOOLS</span>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-eye"></i>
																					<span class="k-nav__link-text">View</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-comment-o"></i>
																					<span class="k-nav__link-text">Coments</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-copy"></i>
																					<span class="k-nav__link-text">Copy</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-file-excel-o"></i>
																					<span class="k-nav__link-text">Excel</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="k-widget-7__item">
															<div class="k-widget-7__item-pic">
																<img src="${urlPublic}/assets/media/files/xml.svg" alt="" />
															</div>
															<div class="k-widget-7__item-info">
																<a href="#" class="k-widget-7__item-title">
																	XML AOL Data Fetchin
																</a>
																<div class="k-widget-7__item-desc">
																	4 MB
																</div>
															</div>
															<div class="k-widget-7__item-toolbar">
																<div class="dropdown dropdown-inline">
																	<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																		<i class="flaticon-more-1"></i>
																	</button>
																	<div class="dropdown-menu dropdown-menu-right">
																		<ul class="k-nav">
																			<li class="k-nav__section k-nav__section--first">
																				<span class="k-nav__section-text">EXPORT TOOLS</span>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-eye"></i>
																					<span class="k-nav__link-text">View</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-comment-o"></i>
																					<span class="k-nav__link-text">Coments</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-copy"></i>
																					<span class="k-nav__link-text">Copy</span>
																				</a>
																			</li>
																			<li class="k-nav__item">
																				<a href="#" class="k-nav__link">
																					<i class="k-nav__link-icon la la-file-excel-o"></i>
																					<span class="k-nav__link-text">Excel</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="k-widget-7__foot">
														<img src="${urlPublic}/assets/media/misc/clouds.png" alt="" />
														<div class="k-widget-7__upload">
															<a href="#"><i class="flaticon-upload"></i></a>
															<span>Drag files here</span>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-12 col-xl-4 order-lg-2 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid">
											<div class="k-portlet__head">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Recent Works</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body">
												<div class="k-widget-6">

													<!-- begin::Tab Content -->
													<div class="k-widget6__tab tab-content">
														<div id="k_personal_income_quater_15be902eb9ac26" class="tab-pane fade active show">
															<div class="k-widget-6__items">
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-7.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Quickly direct you useful content or people
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-6.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Get the point across
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-5.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Contain amazing email sign up form
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-2.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Tips on How to Write an About me page
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div id="k_personal_income_quater_25be902eb9ac26" class="tab-pane fade">
															<div class="k-widget-6__items">
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-6.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Get the point across
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-2.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Tips on How to Write an About me page
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-7.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Quickly direct you useful content or people
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-5.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Contain amazing email sign up form
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div id="k_personal_income_quater_35be902eb9ac26" class="tab-pane fade">
															<div class="k-widget-6__items">
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-5.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Contain amazing email sign up form
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-4.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Tips on How to Write an About me page
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-6.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Get the point across
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-2.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Tips on How to Write an About me page
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div id="k_personal_income_quater_45be902eb9ac26" class="tab-pane fade">
															<div class="k-widget-6__items">
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-6.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Get the point across
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-5.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Contain amazing email sign up form
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-3.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Get the point across
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-6__item">
																	<div class="k-widget-6__item-pic">
																		<img class="" src="${urlPublic}/assets/media/blog/blog-2.jpg" alt="" />
																	</div>
																	<div class="k-widget-6__item-info">
																		<div class="k-widget-6__item-title">
																			Tips on How to Write an About me page
																		</div>
																		<div class="k-widget-6__item-desc">
																			HTML, CSS, JavaScripts
																		</div>
																	</div>
																	<div class="k-widget-6__item-icon k-widget-6__item-icon--brand">
																		<div class="dropdown dropdown-inline">
																			<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																				<i class="flaticon-more-1"></i>
																			</button>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="k-nav">
																					<li class="k-nav__section k-nav__section--first">
																						<span class="k-nav__section-text">EXPORT TOOLS</span>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-eye"></i>
																							<span class="k-nav__link-text">View</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-comment-o"></i>
																							<span class="k-nav__link-text">Coments</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-copy"></i>
																							<span class="k-nav__link-text">Copy</span>
																						</a>
																					</li>
																					<li class="k-nav__item">
																						<a href="#" class="k-nav__link">
																							<i class="k-nav__link-icon la la-file-excel-o"></i>
																							<span class="k-nav__link-text">Excel</span>
																						</a>
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<!-- end::Tab Content -->

													<!-- begin::Nav pills -->
													<ul class="k-widget-6__nav-items nav nav-pills nav-fill" role="tablist">
														<li class="k-widget-6__nav-item nav-item">
															<a class="nav-link active show" data-toggle="pill" href="#k_personal_income_quater_15be902eb9ac26">1</a>
														</li>
														<li class="k-widget-6__nav-item nav-item">
															<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_25be902eb9ac26">2</a>
														</li>
														<li class="k-widget-6__nav-item nav-item">
															<a class="nav-link" data-toggle="pill" href="#">3</a>
														</li>
														<li class="k-widget-6__nav-item nav-item">
															<a class="nav-link" data-toggle="pill" href="#">4</a>
														</li>
													</ul>

													<!-- end::Nav pills -->
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
									<div class="col-lg-12 col-xl-8 order-lg-2 order-xl-1">

										<!--begin::Portlet-->
										<div class="k-portlet k-portlet--height-fluid k-widget-17">
											<div class="k-portlet__head">
												<div class="k-portlet__head-label">
													<h3 class="k-portlet__head-title">Latest Orders</h3>
												</div>
												<div class="k-portlet__head-toolbar">
													<div class="k-portlet__head-toolbar-wrapper">
														<div class="dropdown dropdown-inline">
															<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																<i class="flaticon-more-1"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<ul class="k-nav">
																	<li class="k-nav__section k-nav__section--first">
																		<span class="k-nav__section-text">Export Tools</span>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-print"></i>
																			<span class="k-nav__link-text">Print</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-copy"></i>
																			<span class="k-nav__link-text">Copy</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-excel-o"></i>
																			<span class="k-nav__link-text">Excel</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-text-o"></i>
																			<span class="k-nav__link-text">CSV</span>
																		</a>
																	</li>
																	<li class="k-nav__item">
																		<a href="#" class="k-nav__link">
																			<i class="k-nav__link-icon la la-file-pdf-o"></i>
																			<span class="k-nav__link-text">PDF</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__body">
												<div class="k-widget-17">
													<div class="k-widget-17__item">
														<div class="k-widget-17__product">
															<div class="k-widget-17__thumb">
																<a href="#"><img src="${urlPublic}/assets/media/blog/7.jpg" class="k-widget-17__image" alt="" title="" /></a>
															</div>
															<div class="k-widget-17__product-desc">
																<a href="#">
																	<div class="k-widget-17__title">
																		Dark Blue Shoes - Limited Collection
																	</div>
																</a>
																<div class="k-widget-17__sku">
																	SKU: 08451345264
																</div>
															</div>
														</div>
														<div class="k-widget-17__prices">
															<div class="k-widget-17__unit">
																$38.00 <span>x</span> 2
															</div>
															<div class="k-widget-17__total">
																$76.00
															</div>
														</div>
													</div>
													<div class="k-widget-17__item">
														<div class="k-widget-17__product">
															<div class="k-widget-17__thumb">
																<a href="#"><img src="${urlPublic}/assets/media/blog/8.jpg" class="k-widget-17__image" alt="" title="" /></a>
															</div>
															<div class="k-widget-17__product-desc">
																<a href="#">
																	<div class="k-widget-17__title">
																		Converse Sneakers - Red, Green & White
																	</div>
																</a>
																<div class="k-widget-17__sku">
																	SKU: 08451345244
																</div>
															</div>
														</div>
														<div class="k-widget-17__prices">
															<div class="k-widget-17__unit">
																$92.00 <span>x</span> 1
															</div>
															<div class="k-widget-17__total">
																$92.00
															</div>
														</div>
													</div>
													<div class="k-widget-17__item">
														<div class="k-widget-17__product">
															<div class="k-widget-17__thumb">
																<a href="#"><img src="${urlPublic}/assets/media/blog/12.jpg" class="k-widget-17__image" alt="" title="" /></a>
															</div>
															<div class="k-widget-17__product-desc">
																<a href="#">
																	<div class="k-widget-17__title">
																		Merrell - Best Hiking Shoes
																	</div>
																</a>
																<div class="k-widget-17__sku">
																	SKU: 08451345285
																</div>
															</div>
														</div>
														<div class="k-widget-17__prices">
															<div class="k-widget-17__unit">
																$224.00 <span>x</span> 1
															</div>
															<div class="k-widget-17__total">
																$224.00
															</div>
														</div>
													</div>
													<div class="k-widget-17__item">
														<div class="k-widget-17__product">
															<div class="k-widget-17__thumb">
																<a href="#"><img src="${urlPublic}/assets/media/blog/11.jpg" class="k-widget-17__image" alt="" title="" /></a>
															</div>
															<div class="k-widget-17__product-desc">
																<a href="#">
																	<div class="k-widget-17__title">
																		Ray Ban - Green Sunglasses
																	</div>
																</a>
																<div class="k-widget-17__sku">
																	SKU: 08451345239
																</div>
															</div>
														</div>
														<div class="k-widget-17__prices">
															<div class="k-widget-17__unit">
																$109.00 <span>x</span> 3
															</div>
															<div class="k-widget-17__total">
																$327.00
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="k-portlet__foot k-portlet__foot--md">
												<div class="k-widget-17__foot">
													<div class="k-widget-17__foot-info"></div>
													<div class="k-widget-17__foot-toolbar">
														<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a>
														<a href="#" class="btn btn-brand btn-sm btn-upper btn-bold">Approve</a>
													</div>
												</div>
											</div>
										</div>

										<!--end::Portlet-->
									</div>
								</div>

								<!--end::Row-->

								<!--end::Dashboard 4-->
							</div>

							<!-- end:: Content -->
						</div>
					</div>

					<!-- begin:: Footer -->
					<div class="k-footer k-grid__item" id="k_footer">
						<div class="k-footer__copyright">
							2018&nbsp;&copy;&nbsp;<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Keenthemes</a>
						</div>
						<div class="k-footer__menu">
							<a href="http://keenthemes.com/keen" target="_blank" class="k-link">About</a>
							<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Team</a>
							<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Contact</a>
						</div>
					</div>

					<!-- end:: Footer -->
				</div>
			</div>
		</div>

		<!-- end:: Page -->

		<!-- begin:: Topbar Offcanvas Panels -->

		<!-- begin::Offcanvas Toolbar Search -->
		<div id="k_offcanvas_toolbar_search" class="k-offcanvas-panel">
			<div class="k-offcanvas-panel__head">
				<h3 class="k-offcanvas-panel__title">
					Search
				</h3>
				<a href="#" class="k-offcanvas-panel__close" id="k_offcanvas_toolbar_search_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-offcanvas-panel__body">
				<div class="k-search">
					<div class="k-search__form">
						<form action="#" method="get">
							<input type="text" name="query" class="form-control" placeholder="Type here...">
						</form>
					</div>
					<div class="k-search__result">
						<div class="k-search__section">
							Documents
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img k-search__item-img--file">
								<img src="${urlPublic}/assets/media/files/doc.svg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									AirPlus Requirements
								</a>
								<div class="k-search__item-desc">
									by Grog John
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img k-search__item-img--file">
								<img src="${urlPublic}/assets/media/files/pdf.svg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									TechNav Documentation
								</a>
								<div class="k-search__item-desc">
									by Mary Broun
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img k-search__item-img--file">
								<img src="${urlPublic}/assets/media/files/zip.svg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									All Framework Docs
								</a>
								<div class="k-search__item-desc">
									by Grog John
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img k-search__item-img--file">
								<img src="${urlPublic}/assets/media/files/xml.svg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									AirPlus Requirements
								</a>
								<div class="k-search__item-desc">
									by Grog John
								</div>
							</div>
						</div>
						<div class="k-search__section">
							Members
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img">
								<img src="${urlPublic}/assets/media/users/300_14.jpg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									Jimmy Curry
								</a>
								<div class="k-search__item-desc">
									Software Developer
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img">
								<img src="${urlPublic}/assets/media/users/300_20.jpg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									Milena Gibson
								</a>
								<div class="k-search__item-desc">
									UI Designer
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img">
								<img src="${urlPublic}/assets/media/users/300_21.jpg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									Stefan JohnStefan
								</a>
								<div class="k-search__item-desc">
									Marketing Manager
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-img">
								<img src="${urlPublic}/assets/media/users/300_2.jpg" alt="" />
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									Anna Strong
								</a>
								<div class="k-search__item-desc">
									Software Developer
								</div>
							</div>
						</div>
						<div class="k-search__section">
							Files
						</div>
						<div class="k-search__item">
							<div class="k-search__item-icon">
								<i class="flaticon2-box k-font-danger"></i>
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									2 New items submitted
								</a>
								<div class="k-search__item-desc">
									Marketing Manager
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-icon">
								<i class="flaticon-psd k-font-brand"></i>
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									79 PSD files generated
								</a>
								<div class="k-search__item-desc">
									by Grog John
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-icon">
								<i class="flaticon2-supermarket k-font-warning"></i>
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									$2900 worth products sold
								</a>
								<div class="k-search__item-desc">
									Total 234 items
								</div>
							</div>
						</div>
						<div class="k-search__item">
							<div class="k-search__item-icon">
								<i class="flaticon-safe-shield-protection k-font-info"></i>
							</div>
							<div class="k-search__item-wrapper">
								<a href="#" class="k-search__item-title">
									4 New items submitted
								</a>
								<div class="k-search__item-desc">
									Marketing Manager
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end::Offcanvas Toolbar Search -->

		<!-- begin::Offcanvas Toolbar Notifications -->
		<div id="k_offcanvas_toolbar_notifications" class="k-offcanvas-panel">
			<div class="k-offcanvas-panel__head">
				<h3 class="k-offcanvas-panel__title">
					Notifications
					<small>24 New</small>
				</h3>
				<a href="#" class="k-offcanvas-panel__close" id="k_offcanvas_toolbar_notifications_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-offcanvas-panel__body">
				<div class="k-notification-v2">
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon-bell k-font-focus"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								5 new user generated report
							</div>
							<div class="k-notification-v2__item-desc">
								Reports based on sales
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon2-box k-font-danger"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								2 new items submited
							</div>
							<div class="k-notification-v2__item-desc">
								by Grog John
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon-psd k-font-brand"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								79 PSD files generated
							</div>
							<div class="k-notification-v2__item-desc">
								Reports based on sales
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon2-supermarket k-font-warning"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								$2900 worth producucts sold
							</div>
							<div class="k-notification-v2__item-desc">
								Total 234 items
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon-paper-plane-1 k-font-accent"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								4.5h-avarage response time
							</div>
							<div class="k-notification-v2__item-desc">
								Fostest is Barry
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon k-font-danger">
							<i class="flaticon-safe-shield-protection"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								3 Defence alerts
							</div>
							<div class="k-notification-v2__item-desc">
								40% less alerts thar last week
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon k-font-brand">
							<i class="flaticon-notepad"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								Avarage 4 blog posts per author
							</div>
							<div class="k-notification-v2__item-desc">
								Most posted 12 time
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon k-font-warning">
							<i class="flaticon-users-1"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								16 authors joined last week
							</div>
							<div class="k-notification-v2__item-desc">
								9 photodrapehrs, 7 designer
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon2-box k-font-info"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								2 new items have been submited
							</div>
							<div class="k-notification-v2__item-desc">
								by Grog John
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon k-font-accent">
							<i class="flaticon2-download"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								2.8 GB-total downloads size
							</div>
							<div class="k-notification-v2__item-desc">
								Mostly PSD end AL concepts
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon2-supermarket k-font-danger"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								$2900 worth producucts sold
							</div>
							<div class="k-notification-v2__item-desc">
								Total 234 items
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon-bell k-font-brand"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								7 new user generated report
							</div>
							<div class="k-notification-v2__item-desc">
								Reports based on sales
							</div>
						</div>
					</a>
					<a href="#" class="k-notification-v2__item">
						<div class="k-notification-v2__item-icon">
							<i class="flaticon-paper-plane-1 k-font-accent"></i>
						</div>
						<div class="k-notification-v2__item-wrapper">
							<div class="k-notification-v2__item-title">
								4.5h-avarage response time
							</div>
							<div class="k-notification-v2__item-desc">
								Fostest is Barry
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>

		<!-- end::Offcanvas Toolbar Notifications -->

		<!-- begin::Offcanvas Toolbar Quick Actions -->
		<div id="k_offcanvas_toolbar_quick_actions" class="k-offcanvas-panel">
			<div class="k-offcanvas-panel__head">
				<h3 class="k-offcanvas-panel__title">
					Quick Actions
				</h3>
				<a href="#" class="k-offcanvas-panel__close" id="k_offcanvas_toolbar_quick_actions_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-offcanvas-panel__body">
				<div class="k-grid-nav-v2">
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon2-box"></i></div>
						<div class="k-grid-nav-v2__item-title">Orders</div>
					</a>
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon-download-1"></i></div>
						<div class="k-grid-nav-v2__item-title">Uploades</div>
					</a>
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon2-supermarket"></i></div>
						<div class="k-grid-nav-v2__item-title">Products</div>
					</a>
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon2-avatar"></i></div>
						<div class="k-grid-nav-v2__item-title">Customers</div>
					</a>
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon2-list"></i></div>
						<div class="k-grid-nav-v2__item-title">Blog Posts</div>
					</a>
					<a href="#" class="k-grid-nav-v2__item">
						<div class="k-grid-nav-v2__item-icon"><i class="flaticon2-settings"></i></div>
						<div class="k-grid-nav-v2__item-title">Settings</div>
					</a>
				</div>
			</div>
		</div>

		<!-- end::Offcanvas Toolbar Quick Actions -->

		<!-- begin::Offcanvas Toolbar Profile -->
		<div id="k_offcanvas_toolbar_profile" class="k-offcanvas-panel">
			<div class="k-offcanvas-panel__head">
				<h3 class="k-offcanvas-panel__title">
					Profile
				</h3>
				<a href="#" class="k-offcanvas-panel__close" id="k_offcanvas_toolbar_profile_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-offcanvas-panel__body">
				<div class="k-user-card-v3 k-margin-b-30">
					<div class="k-user-card-v3__avatar">
						<img src="${urlPublic}/assets/media/users/300_21.jpg" alt="" />
					</div>
					<div class="k-user-card-v3__detalis">
						<a href="#" class="k-user-card-v3__name">
							James Jones
						</a>
						<div class="k-user-card-v3__desc">
							Application Developer
						</div>
						<div class="k-user-card-v3__info">
							<a href="#" class="k-user-card-v3__item">
								<i class="flaticon-email-black-circular-button k-font-brand"></i>
								<span class="k-user-card-v3__tag">jm@softplus.com</span>
							</a>
							<a href="#" class="k-user-card-v3__item">
								<i class="flaticon-twitter-logo-button k-font-accent"></i>
								<span class="k-user-card-v3__tag">@jmdev</span>
							</a>
						</div>
					</div>
				</div>
				<div class="k-offcanvas-panel__section k-margin-t-50">
					Sales Stats
				</div>
				<div class="k-widget-1">
					<div class="k-widget-1__items">
						<div class="k-widget-1__item">
							<div class="k-widget-1__item-info">
								<a href="#">
									<div class="k-widget-1__item-title">HTML 5 Templates</div>
								</a>
								<div class="k-widget-1__item-desc">Font-end,Admin &amp; Email</div>
							</div>
							<div class="k-widget-1__item-stats">
								<div class="k-widget-1__item-value">+79%</div>
								<div class="k-widget-1__item-progress">
									<div class="progress">
										<div class="progress-bar bg-danger" role="progressbar" style="width: 79%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="k-widget-1__item">
							<div class="k-widget-1__item-info">
								<a href="#">
									<div class="k-widget-1__item-title">Wordpress Themes</div>
								</a>
								<div class="k-widget-1__item-desc">eCommerce Website, Plugin</div>
							</div>
							<div class="k-widget-1__item-stats">
								<div class="k-widget-1__item-value">+21%</div>
								<div class="k-widget-1__item-progress">
									<div class="progress">
										<div class="progress-bar bg-brand" role="progressbar" style="width: 60%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="k-widget-1__item">
							<div class="k-widget-1__item-info">
								<a href="#">
									<div class="k-widget-1__item-title">eCommerce Websites</div>
								</a>
								<div class="k-widget-1__item-desc">Shops, Fasion wep sites &amp; atc</div>
							</div>
							<div class="k-widget-1__item-stats">
								<div class="k-widget-1__item-value">-16%</div>
								<div class="k-widget-1__item-progress">
									<div class="progress">
										<div class="progress-bar  bg-success" role="progressbar" style="width: 80%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="k-widget-1__item">
							<div class="k-widget-1__item-info">
								<a href="#">
									<div class="k-widget-1__item-title">UI/UX Design</div>
								</a>
								<div class="k-widget-1__item-desc">Evrything you ever imagine</div>
							</div>
							<div class="k-widget-1__item-stats">
								<div class="k-widget-1__item-value">+4%</div>
								<div class="k-widget-1__item-progress">
									<div class="progress">
										<div class="progress-bar bg-focus" role="progressbar" style="width: 90%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="k-offcanvas-panel__section k-margin-t-50">
					Top Products
				</div>
				<div class="k-widget-4">
					<div class="k-widget-4__items">
						<div class="k-widget-4__item">
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-section">
									<div class="k-widget-4__item-pic">
										<img class="" src="${urlPublic}/assets/media/product-logos/logo1.png" alt="">
									</div>
									<div class="k-widget-4__item-info">
										<a href="#">
											<div class="k-widget-4__item-username">Circle Desige</div>
										</a>
										<div class="k-widget-4__item-desc">UI/UX, Animation, Design</div>
									</div>
								</div>
							</div>
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-price">
									<span class="k-widget-4__item-badge">$</span>
									<span class="k-widget-4__item-number">2,830</span>
								</div>
							</div>
						</div>
						<div class="k-widget-4__item">
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-section">
									<div class="k-widget-4__item-pic">
										<img class="" src="${urlPublic}/assets/media/product-logos/logo2.png" alt="">
									</div>
									<div class="k-widget-4__item-info">
										<a href="#">
											<div class="k-widget-4__item-username">Clip Code</div>
										</a>
										<div class="k-widget-4__item-desc">PHP, NET, Python, Ruby</div>
									</div>
								</div>
							</div>
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-price">
									<span class="k-widget-4__item-badge">$</span>
									<span class="k-widget-4__item-number">4,975</span>
								</div>
							</div>
						</div>
						<div class="k-widget-4__item">
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-section">
									<div class="k-widget-4__item-pic">
										<img class="" src="${urlPublic}/assets/media/product-logos/logo3.png" alt="">
									</div>
									<div class="k-widget-4__item-info">
										<a href="#">
											<div class="k-widget-4__item-username">JS-Nijas</div>
										</a>
										<div class="k-widget-4__item-desc">jQuery, AngularJS, Recct</div>
									</div>
								</div>
							</div>
							<div class="k-widget-4__item-content">
								<div class="k-widget-4__item-price">
									<span class="k-widget-4__item-badge">$</span>
									<span class="k-widget-4__item-number">3.594</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="k-margin-t-40">
					<button type="button" class="btn btn-brand btn-font-sm btn-upper btn-bold">full profile</button>
				</div>
			</div>
		</div>

		<!-- end::Offcanvas Toolbar Profile -->

		<!-- end:: Topbar Offcanvas Panels -->

		<!-- begin:: Aside -->
		<div class="k-aside  k-aside--fixed " id="k_aside">
			<div class="k-aside__head">
				<h3 class="k-aside__title">
					Dashboard
				</h3>
				<a href="#" class="k-aside__close" id="k_aside_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-aside__body">

				<!-- begin:: Aside Menu -->
				<div class="k-aside-menu-wrapper" id="k_aside_menu_wrapper">
					<div id="k_aside_menu" class="k-aside-menu " data-kmenu-vertical="1" data-kmenu-scroll="1">
						<ul class="k-menu__nav ">
							<li class="k-menu__section k-menu__section--first">
								<h4 class="k-menu__section-text">My Actions</h4>
								<i class="k-menu__section-icon flaticon-more-v2"></i>
							</li>
							<li class="k-menu__item  k-menu__item--active" aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Vendors To Approve</span></a></li>
							<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Pending Vendors</span></a></li>
							<li class="k-menu__item  k-menu__item--submenu" aria-haspopup="true" data-kmenu-submenu-toggle="hover"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Active Vendors</span><i class="k-menu__ver-arrow la la-angle-right"></i></a>
								<div class="k-menu__submenu "><span class="k-menu__arrow"></span>
									<ul class="k-menu__subnav">
										<li class="k-menu__item  k-menu__item--parent" aria-haspopup="true"><span class="k-menu__link"><span class="k-menu__link-text">Active Vendors</span></span></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Vendors Dashboard</span></a></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Vendors Revenue</span></a></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Sales Reports</span></a></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Transactions</span></a></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Statements</span></a></li>
									</ul>
								</div>
							</li>
							<li class="k-menu__section ">
								<h4 class="k-menu__section-text">Vendor Reports</h4>
								<i class="k-menu__section-icon flaticon-more-v2"></i>
							</li>
							<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Statements</span></a></li>
							<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><span class="k-menu__link-text">Transactions</span></a></li>
							<li class="k-menu__item  k-menu__item--submenu" aria-haspopup="true" data-kmenu-submenu-toggle="hover"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Archive</span><i class="k-menu__ver-arrow la la-angle-right"></i></a>
								<div class="k-menu__submenu "><span class="k-menu__arrow"></span>
									<ul class="k-menu__subnav">
										<li class="k-menu__item  k-menu__item--parent" aria-haspopup="true"><span class="k-menu__link"><span class="k-menu__link-text">Archive</span></span></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Base</span></a></li>
										<li class="k-menu__item " aria-haspopup="true"><a href="#" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Draggable</span></a></li>
									</ul>
								</div>
							</li>
							<li class="k-menu__item " aria-haspopup="true"><a href="javascript:;" class="k-menu__link "><span class="k-menu__link-text">Invoices</span></a></li>
						</ul>
					</div>
				</div>

				<!-- end:: Aside Menu -->
			</div>
		</div>

		<!-- end:: Aside -->

		<!-- begin::Quick Panel -->
		<div id="k_quick_panel" class="k-quick-panel">
			<div class="k-quick-panel__nav">
				<ul class="nav nav-pills" role="tablist">
					<li class="nav-item active">
						<a class="nav-link active" data-toggle="tab" href="#k_quick_panel_tab_notifications" role="tab">Notifications</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#k_quick_panel_tab_actions" role="tab">Actions</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#k_quick_panel_tab_settings" role="tab">Settings</a>
					</li>
				</ul>
				<button class="k-quick-panel__close" id="k_quick_panel_close_btn"><i class="la la-close"></i></button>
			</div>
			<div class="k-quick-panel__content">
				<div class="tab-content">
					<div class="tab-pane fade show k-scroll active" id="k_quick_panel_tab_notifications" role="tabpanel">

						<!--Begin::Timeline -->
						<div class="k-timeline">

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--success">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon-feed k-font-success"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">02:30 PM</span>
								</div>
								<a href="" class="k-timeline__item-text">
									KeenThemes created new layout whith tens of new options for Keen Admin panel
								</a>
								<div class="k-timeline__item-info">
									HTML,CSS,VueJS
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--danger">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon-safe-shield-protection k-font-danger"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">01:20 AM</span>
								</div>
								<a href="" class="k-timeline__item-text">
									New secyrity alert by Firewall & order to take aktion on User Preferences
								</a>
								<div class="k-timeline__item-info">
									Security, Fieewall
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--brand">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon2-box k-font-brand"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">Yestardey</span>
								</div>
								<a href="" class="k-timeline__item-text">
									FlyMore design mock-ups been uploadet by designers Bob, Naomi, Richard
								</a>
								<div class="k-timeline__item-info">
									PSD, Sketch, AJ
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--warning">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon-pie-chart-1 k-font-warning"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">Aug 13,2018</span>
								</div>
								<a href="" class="k-timeline__item-text">
									Meeting with Ken Digital Corp ot Unit14, 3 Edigor Buildings, George Street, Loondon<br> England, BA12FJ
								</a>
								<div class="k-timeline__item-info">
									Meeting, Customer
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--info">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon-notepad k-font-info"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">May 09, 2018</span>
								</div>
								<a href="" class="k-timeline__item-text">
									KeenThemes created new layout whith tens of new options for Keen Admin panel
								</a>
								<div class="k-timeline__item-info">
									HTML,CSS,VueJS
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="k-timeline__item k-timeline__item--accent">
								<div class="k-timeline__item-section">
									<div class="k-timeline__item-section-border">
										<div class="k-timeline__item-section-icon">
											<i class="flaticon-bell k-font-accent"></i>
										</div>
									</div>
									<span class="k-timeline__item-datetime">01:20 AM</span>
								</div>
								<a href="" class="k-timeline__item-text">
									New secyrity alert by Firewall & order to take aktion on User Preferences
								</a>
								<div class="k-timeline__item-info">
									Security, Fieewall
								</div>
							</div>

							<!--End::Item -->
						</div>

						<!--End::Timeline -->
					</div>
					<div class="tab-pane fade k-scroll" id="k_quick_panel_tab_actions" role="tabpanel">

						<!--begin::Portlet-->
						<div class="k-portlet k-portlet--solid-success">
							<div class="k-portlet__head">
								<div class="k-portlet__head-label">
									<span class="k-portlet__head-icon k-hide"><i class="flaticon-stopwatch"></i></span>
									<h3 class="k-portlet__head-title">Recent Bills</h3>
								</div>
								<div class="k-portlet__head-toolbar">
									<div class="k-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-portlet__body">
								<div class="k-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="k-portlet__foot k-portlet__foot--sm k-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="k-portlet k-portlet--solid-focus">
							<div class="k-portlet__head">
								<div class="k-portlet__head-label">
									<span class="k-portlet__head-icon k-hide"><i class="flaticon-stopwatch"></i></span>
									<h3 class="k-portlet__head-title">Latest Orders</h3>
								</div>
								<div class="k-portlet__head-toolbar">
									<div class="k-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-portlet__body">
								<div class="k-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="k-portlet__foot k-portlet__foot--sm k-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="k-portlet k-portlet--solid-info">
							<div class="k-portlet__head">
								<div class="k-portlet__head-label">
									<h3 class="k-portlet__head-title">Latest Invoices</h3>
								</div>
								<div class="k-portlet__head-toolbar">
									<div class="k-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-portlet__body">
								<div class="k-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="k-portlet__foot k-portlet__foot--sm k-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="k-portlet k-portlet--solid-warning">
							<div class="k-portlet__head">
								<div class="k-portlet__head-label">
									<h3 class="k-portlet__head-title">New Comments</h3>
								</div>
								<div class="k-portlet__head-toolbar">
									<div class="k-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-portlet__body">
								<div class="k-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="k-portlet__foot k-portlet__foot--sm k-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="k-portlet k-portlet--solid-brand">
							<div class="k-portlet__head">
								<div class="k-portlet__head-label">
									<h3 class="k-portlet__head-title">Recent Posts</h3>
								</div>
								<div class="k-portlet__head-toolbar">
									<div class="k-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-portlet__body">
								<div class="k-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="k-portlet__foot k-portlet__foot--sm k-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->
					</div>
					<div class="tab-pane fade k-scroll" id="k_quick_panel_tab_settings" role="tabpanel">
						<form class="k-form">
							<div class="k-heading k-heading--space-sm">Notifications</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable notifications:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_1">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable audit log:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm">
										<label>
											<input type="checkbox" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Notify on new orders:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="k-separator k-separator--space-md k-separator--border-dashed"></div>
							<div class="k-heading k-heading--space-sm">Orders</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable order tracking:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable orders reports:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--danger">
										<label>
											<input type="checkbox" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Allow order status auto update:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_4">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="k-separator k-separator--space-md k-separator--border-dashed"></div>
							<div class="k-heading k-heading--space-sm">Customers</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable customer singup:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable customers reporting:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--success">
										<label>
											<input type="checkbox" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Notifiy on new customer registration:</label>
								<div class="col-4 k-align-right">
									<span class="k-switch k-switch--sm k-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_6">
											<span></span>
										</label>
									</span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- end::Quick Panel -->

		<!-- begin::Scrolltop -->
		<div id="k_scrolltop" class="k-scrolltop">
			<i class="la la-arrow-up"></i>
		</div>

		<!-- end::Scrolltop -->

		<!-- begin::Sticky Toolbar -->
		<!-- 
		<ul class="k-sticky-toolbar" style="margin-top: 30px;">
			<li class="k-sticky-toolbar__item k-sticky-toolbar__item--demo-toggle" id="k_demo_panel_toggle" data-toggle="k-tooltip" title="Check out more demos" data-placement="right">
				<a href="#" class="">Demos</a>
			</li>
			<li class="k-sticky-toolbar__item k-sticky-toolbar__item--builder" data-toggle="k-tooltip" title="Layout Builder" data-placement="left">
				<a href="https://keenthemes.com/keen/preview/demo5/builder.html" target="_blank"><i class="flaticon2-box"></i></a>
			</li>
			<li class="k-sticky-toolbar__item k-sticky-toolbar__item--docs" data-toggle="k-tooltip" title="Documentation" data-placement="left">
				<a href="https://keenthemes.com/keen/?page=docs" target="_blank"><i class="flaticon2-file"></i></a>
			</li>
		</ul>-->
		<!-- end::Sticky Toolbar -->

		<!-- begin::Demo Panel -->
		<div id="k_demo_panel" class="k-demo-panel">
			<div class="k-demo-panel__head">
				<h3 class="k-demo-panel__title">
					Select A Demo

					<!--<small>5</small>-->
				</h3>
				<a href="#" class="k-demo-panel__close" id="k_demo_panel_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="k-demo-panel__body">
				<div class="k-demo-panel__item ">
					<div class="k-demo-panel__item-title">
						Default
					</div>
					<div class="k-demo-panel__item-preview">
						<img src="${urlPublic}/assets/media/demos-mini/default.png" alt="" />
						<div class="k-demo-panel__item-preview-overlay">
							<a href="../default/index.html" class="btn btn-brand btn-elevate" target="_blank">Preview</a>
						</div>
					</div>
				</div>
				<div class="k-demo-panel__item ">
					<div class="k-demo-panel__item-title">
						Demo 2
					</div>
					<div class="k-demo-panel__item-preview">
						<img src="${urlPublic}/assets/media/demos-mini/demo2.png" alt="" />
						<div class="k-demo-panel__item-preview-overlay">
							<a href="../demo2/index.html" class="btn btn-brand btn-elevate" target="_blank">Preview</a>
						</div>
					</div>
				</div>
				<div class="k-demo-panel__item ">
					<div class="k-demo-panel__item-title">
						Demo 3
					</div>
					<div class="k-demo-panel__item-preview">
						<img src="${urlPublic}/assets/media/demos-mini/demo3.png" alt="" />
						<div class="k-demo-panel__item-preview-overlay">
							<a href="../demo3/index.html" class="btn btn-brand btn-elevate" target="_blank">Preview</a>
						</div>
					</div>
				</div>
				<div class="k-demo-panel__item ">
					<div class="k-demo-panel__item-title">
						Demo 4
					</div>
					<div class="k-demo-panel__item-preview">
						<img src="${urlPublic}/assets/media/demos-mini/demo4.png" alt="" />
						<div class="k-demo-panel__item-preview-overlay">
							<a href="../demo4/index.html" class="btn btn-brand btn-elevate" target="_blank">Preview</a>
						</div>
					</div>
				</div>
				<div class="k-demo-panel__item k-demo-panel__item--active">
					<div class="k-demo-panel__item-title">
						Demo 5
					</div>
					<div class="k-demo-panel__item-preview">
						<img src="${urlPublic}/assets/media/demos-mini/demo5.png" alt="" />
						<div class="k-demo-panel__item-preview-overlay">
							<a href="../demo5/index.html" class="btn btn-brand btn-elevate" target="_blank">Preview</a>
						</div>
					</div>
				</div>
				<a href="https://themes.getbootstrap.com/product/keen-the-ultimate-bootstrap-admin-theme/" target="_blank" class="k-demo-panel__purchase btn btn-brand btn-elevate btn-bold btn-upper">
					Buy Keen Now!
				</a>
			</div>
		</div>

		<!-- end::Demo Panel -->

		<!-- begin::Global Config -->
		<script>
			var KAppOptions = {
				"colors": {
					"state": {
						"brand": "#1cac81",
						"metal": "#c4c5d6",
						"light": "#ffffff",
						"accent": "#00c5dc",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995",
						"focus": "#9816f4"
					},
					"base": {
						"label": ["#b9bdc1", "#aeb2b7", "#414b4c", "#343d3e"],
						"shape": ["#eef4f3", "#e0e9e6", "#80c3af", "#41675c"]
					}
				}
			};
		</script>

		<!-- end::Global Config -->

		<!--begin:: Global Mandatory Vendors -->
		<script src="${urlPublic}/assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		<script src="${urlPublic}/assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/theme/framework/vendors/bootstrap-datepicker/init.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/theme/framework/vendors/bootstrap-timepicker/init.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/inputmask/dist/inputmask/inputmask.phone.extensions.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/theme/framework/vendors/bootstrap-markdown/init.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/theme/framework/vendors/jquery-validation/init.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/custom/theme/framework/vendors/sweetalert2/init.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Bundle -->
		<script src="${urlPublic}/assets/demo/demo5/base/scripts.bundle.js" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Vendors -->
		<script src="${urlPublic}/assets/vendors/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>

		<!--end::Page Vendors -->

		<!--begin::Page Scripts -->
		<script src="${urlPublic}/assets/app/scripts/custom/dashboard.js" type="text/javascript"></script>

		<!--end::Page Scripts -->

		<!--begin::Global App Bundle -->
		<script src="${urlPublic}/assets/app/scripts/bundle/app.bundle.js" type="text/javascript"></script>

		<!--end::Global App Bundle -->
	</body>

	<!-- end::Body -->
</html>