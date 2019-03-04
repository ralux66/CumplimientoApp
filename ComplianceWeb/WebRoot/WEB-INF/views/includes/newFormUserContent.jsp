<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/user/saveuser" var="urlForm" />
<spring:url value="/" var="urlRoot" />
<spring:url value="../resources" var="urlPublic" />
<!-- begin:: Subheader -->
<div class="k-subheader k-grid__item" id="k_subheader">
	<div class="k-subheader__main">
		<h3 class="k-subheader__title">Typeahead</h3>
		<span class="k-subheader__separator k-hidden"></span>
		<div class="k-subheader__breadcrumbs">
			<a href="#" class="k-subheader__breadcrumbs-home"><i
				class="flaticon2-shelter"></i></a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Extended </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Forms </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Widgets </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Typeahead </a>
			<!-- <span class="k-subheader__breadcrumbs-link k-subheader__breadcrumbs-link--active">Active link</span> -->
		</div>
	</div>
	<div class="k-subheader__toolbar">
		<div class="k-subheader__wrapper">
			<a href="#"
				class="btn btn-icon btn btn-label btn-label-brand btn-bold"
				data-toggle="k-tooltip" title="Reports" data-placement="top"><i
				class="flaticon2-writing"></i></a> <a href="#"
				class="btn btn-icon btn btn-label btn-label-brand btn-bold"
				data-toggle="k-tooltip" title="Calendar" data-placement="top"><i
				class="flaticon2-hourglass-1"></i></a>
			<div class="dropdown dropdown-inline" data-toggle="k-tooltip"
				title="Quick actions" data-placement="top">
				<a href="#"
					class="btn btn-icon btn btn-label btn-label-brand btn-bold"
					data-toggle="dropdown" data-offset="0 0" aria-haspopup="true"
					aria-expanded="false"> <i class="flaticon2-add-1"></i>
				</a>
				<div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
					<ul class="k-nav k-nav--active-bg" role="tablist">
						<li class="k-nav__item"><a href="${urlRoot}client/listclient"
							class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-psd"></i> <span
								class="k-nav__link-text">Lista Cliente</span>
						</a></li>
						<li class="k-nav__item"><a class="k-nav__link" role="tab">
								<i class="k-nav__link-icon flaticon2-supermarket"></i> <span
								class="k-nav__link-text">Message</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-shopping-cart"></i> <span
								class="k-nav__link-text">Product</span>
						</a></li>
						<li class="k-nav__item"><a class="k-nav__link" role="tab">
								<i class="k-nav__link-icon flaticon2-chart2"></i> <span
								class="k-nav__link-text">Report</span> <span
								class="k-nav__link-badge"> <span
									class="k-badge k-badge--danger k-badge--inline k-badge--rounded">pdf</span>
							</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-sms"></i> <span
								class="k-nav__link-text">Post</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-avatar"></i> <span
								class="k-nav__link-text">Customer</span>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="dropdown dropdown-inline" data-toggle="k-tooltip"
				title="Quick actions" data-placement="top">
				<a href="#"
					class="btn btn btn-label btn-label-brand btn-bold btn-elevate"
					data-toggle="dropdown" data-offset="0 0" aria-haspopup="true"
					aria-expanded="false"> Reports </a>
				<div class="dropdown-menu dropdown-menu-right">
					<ul class="k-nav k-nav--active-bg" id="k_nav_1" role="tablist">
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-psd"></i> <span
								class="k-nav__link-text">Products</span>
						</a></li>
						<li class="k-nav__item"><a class="k-nav__link" role="tab"
							id="k_nav_link_1"> <i
								class="k-nav__link-icon flaticon2-supermarket"></i> <span
								class="k-nav__link-text">Customers</span> <span
								class="k-nav__link-badge"> <span
									class="k-badge k-badge--success k-badge--inline k-badge--rounded">6</span>
							</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-shopping-cart"></i> <span
								class="k-nav__link-text">Orders</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-shopping-cart"></i> <span
								class="k-nav__link-text">Reports</span>
						</a></li>
						<li class="k-nav__item"><a class="k-nav__link" role="tab"
							id="k_nav_link_2"> <i
								class="k-nav__link-icon flaticon2-chart2"></i> <span
								class="k-nav__link-text">Console</span> <span
								class="k-nav__link-badge"> <span
									class="k-badge k-badge--danger k-badge--inline k-badge--rounded">new</span>
							</span>
						</a></li>
						<li class="k-nav__item"><a href="" class="k-nav__link"> <i
								class="k-nav__link-icon flaticon2-sms"></i> <span
								class="k-nav__link-text">Settings</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end:: Subheader -->
