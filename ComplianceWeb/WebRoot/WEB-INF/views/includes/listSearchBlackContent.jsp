<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
            <spring:url value="/blacklist/gosearch" var="urlForm" />
            <!-- begin:: Subheader -->
            <div class="k-subheader k-grid__item" id="k_subheader">
                <div class="k-subheader__main">
                    <h3 class="k-subheader__title">Listado de Busqueda</h3>
                    <span class="k-subheader__separator k-hidden"></span>
                    <div class="k-subheader__breadcrumbs">
                        <a href="#" class="k-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
				Extendido </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Formularios </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
				Controles </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Ingreso de Grupos </a>
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
                            <h3 class="k-portlet__head-title">Busqueda Experta</h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="la la-sellsy"></i>
						</button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"><span class="k-nav__section-text">Acciones Rapidas</span></li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link">
                                                    <i class="k-nav__link-icon flaticon2-graph-1"></i> <span class="k-nav__link-text">Estadisticas</span>
                                                </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link">
                                                    <i class="k-nav__link-icon flaticon2-calendar-4"></i> <span class="k-nav__link-text">Eventos</span>
                                                </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link">
                                                    <i class="k-nav__link-icon flaticon2-layers-1"></i> <span class="k-nav__link-text">Reportes</span>
                                                </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link">
                                                    <i class="k-nav__link-icon flaticon2-bell-1o"></i> <span class="k-nav__link-text">Notificaciones</span>
                                                </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link">
                                                    <i class="k-nav__link-icon flaticon2-file-1"></i> <span class="k-nav__link-text">Archivos</span>
                                                </a>
                                            </li>
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
                                        Busquedas <small>Frecuentes</small>
                                    </h3>
                                </div>
                                <div class="k-portlet__head-toolbar">
                                    <ul class="nav nav-tabs nav-tabs-bold nav-tabs-line nav-tabs-line-brand" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#k_portlet_tabs_1_1_content" role="tab"> Buscar todo </a>
                                        </li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_2_content" role="tab"> BlackList </a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_3_content" role="tab"> Peps </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="k-portlet__body">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="k_portlet_tabs_1_1_content" role="tabpanel">
                                        <form method="POST" class="k-form k-form--label-right" action="${urlForm}">
                                            <div class="form-group ">
                                                <label>Buscar</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Buscar
												todo</button>
                                                    </div>
                                                    <input type="text" class="form-control" aria-label="Text input with dropdown button" name="nameToSearch" id="nameToSearch">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-secondary" type="submit">Buscar</button>
                                                    </div>
                                                </div>
                                                <span class="form-text text-muted">Digite el nombre que va a buscar</span>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="k_portlet_tabs_1_2_content" role="tabpanel">
                                        <form method="POST" class="k-form k-form--label-right" action="${urlForm}">
                                            <div class="form-group ">
                                                <label>Search</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">BlackList</button>
                                                    </div>
                                                    <input type="text" class="form-control" aria-label="Text input with dropdown button" name="nameToSearch" id="nameToSearch">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-secondary" type="submit">Busqueda</button>
                                                    </div>
                                                </div>
                                                <span class="form-text text-muted">Digite el nombre que va a buscar</span>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="k_portlet_tabs_1_3_content" role="tabpanel">
                                        <form method="POST" class="k-form k-form--label-right" action="${urlForm}">
                                            <div class="form-group ">
                                                <label>Buscar</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Peps</button>
                                                    </div>
                                                    <input type="text" class="form-control" aria-label="Text input with dropdown button" name="nameToSearch" id="nameToSearch">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-secondary" type="submit">Buscar</button>
                                                    </div>
                                                </div>
                                                <span class="form-text text-muted"> <span class="form-text text-muted">Digite el
											nombre que va a buscar</span>
                                                </span>
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
                                        Resultados de la busqueda <small>informacion</small>
                                    </h3>
                                </div>
                                <div class="k-portlet__head-toolbar">
                                    <ul class="nav nav-tabs nav-tabs-bold nav-tabs-line nav-tabs-line-brand" role="tablist">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#k_portlet_tabs_1_1_content_result" role="tab">
									Resultados de la busqueda </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="k-portlet__body">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="k_portlet_tabs_1_1_content_result" role="tabpanel">
                                        <!--begin: Datatable -->
                                        <table class="table table-striped- table-bordered table-hover table-checkable" id="k_table_1">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Alias</th>
                                                    <th scope="col">Direccion</th>
                                                    <th scope="col">Ciudad</th>
                                                    <th scope="col">Tipo</th>
                                                    <th scope="col">Programas</th>
                                                    <th scope="col">Lista</th>
                                                    <th scope="col">Coincidencia</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="allResultreturn" items="${allResultreturn}" varStatus="loop">
                                                    <tr>
                                                        <td>${allResultreturn.sDNName}</td>
                                                        <td>${allResultreturn.consAltList[loop.index].altName}</td>
                                                        <td>${allResultreturn.consAddList[loop.index].address}</td>
                                                        <td>${allResultreturn.consAddList[loop.index].city}</td>
                                                        <td>${allResultreturn.sDNType}</td>
                                                        <td>${allResultreturn.program}</td>
                                                        <td>${allResultreturn.title}</td>
                                                        <td>
                                                            <fmt:formatNumber type="percent" maxFractionDigits="3" value="${allResultreturn.score}" />
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                 <c:forEach var="allResultreturnOfac" items="${allResultreturnOfac}" varStatus="loop">
                                                    <tr>
                                                        <td>${allResultreturnOfac.name}</td>
                                                        <td>${allResultreturnOfac.vesName}</td>
                                                        <td>${allResultreturnOfac.address}</td>
                                                        <td>${allResultreturnOfac.city}</td>
                                                        <td>${allResultreturnOfac.fromFile}</td>
                                                        <td>${allResultreturnOfac.program}</td>
                                                        <td>${allResultreturnOfac.entName}</td>
                                                        <td>
                                                            <fmt:formatNumber type="percent" maxFractionDigits="3" value="${allResultreturnOfac.score}" />
                                                        </td>
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