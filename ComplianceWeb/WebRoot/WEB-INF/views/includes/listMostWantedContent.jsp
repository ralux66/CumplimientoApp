<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
            <spring:url value="/" var="urlRoot" />
            <spring:url value="/mostwanted/savemostwanted" var="urlForm" />
            <!-- begin:: Subheader -->
            <div class="k-subheader k-grid__item" id="k_subheader">
                <div class="k-subheader__main">
                    <h3 class="k-subheader__title">Opciones de Paginacion</h3>
                    <span class="k-subheader__separator k-hidden"></span>
                    <div class="k-subheader__breadcrumbs">
                        <a href="#" class="k-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
                Datatables.net </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Base </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
                Opciones de Paginacion </a>
                        <!-- <span class="k-subheader__breadcrumbs-link k-subheader__breadcrumbs-link--active">Active link</span> -->
                    </div>
                </div>
                <div class="k-subheader__toolbar">
                    <div class="k-subheader__wrapper">
                        <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="k-tooltip" title="Reports" data-placement="top"><i class="flaticon2-writing"></i></a> <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold"
                            data-toggle="k-tooltip" title="Calendar" data-placement="top"><i class="flaticon2-hourglass-1"></i></a>
                        <div class="dropdown dropdown-inline" data-toggle="k-tooltip" title="Quick actions" data-placement="top">
                            <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="dropdown" data-offset="0 0" aria-haspopup="true" aria-expanded="false"> <i class="flaticon2-add-1"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                <ul class="k-nav k-nav--active-bg" role="tablist">
                                    <li class="k-nav__item">
                                        <a href="${urlRoot}client/newclient" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-psd"></i> <span class="k-nav__link-text">Nuevo
                                    Cliente</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab">
                                            <i class="k-nav__link-icon flaticon2-supermarket"></i> <span class="k-nav__link-text">Mensaje</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Producto</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab">
                                            <i class="k-nav__link-icon flaticon2-chart2"></i> <span class="k-nav__link-text">Reporte</span> <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--danger k-badge--inline k-badge--rounded">pdf</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-sms"></i> <span class="k-nav__link-text">Publicar</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-avatar"></i> <span class="k-nav__link-text">Cliente</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="dropdown dropdown-inline" data-toggle="k-tooltip" title="Quick actions" data-placement="top">
                            <a href="#" class="btn btn btn-label btn-label-brand btn-bold btn-elevate" data-toggle="dropdown" data-offset="0 0" aria-haspopup="true" aria-expanded="false"> Reportes </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <ul class="k-nav k-nav--active-bg" id="k_nav_1" role="tablist">
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-psd"></i> <span class="k-nav__link-text">Productos</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab" id="k_nav_link_1"> <i class="k-nav__link-icon flaticon2-supermarket"></i> <span class="k-nav__link-text">Clientes</span> <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--success k-badge--inline k-badge--rounded">6</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Ordenes</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Reportes</span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab" id="k_nav_link_2"> <i class="k-nav__link-icon flaticon2-chart2"></i> <span class="k-nav__link-text">Consola</span> <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--danger k-badge--inline k-badge--rounded">nuevo</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-sms"></i> <span class="k-nav__link-text">Ajustes</span>
                                        </a>
                                    </li>
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
                <spring:hasBindErrors name="client">
                    <div class="alert alert-danger fade show" role="alert">
                        <div class="alert-icon">
                            <i class="flaticon-questions-circular-button"></i>
                        </div>
                        <div class="alert-text">
                            <ul>
                                <c:forEach var="error" items="${errors.allErrors}">
                                    <li>
                                        <spring:message message="${error}" />
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true"><i class="la la-close"></i></span>
                </button>
                        </div>
                    </div>
                </spring:hasBindErrors>

                <c:if test="${msg !=null }">
                    <div class="alert alert-primary fade show" role="alert">
                        <div class="alert-icon">
                            <i class="flaticon-warning"></i>
                        </div>
                        <div class="alert-text">${msg}</div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true"><i class="la la-close"></i></span>
                </button>
                        </div>
                    </div>
                </c:if>
                <div class="k-portlet k-portlet--mobile">
                    <div class="k-portlet__head">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">Listado de MostWanted</h3>
                        </div>
                    </div>
                    <div class="k-portlet__body">
                        <!--begin: Datatable -->
                        <table class="table table-striped- table-bordered table-hover table-checkable" id="k_table_1">
                            <thead>
                                <tr>
                                    <th>nombreCompleto</th>
                                    <th>primerNombre</th>
                                    <th>segundoNombre</th>
                                    <th>primerApellido</th>
                                    <th>segundoApellido</th>
                                    <th>ciudad</th>
                                    <th>delito</th>
                                    <th>residencia</th>
                                    <th>masInformacion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="allMostWanted" items="${allMostWanted}">
                                    <tr>
                                        <td>${allMostWanted.nombreCompleto}</td>
                                        <td>${allMostWanted.primerNombre}</td>
                                        <td>${allMostWanted.segundoNombre}</td>
                                        <td>${allMostWanted.primerApellido}</td>
                                        <td>${allMostWanted.segundoApellido}</td>
                                        <td>${allMostWanted.ciudad}</td>
                                        <td>${allMostWanted.delito}</td>
                                        <td>${allMostWanted.residencia}</td>
                                        <td>${allMostWanted.masInformacion}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <!--end: Datatable -->
                    </div>
                    <div class="k-portlet__foot">
                        <div class="col k-align-right">
                            <div class="k-section__content k-section__content--border">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-success k-btn" data-toggle="modal" data-target="#exampleModal">Nuevo
                        Cliente</button>
                                <!--begin::Modal-->
                                <div class="modal fade  bd-example-modal-xl" id="exampleModal" role="dialog" aria-labelledby="" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="">Nuevo Cliente
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true" class="la la-remove"></span>
                                    </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="k-scroll" data-scroll="true" style="height: 800px;">
                                                    <form:form class="k-form k-form--label-right" modelAttribute="client" action="${urlForm}" method="POST">
                                                        <div class="modal-body">
                                                            <div class="k-section__body">
                                                                <h3 class="k-section__title k-section__title-lg">
                                                                    Informacion General:</h3>
                                                                <div class="k-separator k-separator--border-dashed k-separator--space-lg">
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Nombre
                                                            Propio:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="nombrepropio1" class="form-control" placeholder=""></form:input>
                                                                        <span class="form-text text-muted" required="required">Favor
                                                                ingrese el Nombre Propio</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Email:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="email" path="email" class="form-control" placeholder="" required="required"></form:input>
                                                                        <span class="form-text text-muted">Favor ingrese su Correo
                                                                Electronico</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Telefono:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="telefonocontacto1" class="form-control" placeholder="" required="required">
                                                                        </form:input>
                                                                        <span class="form-text text-muted">Favor ingrese su
                                                                Telefono</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Direccion:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="direccion1" class="form-control" placeholder="" required="required">
                                                                        </form:input>
                                                                        <span class="form-text text-muted">Favor ingrese su
                                                                Direccion</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Tipo de
                                                            Entidad:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="tipodeentidad" class="form-control" placeholder="" required="required">
                                                                        </form:input>
                                                                        <span class="form-text text-muted">Favor ingrese
                                                                el Tipo de Entidad</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Telefono:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="telefono1" class="form-control" placeholder="" required="required">
                                                                        </form:input>
                                                                        <span class="form-text text-muted">Favor ingrese
                                                                su Telefono</span>
                                                                    </div>
                                                                </div>
                                                                <div class="k-separator k-separator--border-dashed k-separator--space-lg">
                                                                </div>
                                                                <h3 class="k-section__title k-section__title-lg">
                                                                    Direcciones:</h3>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Departamento:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="departamento" class="form-control" placeholder=""></form:input>
                                                                        <span class="form-text text-muted">Favor ingrese
                                                                el Departamento</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Ciudad:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="ciudad" class="form-control" placeholder=""></form:input>
                                                                        <span class="form-text text-muted">Favor ingrese
                                                                la Ciudad</span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <label class="col-lg-3 col-form-label">Municipio:</label>
                                                                    <div class="col-lg-6">
                                                                        <form:input type="text" path="municipio" class="form-control" placeholder=""></form:input>
                                                                        <span class="form-text text-muted">Favor ingrese
                                                                el Municipio</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger k-btn" data-dismiss="modal">Cerrar</button>
                                                            <button type="submit" class="btn btn-success k-btn">Enviar</button>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Modal-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end:: Content -->
            <!-- end:: Content -->
            </div>