<!-- begin:: Content -->
<!-- begin:: Content -->
<div class="k-content k-grid__item k-grid__item--fluid" id="k_content">
	<!--begin::Portlet-->
	<div class="k-portlet">
		<div class="k-portlet__head">
			<div class="k-portlet__head-label">
				<h3 class="k-portlet__head-title">New User</h3>
			</div>
		</div>
		<!--begin::Form-->
		<div class="k-portlet__body">
			<form:form class="k-form k-form--label-right" modelAttribute="user" action="${urlForm}" method="POST">
				<div class="modal-body">
					<div class="k-section__body">
						<h3 class="k-section__title k-section__title-lg">Informacion
							General:</h3>
						<div
							class="k-separator k-separator--border-dashed k-separator--space-lg"></div>
						<div class="col-lg-6">
							<!--begin::Portlet-->
							<div class="k-portlet k-portlet--height-fluid">
								<div class="k-portlet__head">
									<div class="k-portlet__head-label">
										<span class="k-portlet__head-icon"><i
											class="flaticon-stopwatch"></i></span>
										<h3 class="k-portlet__head-title">Same Height Portlet</h3>
									</div>
									<div class="k-portlet__head-toolbar">Toolbar</div>
								</div>
								<div class="k-portlet__body">
									<div class="form-group row">
										<label class="col-form-label col-lg-3 col-sm-12">Company Setup</label>
										<div class="col-lg-4 col-md-9 col-sm-12">
											<form:select class="form-control k_selectpicker"
												path="idcliente.idcliente" id="idcliente">
												<form:options items="${allClient}" itemLabel="nombrepropio1"
													itemValue="idcliente" />
											</form:select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-lg-3 col-sm-12">Perfil
											Setup</label>
										<div class="col-lg-4 col-md-9 col-sm-12">
											<form:select class="form-control k_selectpicker"
												path="idperfil.idperfil" id="idperfil">
												<form:options items="${allProfile}" itemLabel="descripcion"
													itemValue="idperfil" />
											</form:select>
										</div>
									</div>
								</div>
							</div>
							<!--end::Portlet-->
						</div>

						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Cod User:</label>
							<div class="col-lg-6">
								<form:input type="text" path="codusr" class="form-control"
									placeholder=""></form:input>
								<span class="form-text text-muted" required="required">Please
									enter your Cod User</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Nombre:</label>
							<div class="col-lg-6">
								<form:input type="text" path="nombre" class="form-control"
									placeholder="" required="required"></form:input>
								<span class="form-text text-muted">Please enter your
									Nombre</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Apellido:</label>
							<div class="col-lg-6">
								<form:input type="text" path="apellido" class="form-control"
									placeholder="" required="required"></form:input>
								<span class="form-text text-muted">Please enter your
									apellido</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Password:</label>
							<div class="col-lg-6">
								<form:input type="text" path="password" class="form-control"
									placeholder="" required="required"></form:input>
								<span class="form-text text-muted">Please enter your
									password</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Email:</label>
							<div class="col-lg-6">
								<form:input type="text" path="email" class="form-control"
									placeholder="" required="required"></form:input>
								<span class="form-text text-muted">Please enter your
									Email</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Genero:</label>
							<div class="col-lg-6">
								<form:input type="text" path="sexo" class="form-control"
									placeholder="" required="required"></form:input>
								<span class="form-text text-muted">Please enter your
									Genero</span>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-lg-3 col-form-label">DUI:</label>
							<div class="col-lg-6">
								<form:input type="text" path="dui" class="form-control"
									placeholder=""></form:input>
								<span class="form-text text-muted">Please enter your dui</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Nit:</label>
							<div class="col-lg-6">
								<form:input type="text" path="nit" class="form-control"
									placeholder=""></form:input>
								<span class="form-text text-muted">Please enter your nit</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 col-form-label">Fecha Nacimiento:</label>
							<div class="col-lg-6">
								<form:input type="text" path="fechaNac" class="form-control"
									placeholder=""></form:input>
								<span class="form-text text-muted">Please enter your
									Fecha Nacimiento</span>
							</div>
						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success k-btn">Submit</button>
				</div>
			</form:form>
		</div>
		<!--end::Form-->
	</div>
	<!--end::Portlet-->
</div>
<!-- end:: Content -->
<!-- end:: Content -->
</div>