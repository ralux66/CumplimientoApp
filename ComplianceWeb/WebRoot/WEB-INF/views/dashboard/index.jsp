<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>

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
		<meta charset="utf-8" />
	<spring:url value="/resources/default/dist/default/" var="urlPublic" />
		<title>Keen | Dashboard</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />

		<!--begin::Web font -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
			WebFont.load({
                google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
                active: function() {
                    sessionStorage.fonts = true;
                }
            });
        </script>

		<!--end::Web font -->

		<!--begin::Page Vendors Styles -->
		<link href="${urlPublic}/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/vendors/custom/fullcalendar/fullcalendar.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Page Vendors Styles -->

		<!--begin::Global Theme Styles -->
		<link href="${urlPublic}/assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/vendors/base/vendors.bundle.rtl.css" rel="stylesheet" type="text/css" />-->
		<link href="${urlPublic}/assets/demo/demo3/base/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/demo/demo3/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Global Theme Styles -->
		<link rel="shortcut icon" href="${urlPublic}/assets/media/logos/favicon.ico" />
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="k-page--loading-enabled k-page--loading k-page--fixed k-header--fixed k-header--minimize-menu k-header-mobile--fixed">

		<!-- begin::Page loader -->

		<!-- end::Page Loader -->

		<!-- begin:: Page -->

		<!-- begin:: Header Mobile -->
		<div id="k_header_mobile" class="k-header-mobile  k-header-mobile--fixed ">
			<div class="k-header-mobile__logo">
				<a href="index.html">
					<img alt="Logo" src="${urlPublic}/assets/media/logos/logo-5.png" />
				</a>
			</div>
			<div class="k-header-mobile__toolbar">
				<button class="k-header-mobile__toolbar-toggler" id="k_header_mobile_toggler"><span></span></button>
				<button class="k-header-mobile__toolbar-topbar-toggler" id="k_header_mobile_topbar_toggler"><i class="flaticon-more-1"></i></button>
			</div>
		</div>

		<!-- end:: Header Mobile -->
		<div class="k-grid k-grid--hor k-grid--root">
			<div class="k-grid__item k-grid__item--fluid k-grid k-grid--ver k-page">
				<div class="k-grid__item k-grid__item--fluid k-grid k-grid--hor k-wrapper " id="k_wrapper">

					<!-- begin:: Header -->
					<div id="k_header" class="k-header k-grid__item  k-header--fixed " data-kheader-minimize="on" style="background-image: url(${urlPublic}/assets/demo/demo3/media/layout/header-bg.jpg)">
						<div class="k-header__top">
							<div class="k-container">

								<!-- begin:: Brand -->
								<div class="k-header__brand   k-grid__item" id="k_header_brand">
									<div class="k-header__brand-logo">
										<a href="index.html">
											<img alt="Logo" src="${urlPublic}/assets/media/logos/logo-7.png" class="k-header__brand-logo-default" />
											<img alt="Logo" src="${urlPublic}/assets/media/logos/logo-5.png" class="k-header__brand-logo-sticky" />
										</a>
									</div>
								</div>

								<!-- end:: Brand -->

								<!-- begin:: Header Topbar -->
								<div class="k-header__topbar">

									<!--begin: Search -->
									<div class="k-header__topbar-item k-header__topbar-item--search">
										<div class="k-input-icon k-input-icon--right">
											<input type="text" class="form-control" placeholder="Search...">
											<span class="k-input-icon__icon k-input-icon__icon--right">
												<span><i class="la la-search"></i></span>
											</span>
										</div>
									</div>

									<!--end: Search -->

									<!--begin: Quick actions -->
									<div class="k-header__topbar-item dropdown">
										<div class="k-header__topbar-item-wrapper" data-toggle="dropdown" data-offset="20px 10px">
											<span class="k-header__topbar-icon"><i class="flaticon-layers"></i></span>
										</div>
										<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-xl">
											<div class="k-head k-head--sm k-head--skin-light">
												<h3 class="k-head__title">Quick Actions</h3>
											</div>
											<div class="k-grid-nav">
												<a href="#" class="k-grid-nav__item">
													<div class="k-grid-nav__item-icon"><i class="flaticon-computer"></i></div>
													<div class="k-grid-nav__item-title">Customers</div>
													<div class="k-grid-nav__item-desc">per department</div>
												</a>
												<a href="#" class="k-grid-nav__item">
													<div class="k-grid-nav__item-icon"><i class="flaticon-business"></i></div>
													<div class="k-grid-nav__item-title">Orders</div>
													<div class="k-grid-nav__item-desc">latest orders</div>
												</a>
												<a href="#" class="k-grid-nav__item">
													<div class="k-grid-nav__item-icon"><i class="flaticon-line-graph"></i></div>
													<div class="k-grid-nav__item-title">Reports</div>
													<div class="k-grid-nav__item-desc">finance & accounting</div>
												</a>
												<a href="#" class="k-grid-nav__item">
													<div class="k-grid-nav__item-icon"><i class="flaticon-settings"></i></div>
													<div class="k-grid-nav__item-title">Administration</div>
													<div class="k-grid-nav__item-desc">settings and logs</div>
												</a>
											</div>
										</div>
									</div>

									<!--end: Quick actions -->

									<!--begin: Quick panel toggler -->
									<div class="k-header__topbar-item" data-toggle="k-tooltip" title="Quick panel" data-placement="top">
										<div class="k-header__topbar-item-wrapper">
											<span class="k-header__topbar-icon" id="k_quick_panel_toggler_btn"><i class="flaticon-grid-menu"></i></span>
										</div>
									</div>

									<!--end: Quick panel toggler -->

									<!--begin: Notifications -->
									<div class="k-header__topbar-item dropdown">
										<div class="k-header__topbar-item-wrapper" data-toggle="dropdown" data-offset="20px 10px">
											<span class="k-header__topbar-icon"><i class="flaticon-alarm"></i></span>
											<span class="k-badge k-badge--danger">3</span>
										</div>
										<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-xl">
											<div class="k-head k-head--sm k-head--skin-light">
												<h3 class="k-head__title">User Notifications</h3>
											</div>
											<div class="k-notification k-margin-t-10 k-margin-b-10 k-scroll" data-scroll="true" data-height="270">
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-time-2"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New order has been received
														</div>
														<div class="k-notification__item-time">
															2 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-upload-1"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New customer is registered
														</div>
														<div class="k-notification__item-time">
															3 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-interface-8"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															Application has been approved
														</div>
														<div class="k-notification__item-time">
															3 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-file"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New file has been uploaded
														</div>
														<div class="k-notification__item-time">
															5 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-user"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New user feedback received
														</div>
														<div class="k-notification__item-time">
															8 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-cogwheel"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															System reboot has been successfully completed
														</div>
														<div class="k-notification__item-time">
															12 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-light"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New order has been placed
														</div>
														<div class="k-notification__item-time">
															15 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item k-notification__item--read">
													<div class="k-notification__item-icon">
														<i class="flaticon-interface-2"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															Company meeting canceled
														</div>
														<div class="k-notification__item-time">
															19 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-diagram"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New report has been received
														</div>
														<div class="k-notification__item-time">
															23 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-pie-chart"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															Finance report has been generated
														</div>
														<div class="k-notification__item-time">
															25 hrs ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-speech-bubble-1"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New customer comment recieved
														</div>
														<div class="k-notification__item-time">
															2 days ago
														</div>
													</div>
												</a>
												<a href="#" class="k-notification__item">
													<div class="k-notification__item-icon">
														<i class="flaticon-exclamation-2"></i>
													</div>
													<div class="k-notification__item-details">
														<div class="k-notification__item-title">
															New customer is registered
														</div>
														<div class="k-notification__item-time">
															3 days ago
														</div>
													</div>
												</a>
											</div>
										</div>
									</div>

									<!--end: Notifications -->

									<!--begin: Language bar -->
									<div class="k-header__topbar-item k-header__topbar-item--langs">
										<div class="k-header__topbar-item-wrapper" data-toggle="dropdown" data-offset="20px 10px">
											<span class="k-header__topbar-icon">
												<img class="" src="${urlPublic}/assets/media/flags/020-flag.svg" alt="" />
											</span>
										</div>
										<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim">
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
									<div class="k-header__topbar-item k-header__topbar-item--user">
										<div class="k-header__topbar-item-wrapper" data-toggle="dropdown" data-offset="20px 10px">
											<img alt="Pic" src="${urlPublic}/assets/media/users/300_21.jpg" />
										</div>
										<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-md">
											<div class="k-user-card k-user-card--skin-light k-margin-b-50 k-margin-b-20-tablet-and-mobile">
												<div class="k-user-card__wrapper">
													<div class="k-user-card__pic">
														<img alt="Pic" src="${urlPublic}/assets/media/users/300_21.jpg" />
													</div>
													<div class="k-user-card__details">
														<div class="k-user-card__name">Alex Stone</div>
														<div class="k-user-card__position">CTO, Loop Inc.</div>
													</div>
												</div>
											</div>
											<ul class="k-nav k-margin-b-10">
												<li class="k-nav__item">
													<a href="${urlPublic}/custom/user/profile-v1.html" class="k-nav__link">
														<span class="k-nav__link-icon"><i class="flaticon-profile"></i></span>
														<span class="k-nav__link-text">My Profile</span>
													</a>
												</li>
												<li class="k-nav__item">
													<a href="${urlPublic}/custom/user/profile-v1.html" class="k-nav__link">
														<span class="k-nav__link-icon"><i class="flaticon-signs"></i></span>
														<span class="k-nav__link-text">Tasks</span>
													</a>
												</li>
												<li class="k-nav__item">
													<a href="${urlPublic}/custom/user/profile-v1.html" class="k-nav__link">
														<span class="k-nav__link-icon"><i class="flaticon-mail-1"></i></span>
														<span class="k-nav__link-text">Messages</span>
													</a>
												</li>
												<li class="k-nav__item">
													<a href="${urlPublic}/custom/user/profile-v1.html" class="k-nav__link">
														<span class="k-nav__link-icon"><i class="flaticon-settings"></i></span>
														<span class="k-nav__link-text">Settings</span>
													</a>
												</li>
												<li class="k-nav__item k-nav__item--custom k-margin-t-15">
													<a href="${urlPublic}/custom/user/login-v1.html" target="_blank" class="btn btn-outline-metal btn-hover-brand btn-upper btn-font-dark btn-sm btn-bold">Sign Out</a>
												</li>
											</ul>
										</div>
									</div>

									<!--end: User bar -->
								</div>

								<!-- end:: Header Topbar -->
							</div>
						</div>
						<div class="k-header__bottom">
							<div class="k-container">

								<!-- begin: Header Menu -->
								<button class="k-header-menu-wrapper-close" id="k_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
								<div class="k-header-menu-wrapper" id="k_header_menu_wrapper">
									<div id="k_header_menu" class="k-header-menu k-header-menu-mobile ">
										<ul class="k-menu__nav ">
											<li class="k-menu__item  k-menu__item--open k-menu__item--here k-menu__item--submenu k-menu__item--rel k-menu__item--open k-menu__item--here" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Dashboard</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
												<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
													<ul class="k-menu__subnav">
														<li class="k-menu__item  k-menu__item--active " aria-haspopup="true"><a href="index.html" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Default Dashboard</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a href="${urlPublic}/dashboards/aside.html" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Aside Dashboard</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a href="${urlPublic}/dashboards/fluid.html" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--line"><span></span></i><span class="k-menu__link-text">Fluid Dashboard</span></a></li>
													</ul>
												</div>
											</li>
											<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Pages</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
												<div class="k-menu__submenu k-menu__submenu--classic k-menu__submenu--left">
													<ul class="k-menu__subnav">
														<li class="k-menu__item " aria-haspopup="true"><a href="javascript:;" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Create New Post</span></a></li>
														<li class="k-menu__item " aria-haspopup="true"><a href="javascript:;" class="k-menu__link "><i class="k-menu__link-bullet k-menu__link-bullet--dot"><span></span></i><span class="k-menu__link-text">Generate Reports</span><span class="k-menu__link-badge"><span class="k-badge k-badge--success">2</span></span></a></li>
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
											<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Reports</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
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
											<li class="k-menu__item  k-menu__item--submenu k-menu__item--rel" data-kmenu-submenu-toggle="click" aria-haspopup="true"><a href="#" class="k-menu__link k-menu__toggle"><span class="k-menu__link-text">Apps</span><i class="k-menu__hor-arrow la la-angle-down"></i><i class="k-menu__ver-arrow la la-angle-right"></i></a>
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
									<div class="k-header-toolbar">
										<a href="#" class="btn btn-wide btn-bold btn-pill btn-danger btn-upper">Purchase</a>
									</div>
								</div>

								<!-- end: Header Menu -->
							</div>
						</div>
					</div>

					<!-- end:: Header -->
					<div class="k-grid__item k-grid__item--fluid k-grid k-grid--ver k-grid--stretch">
						<div class="k-container k-content-wrapper  k-grid k-grid--ver">

							<!-- begin:: Content -->
							<div class="k-content	k-grid__item k-grid__item--fluid k-grid k-grid--hor">

								<!-- begin:: Content Head -->
								<div class="k-content__head	k-grid__item">
									<div class="k-content__head-main">
										<h3 class="k-content__head-title">Dashboard</h3>
										<div class="k-content__head-breadcrumbs">
											<a href="#" class="k-content__head-breadcrumb-home"><i class="flaticon-home-2"></i></a>
											<span class="k-content__head-breadcrumb-separator"></span>
											<a href="" class="k-content__head-breadcrumb-link">Dashboard</a>
											<span class="k-content__head-breadcrumb-separator"></span>
											<a href="" class="k-content__head-breadcrumb-link">Default Dashboard</a>

											<!-- <span class="k-content__head-breadcrumb-link k-content__head-breadcrumb-link--active">Active link</span> -->
										</div>
									</div>
									<div class="k-content__head-toolbar">
										<div class="k-content__head-toolbar-wrapper">
											<div class="dropdown dropdown-inline k-hide k-hidden" data-toggle="k-tooltip" title="Quick actions" data-placement="top">
												<button type="button" class="btn btn-sm btn-elevate btn-brand btn-bold btn-upper dropdown-toggle-" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													New
												</button>
												<div class="dropdown-menu dropdown-menu-right">
													<a class="dropdown-item" href="#"><i class="la la-plus"></i> New Report</a>
													<a class="dropdown-item" href="#"><i class="la la-user"></i> Add Customer</a>
													<a class="dropdown-item" href="#"><i class="la la-cloud-download"></i> New Download</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#"><i class="la la-cog"></i> Settings</a>
												</div>
											</div>&nbsp;
											<a href="#" class="btn btn-light btn-pill btn-elevate btn-font-brand  k-content__head-toolbar-daterange" id="k_dashboard_daterangepicker" data-toggle="k-tooltip" title="Select dashboard daterange" data-placement="top">
												<span class="k-opacity-7" id="k_dashboard_daterangepicker_title">Today</span>&nbsp;
												<span class="k-font-bold" id="k_dashboard_daterangepicker_date">Aug 16</span>
												<i class="flaticon-calendar-with-a-clock-time-tools k-padding-l-5 k-padding-r-0"></i>
											</a>
										</div>
									</div>
								</div>

								<!-- end:: Content Head -->

								<!-- begin:: Content Body -->
								<div class="k-content__body	k-grid__item k-grid__item--fluid">

									<!--begin::Row-->
									<div class="row">
										<div class="col-xl-6 col-xxl-4 order-xl-1">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid-half k-widget-10">
												<div class="k-portlet__body">
													<div class="k-widget-10__wrapper">
														<div class="k-widget-10__details">
															<div class="k-widget-10__title">Weekly Orders</div>
															<div class="k-widget-10__desc">122 Daily Avr</div>
														</div>
														<div class="k-widget-10__num">
															7,300
														</div>
													</div>
												</div>
												<div class="k-portlet__body k-portlet__body--fit">
													<div class="k-widget-10__chart">
														<canvas id="k_widget_mini_chart_2" height="100"></canvas>
													</div>
												</div>
											</div>

											<!--end::Portlet-->

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid-half k-widget-10">
												<div class="k-portlet__body">
													<div class="k-widget-10__wrapper">
														<div class="k-widget-10__details">
															<div class="k-widget-10__title">Sales Increase</div>
															<div class="k-widget-10__desc">92 Daily Avr</div>
														</div>
														<div class="k-widget-10__num">
															75%
														</div>
													</div>
												</div>
												<div class="k-portlet__body k-portlet__body--fit">
													<div class="k-widget-10__chart">
														<canvas id="k_widget_mini_chart_1" height="100"></canvas>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-1">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid-half k-widget-13">
												<div class="k-portlet__body">
													<div id="k-widget-slider-13-3" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
														<div class="k-slider__head">
															<div class="k-slider__label">Today's Schedule</div>
															<div class="k-slider__nav">
																<a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-13-3" role="button" data-slide="prev">
																	<i class="fa fa-angle-left"></i>
																</a>
																<a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-13-3" role="button" data-slide="next">
																	<i class="fa fa-angle-right"></i>
																</a>
															</div>
														</div>
														<div class="carousel-inner">
															<div class="carousel-item active k-slider__body">
																<div class="k-widget-13">
																	<div class="k-widget-13__body">
																		<a class="k-widget-13__title k-font-info k-font-hover-info" href="#">Octa Pre-Launch Meeting</a>
																		<div class="k-widget-13__desc k-widget-13__desc--xl">
																			9:20AM - 10:00AM
																		</div>
																	</div>
																	<div class="k-widget-13__foot">
																		<div class="k-widget-13__label">
																			<i class="fa fa-map-marker-alt k-font-warning"></i> 490 E Main St. Norwich CT...
																		</div>
																		<div class="k-widget-13__toolbar">
																			<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="carousel-item k-slider__body">
																<div class="k-widget-13">
																	<div class="k-widget-13__body">
																		<a class="k-widget-13__title k-font-danger k-font-hover-danger" href="#">UI/UX Design Updates</a>
																		<div class="k-widget-13__desc k-widget-13__desc--xl">
																			11:15AM - 12:30PM
																		</div>
																	</div>
																	<div class="k-widget-13__foot">
																		<div class="k-widget-13__label">
																			<i class="fa fa-map-marker-alt k-font-warning"></i> 246 R St. Manhattan NY...
																		</div>
																		<div class="k-widget-13__toolbar">
																			<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="carousel-item k-slider__body">
																<div class="k-widget-13">
																	<div class="k-widget-13__body">
																		<a class="k-widget-13__title k-font-success k-font-hover-success" href="#">Sales Report Summary Meet-up</a>
																		<div class="k-widget-13__desc k-widget-13__desc--xl">
																			4:30PM - 5:30PM
																		</div>
																	</div>
																	<div class="k-widget-13__foot">
																		<div class="k-widget-13__label">
																			<i class="fa fa-map-marker-alt k-font-warning"></i> 492 F Sub St. Norwich CT...
																		</div>
																		<div class="k-widget-13__toolbar">
																			<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a>
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
											<div class="k-portlet k-portlet--height-fluid-half k-widget-13">
												<div class="k-portlet__body">
													<div id="k-widget-slider-13-2" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
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
																				<div class="progress-bar" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
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
																				<div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
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
																				<div class="progress-bar" role="progressbar" style="width: 24%" aria-valuenow="24" aria-valuemin="0" aria-valuemax="100"></div>
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
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-1">

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
																<div class="progress-bar bg-brand" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
																<div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
																<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																<div class="progress-bar bg-warning" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
																<div class="progress-bar bg-dark" role="progressbar" style="width: 5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
														<div class="k-widget-18__item k-widget-18__item--brand">
															<div class="k-widget-18__legend"></div>
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
														<div class="k-widget-18__item k-widget-18__item--danger">
															<div class="k-widget-18__legend"></div>
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
														<div class="k-widget-18__item k-widget-18__item--success">
															<div class="k-widget-18__legend"></div>
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
														<div class="k-widget-18__item k-widget-18__item--warning">
															<div class="k-widget-18__legend"></div>
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
														<div class="k-widget-18__item k-widget-18__item--dark">
															<div class="k-widget-18__legend"></div>
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
														<div class="k-widget-18__item k-widget-18__item--info">
															<div class="k-widget-18__legend"></div>
															<div class="k-widget-18__desc">
																<a href="">
																	<div class="k-widget-18__title">
																		Dashboard System
																	</div>
																</a>
																<div class="k-widget-18__desc">
																	Angular, Oracle, Java
																</div>
															</div>
															<div class="k-widget-18__orders">
																<span>560</span> Orders
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-12 col-xxl-8 order-xl-2">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid-half k-widget-14">
												<div class="k-portlet__body">
													<div id="k-widget-slider-14-1" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
														<div class="k-slider__head">
															<div class="k-slider__label">New Products</div>
															<div class="k-slider__nav">
																<a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-14-1" role="button" data-slide="prev">
																	<i class="fa fa-angle-left"></i>
																</a>
																<a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-14-1" role="button" data-slide="next">
																	<i class="fa fa-angle-right"></i>
																</a>
															</div>
														</div>
														<div class="carousel-inner">
															<div class="carousel-item active">
																<div class="k-widget-14__body">
																	<div class="k-widget-14__product">
																		<div class="k-widget-14__thumb">
																			<a href="#"><img src="${urlPublic}/assets/media/blog/1.jpg" class="k-widget-14__image--landscape" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-14__content">
																			<a href="#">
																				<h3 class="k-widget-14__title">Active Smartwatch</h3>
																			</a>
																			<div class="k-widget-14__desc">
																				Beautifully designed watch that helps you track your fitness and diet – while keeping you motivated!
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-14__data">
																		<div class="k-widget-14__info k-widget-14__info--success">
																			<div class="k-widget-14__info-title">246</div>
																			<div class="k-widget-14__desc">Purchases</div>
																		</div>
																		<div class="k-widget-14__info k-widget-14__info--warning">
																			<div class="k-widget-14__info-title">37</div>
																			<div class="k-widget-14__desc">Reviews</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-14__foot">
																	<div class="k-widget-14__foot-info">
																		<div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold">
																			24 Nov, 2018
																		</div>
																		<div class="k-widget-14__foot-desc">Date of Release</div>
																	</div>
																	<div class="k-widget-14__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a>
																	</div>
																</div>
															</div>
															<div class="carousel-item">
																<div class="k-widget-14__body">
																	<div class="k-widget-14__product">
																		<div class="k-widget-14__thumb">
																			<a href="#"><img src="${urlPublic}/assets/media/blog/2.jpg" class="k-widget-14__image--landscape" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-14__content">
																			<a href="#">
																				<h3 class="k-widget-14__title">DSLR Lens</h3>
																			</a>
																			<div class="k-widget-14__desc">
																				Wide-angle, Quick Focus. Emphasis is on modern lenses for 35 mm film SLRs and for DSLRs with sensor sizes less than or equal to 35 mm.
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-14__data">
																		<div class="k-widget-14__info k-widget-14__info--success">
																			<div class="k-widget-14__info-title">142</div>
																			<div class="k-widget-14__desc">Purchases</div>
																		</div>
																		<div class="k-widget-14__info k-widget-14__info--warning">
																			<div class="k-widget-14__info-title">25</div>
																			<div class="k-widget-14__desc">Reviews</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-14__foot">
																	<div class="k-widget-14__foot-info">
																		<div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold">
																			24 Nov, 2018
																		</div>
																		<div class="k-widget-14__foot-desc">Date of Release</div>
																	</div>
																	<div class="k-widget-14__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a>
																	</div>
																</div>
															</div>
															<div class="carousel-item">
																<div class="k-widget-14__body">
																	<div class="k-widget-14__product">
																		<div class="k-widget-14__thumb">
																			<a href="#"><img src="${urlPublic}/assets/media/blog/4.jpg" class="k-widget-14__image--landscape" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-14__content">
																			<a href="#">
																				<h3 class="k-widget-14__title">Polaroid Camera</h3>
																			</a>
																			<div class="k-widget-14__desc">
																				Instant is back! Make photos fun again with the new range of Polaroid Instant Cameras with Vintage Effects and Built in Flash
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-14__data">
																		<div class="k-widget-14__info k-widget-14__info--success">
																			<div class="k-widget-14__info-title">3578</div>
																			<div class="k-widget-14__desc">Purchases</div>
																		</div>
																		<div class="k-widget-14__info k-widget-14__info--warning">
																			<div class="k-widget-14__info-title">457</div>
																			<div class="k-widget-14__desc">Reviews</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-14__foot">
																	<div class="k-widget-14__foot-info">
																		<div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold">
																			24 Nov, 2018
																		</div>
																		<div class="k-widget-14__foot-desc">Date of Release</div>
																	</div>
																	<div class="k-widget-14__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid-half k-widget-15">
												<div class="k-portlet__body">
													<div id="k-widget-slider-14-2" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
														<div class="k-slider__head">
															<div class="k-slider__label">New Authors</div>
															<div class="k-slider__nav">
																<a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-14-2" role="button" data-slide="prev">
																	<i class="fa fa-angle-left"></i>
																</a>
																<a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-14-2" role="button" data-slide="next">
																	<i class="fa fa-angle-right"></i>
																</a>
															</div>
														</div>
														<div class="carousel-inner">
															<div class="carousel-item active">
																<div class="k-widget-15__body">
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__thumb">
																			<a href="#"><img src="${urlPublic}/assets/media/users/100_14.jpg" class="k-widget-15__image" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-15__content">
																			<a href="#">
																				<h3 class="k-widget-15__title">Andy John</h3>
																			</a>
																			<div class="k-widget-15__desc">
																				AngularJS Expert
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--email">
																			<i class="fa fa-envelope"></i> <a href="">sale@boatline.com</a>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--phone">
																			<i class="fa fa-phone"></i> <a href="">(+44) 345 345 4705</a>
																		</div>
																	</div>
																</div>
																<div class="k-widget-15__foot">
																	<div class="k-widget-15__foot-info">
																		<div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold">
																			01 Sep, 2018
																		</div>
																		<div class="k-widget-15__foot-desc">Joined Date</div>
																	</div>
																	<div class="k-widget-15__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a>
																	</div>
																</div>
															</div>
															<div class="carousel-item">
																<div class="k-widget-15__body">
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__thumb">
																			<a href="#"><img src="${urlPublic}/assets/media/users/100_3.jpg" class="k-widget-15__image" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-15__content">
																			<a href="#">
																				<h3 class="k-widget-15__title">Patrick Smith</h3>
																			</a>
																			<div class="k-widget-15__desc">
																				ReactJS Expert
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--email">
																			<i class="fa fa-envelope"></i> <a href="">patrick@boatline.com</a>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--phone">
																			<i class="fa fa-phone"></i> <a href="">(+44) 345 345 5574</a>
																		</div>
																	</div>
																</div>
																<div class="k-widget-15__foot">
																	<div class="k-widget-15__foot-info">
																		<div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold">
																			01 Sep, 2018
																		</div>
																		<div class="k-widget-15__foot-desc">Joined Date</div>
																	</div>
																	<div class="k-widget-15__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a>
																	</div>
																</div>
															</div>
															<div class="carousel-item">
																<div class="k-widget-15__body">
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__thumb">
																			<a href="#"><img src="assets/media/users/100_7.jpg" class="k-widget-15__image" alt="" title="" /></a>
																		</div>
																		<div class="k-widget-15__content">
																			<a href="#">
																				<h3 class="k-widget-15__title">Amanda Collin</h3>
																			</a>
																			<div class="k-widget-15__desc">
																				Project Manager
																			</div>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--email">
																			<i class="fa fa-envelope"></i> <a href="">amanda@boatline.com</a>
																		</div>
																	</div>
																	<div class="k-widget-15__col">
																		<div class="k-widget-15__contact k-widget-15__contact--phone">
																			<i class="fa fa-phone"></i> <a href="">(+44) 345 345 1247</a>
																		</div>
																	</div>
																</div>
																<div class="k-widget-15__foot">
																	<div class="k-widget-15__foot-info">
																		<div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold">
																			01 Sep, 2018
																		</div>
																		<div class="k-widget-15__foot-desc">Joined Date</div>
																	</div>
																	<div class="k-widget-15__foot-toolbar">
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a>
																		<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4  order-xl-1">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">Top Categories</h3>
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
													<div class="k-widget-16">
														<div class="k-widget-16__item k-widget-16__item--info">
															<div class="k-widget-16__labels">
																<a href="">
																	<div class="k-widget-16__title">Templates</div>
																</a>
																<div class="k-widget-16__desc">Front-end, Admin</div>
															</div>
															<div class="k-widget-16__data">
																<div class="k-widget-16__item-chart">
																	<canvas id="k_widget_latest_products_chart_1" width="80" height="40"></canvas>
																</div>
																<div class="k-widget-16__numbers">
																	<div class="k-widget-16__numbers-total">5.7k</div>
																	<div class="k-widget-16__numbers-change">+780</div>
																</div>
															</div>
														</div>
														<div class="k-widget-16__item k-widget-16__item--danger">
															<div class="k-widget-16__labels">
																<a href="">
																	<div class="k-widget-16__title">Wordpress</div>
																</a>
																<div class="k-widget-16__desc">eCommerce, Website</div>
															</div>
															<div class="k-widget-16__data">
																<div class="k-widget-16__item-chart">
																	<canvas id="k_widget_latest_products_chart_6" width="80" height="40"></canvas>
																</div>
																<div class="k-widget-16__numbers">
																	<div class="k-widget-16__numbers-total">2.8k</div>
																	<div class="k-widget-16__numbers-change">+350</div>
																</div>
															</div>
														</div>
														<div class="k-widget-16__item k-widget-16__item--warning">
															<div class="k-widget-16__labels">
																<a href="">
																	<div class="k-widget-16__title">eCommerce</div>
																</a>
																<div class="k-widget-16__desc">Fashion Websites</div>
															</div>
															<div class="k-widget-16__data">
																<div class="k-widget-16__item-chart">
																	<canvas id="k_widget_latest_products_chart_3" width="80" height="40"></canvas>
																</div>
																<div class="k-widget-16__numbers">
																	<div class="k-widget-16__numbers-total">9.3k</div>
																	<div class="k-widget-16__numbers-change">+2.1k</div>
																</div>
															</div>
														</div>
														<div class="k-widget-16__item k-widget-16__item--brand">
															<div class="k-widget-16__labels">
																<a href="">
																	<div class="k-widget-16__title">UI/UX Design</div>
																</a>
																<div class="k-widget-16__desc">Everything you like</div>
															</div>
															<div class="k-widget-16__data">
																<div class="k-widget-16__item-chart">
																	<canvas id="k_widget_latest_products_chart_5" width="80" height="40"></canvas>
																</div>
																<div class="k-widget-16__numbers">
																	<div class="k-widget-16__numbers-total">9.3k</div>
																	<div class="k-widget-16__numbers-change">+1.6k</div>
																</div>
															</div>
														</div>
														<div class="k-widget-16__item k-widget-16__item--success">
															<div class="k-widget-16__labels">
																<a href="">
																	<div class="k-widget-16__title">SAAS Solution</div>
																</a>
																<div class="k-widget-16__desc">Monthly Subscription</div>
															</div>
															<div class="k-widget-16__data">
																<div class="k-widget-16__item-chart">
																	<canvas id="k_widget_latest_products_chart_4" width="80" height="40"></canvas>
																</div>
																<div class="k-widget-16__numbers">
																	<div class="k-widget-16__numbers-total">5.7k</div>
																	<div class="k-widget-16__numbers-change">+598</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-8  order-xl-3">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">General Statistics</h3>
													</div>
													<div class="k-portlet__head-toolbar">
														<div class="k-portlet__head-actions">
															<a href="#" class="btn btn-default btn-sm btn-bold">XML</a>
															<a href="#" class="btn btn-default btn-sm btn-bold">CSV</a>
														</div>
													</div>
												</div>
												<div class="k-portlet__body">
													<div class="k-widget-2">
														<div class="row">
															<div class="col-xl-3 col-lg-6 col-md-6 col-6">
																<div class="k-widget-2__item">
																	<div class="k-widget-2__item-title">
																		Sales
																	</div>
																	<div class="k-widget-2__item-stats">
																		<div class="k-widget-2__item-info">
																			<div class="k-widget-2__item-text">
																				USP:
																			</div>
																			<div class="k-widget-2__item-value">
																				+23%
																			</div>
																		</div>
																		<div class="k-widget-2__item-chart">
																			<canvas id="k_widget_general_statistics_chart_1" width="80" height="40"></canvas>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-xl-3 col-lg-6 col-md-6 col-6">
																<div class="k-widget-2__item">
																	<div class="k-widget-2__item-title">
																		Products
																	</div>
																	<div class="k-widget-2__item-stats">
																		<div class="k-widget-2__item-info">
																			<div class="k-widget-2__item-text">
																				MRT:
																			</div>
																			<div class="k-widget-2__item-value">
																				+10%
																			</div>
																		</div>
																		<div class="k-widget-2__item-chart">
																			<canvas id="k_widget_general_statistics_chart_2" width="80" height="40"></canvas>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-xl-3 col-lg-6 col-md-6 col-6">
																<div class="k-widget-2__item">
																	<div class="k-widget-2__item-title">
																		Profit
																	</div>
																	<div class="k-widget-2__item-stats">
																		<div class="k-widget-2__item-info">
																			<div class="k-widget-2__item-text">
																				FTP:
																			</div>
																			<div class="k-widget-2__item-value">
																				+19%
																			</div>
																		</div>
																		<div class="k-widget-2__item-chart">
																			<canvas id="k_widget_general_statistics_chart_3" width="80" height="40"></canvas>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-xl-3 col-lg-6 col-md-6 col-6">
																<div class="k-widget-2__item">
																	<div class="k-widget-2__item-title">
																		Reports
																	</div>
																	<div class="k-widget-2__item-stats">
																		<div class="k-widget-2__item-info">
																			<div class="k-widget-2__item-text">
																				RNP:
																			</div>
																			<div class="k-widget-2__item-value">
																				+30%
																			</div>
																		</div>
																		<div class="k-widget-2__item-chart">
																			<canvas id="k_widget_general_statistics_chart_4" width="80" height="40"></canvas>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="k-widget-2__stats">
															<div class="k-widget-2__stats-author">
																<div class="k-widget-2__stats-bullet k-bg-brand"></div>
																<span class="k-widget-2__stats-text">Author Sales</span>
															</div>
															<div class="k-widget-2__stats-product">
																<div class="k-widget-2__stats-bullet k-bg-danger"></div>
																<span class="k-widget-2__stats-text">Product Profit</span>
															</div>
														</div>
													</div>
												</div>
												<div class="k-portlet__body k-portlet__body--stick-bottom k-portlet__body--fit" style="position: relative;">
													<canvas id="k_widget_general_statistics_chart_main" height="250"></canvas>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-3">
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
															<div class="k-scroll" data-scroll="true" style="height: 500px;" data-mobile-height="400">

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
															<div class="k-scroll" data-scroll="true" style="height: 500px;" data-mobile-height="400">

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
															<div class="k-scroll" data-scroll="true" style="height: 500px;" data-mobile-height="400">

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
										<div class="col-xl-6 col-xxl-4 order-xl-3">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--tabs k-portlet--height-fluid">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">
															Work Progress
														</h3>
													</div>
													<div class="k-portlet__head-toolbar">
														<ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
															<li class="nav-item">
																<a class="nav-link active show" data-toggle="tab" href="#k_portlet_tabs_1111_1_content" role="tab" aria-selected="false">
																	Emails
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1111_2_content" role="tab" aria-selected="false">
																	Tickets
																</a>
															</li>
														</ul>
													</div>
												</div>
												<div class="k-portlet__body">
													<div class="tab-content">
														<div class="tab-pane fade active show" id="k_portlet_tabs_1111_1_content" role="tabpanel">
															<div class="k-widget-11">
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Pendings Tasks
																		</div>
																		<div class="k-widget-11__value">
																			78%
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Completed Tasks
																		</div>
																		<div class="k-widget-11__value">
																			320&nbsp;/&nbsp;<span class="k-opacity-5">780</span>
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Tasks In Progress
																		</div>
																		<div class="k-widget-11__value">
																			45%
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-danger" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			All Tasks
																		</div>
																		<div class="k-widget-11__value">
																			1200
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="k-margin-t-30 k-align-center">
																<a href="#" class="btn btn-brand btn-upper btn-sm btn-bold k-align-center">Full Report</a>
															</div>
														</div>
														<div class="tab-pane fade" id="k_portlet_tabs_1111_2_content" role="tabpanel">
															<div class="k-widget-11">
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Pendings Tasks
																		</div>
																		<div class="k-widget-11__value">
																			78%
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Completed Tasks
																		</div>
																		<div class="k-widget-11__value">
																			320&nbsp;/&nbsp;<span class="k-opacity-5">780</span>
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-danger" role="progressbar" style="width: 58%" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			Tasks In Progress
																		</div>
																		<div class="k-widget-11__value">
																			45%
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-11__item">
																	<div class="k-widget-11__wrapper">
																		<div class="k-widget-11__title">
																			All Tasks
																		</div>
																		<div class="k-widget-11__value">
																			1200
																		</div>
																	</div>
																	<div class="k-widget-11__progress">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="k-margin-t-30 k-align-center">
																<a href="#" class="btn btn-brand btn-upper btn-sm btn-bold k-align-center">Full Report</a>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-3">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">Daily Salles</h3>
													</div>
													<div class="k-portlet__head-toolbar">
														<div class="k-portlet__head-actions">
															<a href="#" class="btn btn-default btn-sm btn-bold btn-upper">CSV</a>
														</div>
													</div>
												</div>
												<div class="k-portlet__body">
													<div class="k-widget-4">
														<div class="k-widget-4__items">
															<div class="k-widget-4__item">
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-section">
																		<div class="k-widget-4__item-pic">
																			<img class="" src="assets/media/users/100_3.jpg" alt="" />
																		</div>
																		<div class="k-widget-4__item-info">
																			<a href="">
																				<div class="k-widget-4__item-username">Chris Bent</div>
																			</a>
																			<div class="k-widget-4__item-desc">SUV Themes Carp</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-price">
																		<span class="k-widget-4__item-badge">$</span>
																		<span class="k-widget-4__item-number">830</span>
																	</div>
																</div>
															</div>
															<div class="k-widget-4__item">
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-section">
																		<div class="k-widget-4__item-pic">
																			<img class="" src="assets/media/users/100_4.jpg" alt="" />
																		</div>
																		<div class="k-widget-4__item-info">
																			<a href="">
																				<div class="k-widget-4__item-username">Ashley Stock</div>
																			</a>
																			<div class="k-widget-4__item-desc">Merscedes Benz AMGww</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-price">
																		<span class="k-widget-4__item-badge">$</span>
																		<span class="k-widget-4__item-number">675</span>
																	</div>
																</div>
															</div>
															<div class="k-widget-4__item">
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-section">
																		<div class="k-widget-4__item-pic">
																			<img class="" src="assets/media/users/100_5.jpg" alt="" />
																		</div>
																		<div class="k-widget-4__item-info">
																			<a href="">
																				<div class="k-widget-4__item-username">Jimmy Yesuku</div>
																			</a>
																			<div class="k-widget-4__item-desc">All Nippon United Airlines</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-price">
																		<span class="k-widget-4__item-badge">$</span>
																		<span class="k-widget-4__item-number">194</span>
																	</div>
																</div>
															</div>
															<div class="k-widget-4__item">
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-section">
																		<div class="k-widget-4__item-pic">
																			<img class="" src="assets/media/users/100_2.jpg" alt="" />
																		</div>
																		<div class="k-widget-4__item-info">
																			<a href="">
																				<div class="k-widget-4__item-username">Amanda West</div>
																			</a>
																			<div class="k-widget-4__item-desc">Comboy Westem Limited</div>
																		</div>
																	</div>
																</div>
																<div class="k-widget-4__item-content">
																	<div class="k-widget-4__item-price">
																		<span class="k-widget-4__item-badge">$</span>
																		<span class="k-widget-4__item-number">65</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-3">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid k-portlet--tabs">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">
															Latest Tasks
														</h3>
													</div>
													<div class="k-portlet__head-toolbar">
														<ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
															<li class="nav-item">
																<a class="nav-link active show" data-toggle="tab" href="#k_portlet_tabs_1_1_content" role="tab" aria-selected="false">
																	Today
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_2_content" role="tab" aria-selected="false">
																	Week
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_3_content" role="tab" aria-selected="true">
																	Month
																</a>
															</li>
														</ul>
													</div>
												</div>
												<div class="k-portlet__body">
													<div class="tab-content">
														<div class="tab-pane fade active show" id="k_portlet_tabs_1_1_content" role="tabpanel">
															<div class="k-widget-5">
																<div class="k-widget-5__item k-widget-5__item--info">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Management meeting
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			09:30 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--danger">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Replace datatables rows color
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			12:00 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--brand">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Export Navitare booking table
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			01:20 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--success">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				NYCS internal discussion
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			03: 00 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--danger">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Project Launch
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			11: 00 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="tab-pane fade" id="k_portlet_tabs_1_2_content" role="tabpanel">
															<div class="k-widget-5">
																<div class="k-widget-5__item k-widget-5__item--brand">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Export Navitare booking table
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			01:20 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--danger">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Replace datatables rows color
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			12:00 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--success">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				NYCS internal discussion
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			03: 00 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--info">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Management meeting
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			09:30 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="tab-pane fade" id="k_portlet_tabs_1_3_content" role="tabpanel">
															<div class="k-widget-5">
																<div class="k-widget-5__item k-widget-5__item--success">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				NYCS internal discussion
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			03: 00 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--danger">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Replace datatables rows color
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			12:00 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--brand">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Export Navitare booking table
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			01:20 PM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
																<div class="k-widget-5__item k-widget-5__item--info">
																	<div class="k-widget-5__item-info">
																		<a href="">
																			<div class="k-widget-5__item-title">
																				Management meeting
																			</div>
																		</a>
																		<div class="k-widget-5__item-datetime">
																			09:30 AM
																		</div>
																	</div>
																	<div class="k-widget-5__item-check">
																		<label class="k-radio">
																			<input type="radio" checked="checked" name="radio1">
																			<span></span>
																		</label>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-6 col-xxl-4 order-xl-3">

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
													<div class="tab-content">
														<div class="tab-pane fade active show" role="tabpanel">
															<div class="k-widget-6">

																<!-- begin::Tab Content -->
																<div class="k-widget6__tab tab-content">
																	<div id="k_personal_income_quater_15bc43ae740972" class="tab-pane fade active show">
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
																					<img class="" src="assets/media/blog/blog-2.jpg" alt="" />
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
																	<div id="k_personal_income_quater_25bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_35bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_45bc43ae740972" class="tab-pane fade">
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
																		<a class="nav-link active show" data-toggle="pill" href="#k_personal_income_quater_15bc43ae740972">1</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_25bc43ae740972">2</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_35bc43ae740972">3</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_45bc43ae740972">4</a>
																	</li>
																</ul>

																<!-- end::Nav pills -->
															</div>
														</div>
														<div class="tab-pane fade" role="tabpanel">
															<div class="k-widget-6">

																<!-- begin::Tab Content -->
																<div class="k-widget6__tab tab-content">
																	<div id="k_personal_income_quater_115bc43ae740972" class="tab-pane fade active show">
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
																	<div id="k_personal_income_quater_215bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_315bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_415bc43ae740972" class="tab-pane fade">
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
																		<a class="nav-link active show" data-toggle="pill" href="#k_personal1_income_quater_115bc43ae740972">1</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_215bc43ae740972">2</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_315bc43ae740972">3</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_415bc43ae740972">4</a>
																	</li>
																</ul>

																<!-- end::Nav pills -->
															</div>
														</div>
														<div class="tab-pane fade" role="tabpanel">
															<div class="k-widget-6">

																<!-- begin::Tab Content -->
																<div class="k-widget6__tab tab-content">
																	<div id="k_personal_income_quater_135bc43ae740972" class="tab-pane fade active show">
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
																	<div id="k_personal_income_quater_235bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_335bc43ae740972" class="tab-pane fade">
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
																	<div id="k_personal_income_quater_435bc43ae740972" class="tab-pane fade">
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
																		<a class="nav-link active show" data-toggle="pill" href="#k_personal_income_quater_135bc43ae740972">1</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_235bc43ae740972">2</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_335bc43ae740972">3</a>
																	</li>
																	<li class="k-widget-6__nav-item nav-item">
																		<a class="nav-link" data-toggle="pill" href="#k_personal_income_quater_435bc43ae740972">4</a>
																	</li>
																</ul>

																<!-- end::Nav pills -->
															</div>
														</div>
													</div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
										<div class="col-xl-12 col-xxl-8 order-xl-3">

											<!--begin::Portlet-->
											<div class="k-portlet k-portlet--height-fluid">
												<div class="k-portlet__head">
													<div class="k-portlet__head-label">
														<h3 class="k-portlet__head-title">Recent Orders</h3>
													</div>
													<div class="k-portlet__head-toolbar">
														<div class="k-portlet__head-toolbar-wrapper">
															<div class="dropdown dropdown-inline">
																<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																	<i class="la la-sellsy"></i>
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

													<!-- search form -->
													<div class="k-form k-fork--label-right k-margin-t-5 k-margin-b-20">
														<div class="row align-items-center">
															<div class="col-xl-8 order-2 order-xl-1">
																<div class="row align-items-center">
																	<div class="col-md-4">
																		<div class="k-form__control">
																			<select class="form-control bootstrap-select" id="k_form_status" title="Status">
																				<option value="">All</option>
																				<option value="1">Pending</option>
																				<option value="2">Delivered</option>
																				<option value="3">Canceled</option>
																				<option value="4">Success</option>
																				<option value="5">Info</option>
																				<option value="6">Danger</option>
																			</select>
																		</div>
																	</div>
																	<div class="col-md-4 mt-2 mt-md-0">
																		<div class="k-input-icon k-input-icon--left">
																			<input type="text" class="form-control" placeholder="Search..." id="generalSearch">
																			<span class="k-input-icon__icon k-input-icon__icon--left"><span><i class="la la-search"></i></span></span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-xl-4 order-1 order-xl-2 k-align-right">
																<a href="#" class="btn btn-accent">
																	<i class="la la-cart-plus"></i> New Order
																</a>
																<div class="k-separator k-separator--border-dashed k-separator--space-lg d-xl-none"></div>
															</div>
														</div>
													</div>

													<!-- search form -->
													<div class="k-datatable" id="k_recent_orders"></div>
												</div>
											</div>

											<!--end::Portlet-->
										</div>
									</div>

									<!--end::Row-->
								</div>

								<!-- end:: Content Body -->
							</div>

							<!-- end:: Content -->
						</div>
					</div>

					<!-- begin:: Footer -->
					<div class="k-footer k-grid__item" style="background-image: url(${urlPublic}/assets/demo/demo3/media/layout/footer-bg.jpg)" id="k_footer">
						<div class="k-container">
							<div class="k-footer__top">
								<div class="row">
									<div class="col-lg-4">
										<div class="k-footer__section">
											<h3 class="k-footer__title">About</h3>
											<div class="k-footer__about">
												We truly hope that our love and dedication to produce an incredibly powerful
												high level solution suits all your project needs.
												We will continue to deliver incredible enterprise ready solutions to serve you better.
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="k-footer__section">
											<h3 class="k-footer__title">Quick Links</h3>
											<div class="row">
												<div class="col">
													<ul class="k-footer__nav">
														<li><a href="#" class="k-link">Pravicy Policy</a></li>
														<li><a href="#" class="k-link">Terms & Conditions</a></li>
														<li><a href="#" class="k-link">Help Center</a></li>
													</ul>
												</div>
												<div class="col">
													<ul class="k-footer__nav">
														<li><a href="#" class="k-link">Community</a></li>
														<li><a href="#" class="k-link">Documentation</a></li>
														<li><a href="#" class="k-link">Support</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="k-footer__section">
											<h3 class="k-footer__title">Get In Touch</h3>
											<form action="#" class="k-footer__subscribe">
												<div class="k-input-icon k-input-icon--right">
													<input type="text" class="form-control" placeholder="Subscribe...">
													<span class="k-input-icon__icon k-input-icon__icon--right">
														<span><i class="la la-arrow-right"></i></span>
													</span>
												</div>
											</form>
											<div class="k-footer__social">
												<div class="k-footer__social-label">
													Social links:
												</div>
												<ul class="k-footer__social-nav">
													<li><a href="#"><i class="flaticon-facebook-logo-button"></i></a></li>
													<li><a href="#"><i class="flaticon-twitter-logo-button"></i></a></li>
													<li><a href="#"><i class="flaticon-instagram-logo"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="k-footer__bottom">
								<div class="k-footer__copyright">
									2018&nbsp;&copy;&nbsp;<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Keenthemes</a>
								</div>
								<div class="k-footer__menu">
									<a href="http://keenthemes.com/keen" target="_blank" class="k-link">About</a>
									<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Team</a>
									<a href="http://keenthemes.com/keen" target="_blank" class="k-link">Contact</a>
								</div>
							</div>
						</div>
					</div>

					<!-- end:: Footer -->
				</div>
			</div>
		</div>

		<!-- end:: Page -->

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
		<ul class="k-sticky-toolbar" style="margin-top: 30px;">
			<li class="k-sticky-toolbar__item" data-toggle="k-tooltip" title="Layout Builder" data-placement="left">
				<a href="https://keenthemes.com/keen/preview/?page=builder&demo=demo3" target="_blank"><i class="la la-cog"></i></a>
			</li>
			<li class="k-sticky-toolbar__item" data-toggle="k-tooltip" title="Purchase" data-placement="left">
				<a href="https://themes.getbootstrap.com/product/keen-the-ultimate-bootstrap-admin-theme/"><i class="la la-cart-arrow-down"></i></a>
			</li>
			<li class="k-sticky-toolbar__item" data-toggle="k-tooltip" title="Documentation" data-placement="left">
				<a href="https://keenthemes.com/keen/?page=docs" target="_blank"><i class="la la-code-fork"></i></a>
			</li>
			<li class="k-sticky-toolbar__item" data-toggle="k-tooltip" title="Support" data-placement="left">
				<a href="https://keenthemes.com/support" target="_blank"><i class="la la-life-ring"></i></a>
			</li>
		</ul>

		<!-- end::Sticky Toolbar -->

		<!-- begin::Global Config -->
		<script>
			var KAppOptions = {
				"colors": {
					"brand": "#5578eb",
					"metal": "#c4c5d6",
					"light": "#ffffff",
					"accent": "#00c5dc",
					"primary": "#5867dd",
					"success": "#34bfa3",
					"info": "#36a3f7",
					"warning": "#ffb822",
					"danger": "#fd3995",
					"focus": "#9816f4"
				}
			};
		</script>

		<!-- end::Global Config -->

		<!--begin::Global Theme Bundle -->
		<script src="${urlPublic}/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
		<script src="${urlPublic}/assets/demo/demo3/base/scripts.bundle.js" type="text/javascript"></script>

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
		<script>
			var KThemeMode = 'released';
		</script>

		<!-- begin::Page Loader -->
		<script>
			$(window).on('load', function() {
				$('body').removeClass('k-page--loading');
			});
		</script>

		<!-- end::Page Loader -->
	</body>

	<!-- end::Body -->
</html>