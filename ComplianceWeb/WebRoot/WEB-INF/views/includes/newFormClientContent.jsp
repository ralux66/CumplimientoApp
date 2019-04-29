<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
            <spring:url value="/client/saveclient" var="urlForm" />
            <spring:url value="/" var="urlRoot" />
            <spring:url value="../resources" var="urlPublic" />
            <!-- begin:: Subheader -->
            <div class="k-subheader k-grid__item" id="k_subheader">
                <div class="k-subheader__main">
                    <h3 class="k-subheader__title">
                        Nuevo Cliente
                    </h3>
                    <span class="k-subheader__separator k-hidden"></span>
                    <div class="k-subheader__breadcrumbs">
                        <a href="#" class="k-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                        <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
                Extendido </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Formularios </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
                Widgets </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Nuevo Cliente </a>
                        <!-- <span class="k-subheader__breadcrumbs-link k-subheader__breadcrumbs-link--active">Active link</span> -->
                    </div>
                </div>
                <div class="k-subheader__toolbar">
                    <div class="k-subheader__wrapper">
                        <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="k-tooltip" title="Reports" data-placement="top"><i class="flaticon2-writing"></i></a>
                        <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="k-tooltip" title="Calendar" data-placement="top"><i class="flaticon2-hourglass-1"></i></a>
                        <div class="dropdown dropdown-inline" data-toggle="k-tooltip" title="Quick actions" data-placement="top">
                            <a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="dropdown" data-offset="0 0" aria-haspopup="true" aria-expanded="false"> <i class="flaticon2-add-1"></i> </a>
                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                <ul class="k-nav k-nav--active-bg" role="tablist">
                                    <li class="k-nav__item">
                                        <a href="${urlRoot}client/listclient" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-psd"></i> <span class="k-nav__link-text">Lista de
                                    Clientes</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab"> <i class="k-nav__link-icon flaticon2-supermarket"></i>
                                            <span class="k-nav__link-text">Mensaje</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Producto</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab">
                                            <i class="k-nav__link-icon flaticon2-chart2"></i> <span class="k-nav__link-text">Reporte</span>
                                            <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--danger k-badge--inline k-badge--rounded">pdf</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-sms"></i> <span class="k-nav__link-text">Publicar</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-avatar"></i> <span class="k-nav__link-text">Cliente</span> </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="dropdown dropdown-inline" data-toggle="k-tooltip" title="Quick actions" data-placement="top">
                            <a href="#" class="btn btn btn-label btn-label-brand btn-bold btn-elevate" data-toggle="dropdown" data-offset="0 0" aria-haspopup="true" aria-expanded="false"> Reportes </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <ul class="k-nav k-nav--active-bg" id="k_nav_1" role="tablist">
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-psd"></i> <span class="k-nav__link-text">Productos</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab" id="k_nav_link_1">
                                            <i class="k-nav__link-icon flaticon2-supermarket"></i> <span class="k-nav__link-text">Clientes</span>
                                            <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--success k-badge--inline k-badge--rounded">6</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Orders</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-shopping-cart"></i>
                                            <span class="k-nav__link-text">Reports</span> </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a class="k-nav__link" role="tab" id="k_nav_link_2">
                                            <i class="k-nav__link-icon flaticon2-chart2"></i> <span class="k-nav__link-text">Consola</span>
                                            <span class="k-nav__link-badge"> <span
                                        class="k-badge k-badge--danger k-badge--inline k-badge--rounded">nuevo</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="k-nav__item">
                                        <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-sms"></i> <span class="k-nav__link-text">Ajustes</span> </a>
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
                <!--begin::Portlet-->
                <div class="k-portlet">
                    <div class="k-portlet__head">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Nuevo Cliente
                            </h3>
                        </div>
                    </div>
                    <!--begin::Form-->
                    <div class="k-portlet__body">
                        <form:form class="k-form k-form--label-right" modelAttribute="client" action="${urlForm}" method="POST">
                            <div class="modal-body">
                                <div class="k-section__body">
                                    <h3 class="k-section__title k-section__title-lg">
                                        Informacion General:</h3>
                                    <div class="k-separator k-separator--border-dashed k-separator--space-lg"></div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Nombre
                                Propio:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="nombrepropio1" class="form-control" placeholder="">
                                            </form:input>
                                            <span class="form-text text-muted" required="required">Favor ingrese su Nombre
                                    Propio</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Correo Electronico:</label>
                                        <div class="col-lg-6">
                                            <form:input type="email" path="email" class="form-control" placeholder="" required="required"></form:input>
                                            <span class="form-text text-muted">Favor ingrese su Correo Electronico</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Telefono:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="telefonocontacto1" class="form-control" placeholder="" required="required"></form:input>
                                            <span class="form-text text-muted">Favor ingrese su Telefono</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Direccion:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="direccion1" class="form-control" placeholder="" required="required"></form:input>
                                            <span class="form-text text-muted">Favor ingrese su Direccion</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Tipo de
                                Entidad:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="tipodeentidad" class="form-control" placeholder="" required="required"></form:input>
                                            <span class="form-text text-muted">Favor ingrese el Tipo de Entidad</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Telefono:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="telefono1" class="form-control" placeholder="" required="required"></form:input>
                                            <span class="form-text text-muted">Favor ingrese su Telefono</span>
                                        </div>
                                    </div>
                                    <div class="k-separator k-separator--border-dashed k-separator--space-lg"></div>
                                    <h3 class="k-section__title k-section__title-lg">
                                        Direcciones:</h3>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Departamento:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="departamento" class="form-control" placeholder="">
                                            </form:input>
                                            <span class="form-text text-muted">Favor ingrese su Departamento</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Ciudad:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="ciudad" class="form-control" placeholder=""></form:input>
                                            <span class="form-text text-muted">Favor ingrese su Ciudad</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Municipio:</label>
                                        <div class="col-lg-6">
                                            <form:input type="text" path="municipio" class="form-control" placeholder="">
                                            </form:input>
                                            <span class="form-text text-muted">Favor ingrese su Municipio</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success k-btn">Enviar</button>
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