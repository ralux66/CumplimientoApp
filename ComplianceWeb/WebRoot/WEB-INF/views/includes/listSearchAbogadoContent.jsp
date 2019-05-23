<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="/abogado-suspen/gosearch" var="urlForm" />
<!-- begin:: Subheader -->
<div class="k-subheader k-grid__item" id="k_subheader">
	<div class="k-subheader__main">
		<h3 class="k-subheader__title">Busqueda Abogado</h3>
		<span class="k-subheader__separator k-hidden"></span>
		<div class="k-subheader__breadcrumbs">
			<a href="#" class="k-subheader__breadcrumbs-home"><i
				class="flaticon2-shelter"></i></a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Extended </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Forms </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Controls </a> <span
				class="k-subheader__breadcrumbs-separator"></span> <a href=""
				class="k-subheader__breadcrumbs-link"> Input Groups </a>
			<!-- <span class="k-subheader__breadcrumbs-link k-subheader__breadcrumbs-link--active">Active link</span> -->
		</div>
	</div>
</div>
<!-- end:: Subheader -->
<!-- begin:: Content -->
<!-- begin:: Content -->
<div class="k-content k-grid__item k-grid__item--fluid" id="k_content">
	<div class="k-portlet k-portlet--mobile">
		<div class="k-portlet__head">
			<div class="k-portlet__head-label">
				<h3 class="k-portlet__head-title">Busquedas</h3>
			</div>
			<div class="k-portlet__head-toolbar">
				<div class="k-portlet__head-toolbar">
					<div class="dropdown dropdown-inline">
						<button type="button"
							class="btn btn-clean btn-sm btn-icon btn-icon-md"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="la la-sellsy"></i>
						</button>
						<div class="dropdown-menu dropdown-menu-right">
							<ul class="k-nav">
								<li class="k-nav__section k-nav__section--first"><span
									class="k-nav__section-text">Quick Actions</span></li>
								<li class="k-nav__item"><a href="#" class="k-nav__link">
										<i class="k-nav__link-icon flaticon2-graph-1"></i> <span
										class="k-nav__link-text">Statistics</span>
								</a></li>
								<li class="k-nav__item"><a href="#" class="k-nav__link">
										<i class="k-nav__link-icon flaticon2-calendar-4"></i> <span
										class="k-nav__link-text">Events</span>
								</a></li>
								<li class="k-nav__item"><a href="#" class="k-nav__link">
										<i class="k-nav__link-icon flaticon2-layers-1"></i> <span
										class="k-nav__link-text">Reports</span>
								</a></li>
								<li class="k-nav__item"><a href="#" class="k-nav__link">
										<i class="k-nav__link-icon flaticon2-bell-1o"></i> <span
										class="k-nav__link-text">Notifications</span>
								</a></li>
								<li class="k-nav__item"><a href="#" class="k-nav__link">
										<i class="k-nav__link-icon flaticon2-file-1"></i> <span
										class="k-nav__link-text">Files</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="k-portlet__body">
			<!--begin::Portlet-->
			<div class="k-portlet k-portlet--tabs">
				<div class="k-portlet__head">
					<div class="k-portlet__head-label">
						<h3 class="k-portlet__head-title">
							Busqueda Abogados <small>verificacion</small>
						</h3>
					</div>
					<div class="k-portlet__head-toolbar">
						<ul
							class="nav nav-tabs nav-tabs-bold nav-tabs-line nav-tabs-line-brand"
							role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#k_portlet_tabs_1_1_content" role="tab">	Busqueda Abogados </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="k-portlet__body">
					<div class="tab-content">
						<div class="tab-pane active" id="k_portlet_tabs_1_1_content"
							role="tabpanel">
							<form method="POST" class="k-form k-form--label-right"
								action="${urlForm}">
								<div class="form-group ">
									<label>Busqueda</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<button type="button"
												class="btn btn-secondary dropdown-toggle"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">Buscar</button>
										</div>
										<input type="text" class="form-control"
											aria-label="Text input with dropdown button"
											name="nameToSearch" id="nameToSearch">
										<div class="input-group-append">
											<button class="btn btn-secondary" type="submit">Busqueda</button>
										</div>
									</div>
									<span class="form-text text-muted">Some help content
										goes here</span>
								</div>
							</form>
						</div>
						<div class="tab-pane" id="k_portlet_tabs_1_2_content"
							role="tabpanel">
							<form method="POST" class="k-form k-form--label-right"
								action="${urlForm}">
								<div class="form-group ">
									<label>Search</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<button type="button"
												class="btn btn-secondary dropdown-toggle"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">Abogados</button>
										</div>
										<input type="text" class="form-control"
											aria-label="Text input with dropdown button"
											name="nameToSearch" id="nameToSearch">
										<div class="input-group-append">
											<button class="btn btn-secondary" type="submit">Search</button>
										</div>
									</div>
									<span class="form-text text-muted">Some help content
										goes here</span>
								</div>
							</form>
						</div>
						<div class="tab-pane" id="k_portlet_tabs_1_3_content"
							role="tabpanel">
							<form method="POST" class="k-form k-form--label-right"
								action="${urlForm}">
								<div class="form-group ">
									<label>Search</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<button type="button"
												class="btn btn-secondary dropdown-toggle"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">Peps</button>
										</div>
										<input type="text" class="form-control"
											aria-label="Text input with dropdown button"
											name="nameToSearch" id="nameToSearch">
										<div class="input-group-append">
											<button class="btn btn-secondary" type="submit">Search</button>
										</div>
									</div>
									<span class="form-text text-muted">Some help content
										goes here</span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--end::Portlet-->
			<!--begin::Portlet-->
			<div class="k-portlet k-portlet--tabs">
				<div class="k-portlet__head">
					<div class="k-portlet__head-label">
						<h3 class="k-portlet__head-title">
							Result Search <small>information</small>
						</h3>
					</div>
					<div class="k-portlet__head-toolbar">
						<ul
							class="nav nav-tabs nav-tabs-bold nav-tabs-line nav-tabs-line-brand"
							role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#k_portlet_tabs_1_1_content_result" role="tab">
									Result Search </a></li>
						</ul>
					</div>
				</div>
				<div class="k-portlet__body">
					<div class="tab-content">
						<div class="tab-pane active" id="k_portlet_tabs_1_1_content_result"
							role="tabpanel">
							<!--begin: Datatable -->
							<table
								class="table table-striped- table-bordered table-hover table-checkable"
								id="k_table_1">
								<thead>
									<tr>
										<th scope="col">Name</th>
										<th scope="col">Sancion</th>
										<th scope="col">Funcion</th>
										<th scope="col">Fecha Notificacion</th>										
										<th scope="col">Score</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="allResultreturn" items="${allResultreturn}"
										varStatus="loop">
										<tr>
											<td>${allResultreturn.nombre}</td>
											<td>${allResultreturn.sancion}</td>
											<td>${allResultreturn.sancionadoComo}</td>
											<td>${allResultreturn.fechaSancionNotif}</td>											
											<td><fmt:formatNumber type="percent"
													maxFractionDigits="3" value="${allResultreturn.score}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--end: Datatable -->
						</div>
					</div>
				</div>
			</div>
			<!--end::Portlet-->
		</div>
	</div>
</div>
