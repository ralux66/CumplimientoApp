<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <spring:url value="../resources" var="urlPublic" />
    <!-- begin:: Subheader -->
    <div class="k-subheader k-grid__item" id="k_subheader">
        <div class="k-subheader__main">
            <h3 class="k-subheader__title">
                Dashboard
            </h3>
            <span class="k-subheader__separator k-hidden"></span>
            <div class="k-subheader__breadcrumbs">
                <a href="#" class="k-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link">
                Tableros </a> <span class="k-subheader__breadcrumbs-separator"></span> <a href="" class="k-subheader__breadcrumbs-link"> Navy Aside </a>
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
                                <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-psd"></i> <span class="k-nav__link-text">Documento</span> </a>
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
                                <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-sms"></i> <span class="k-nav__link-text">Entrada</span> </a>
                            </li>
                            <li class="k-nav__item">
                                <a href="" class="k-nav__link"> <i class="k-nav__link-icon flaticon2-avatar"></i> <span class="k-nav__link-text">Cliente</span> </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="btn btn-sm btn-elevate btn-brand btn-elevate" id="k_dashboard_daterangepicker" data-toggle="k-tooltip" title="" data-placement="left" data-original-title="Select dashboard daterange">
                    <span class="k-opacity-7" id="k_dashboard_daterangepicker_title">Today:</span>&nbsp; <span class="k-font-bold" id="k_dashboard_daterangepicker_date">Ene 11</span> <i class="flaticon-calendar-with-a-clock-time-tools k-padding-l-5 k-padding-r-0"></i>                    </a>
            </div>
        </div>
    </div>
    <!-- end:: Subheader -->
    <!-- begin:: Content -->
    <!-- begin:: Content -->
    <div class="k-content k-grid__item k-grid__item--fluid" id="k_content">
        <!--begin::Dashboard 1-->
        <!--begin::Row-->
        <div class="row">
            <div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid">
                    <div class="k-portlet__head k-portlet__head--noborder">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Author Sales
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar-wrapper">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                        class="flaticon-more-1"></i> </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i>
                                                    <span class="k-nav__link-text">Copiar</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
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
                                        <div class="k-widget-19__bar-45" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="45"></div>
                                    </div>
                                    <div class="k-widget-19__bar">
                                        <div class="k-widget-19__bar-95" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="95"></div>
                                    </div>
                                    <div class="k-widget-19__bar">
                                        <div class="k-widget-19__bar-63" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="63"></div>
                                    </div>
                                    <div class="k-widget-19__bar">
                                        <div class="k-widget-19__bar-11" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="11"></div>
                                    </div>
                                    <div class="k-widget-19__bar">
                                        <div class="k-widget-19__bar-46" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="46"></div>
                                    </div>
                                    <div class="k-widget-19__bar">
                                        <div class="k-widget-19__bar-88" data-toggle="k-tooltip" data-skin="brand" data-placement="top" title="88"></div>
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
                    <div class="k-portlet__head k-portlet__head--noborder">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Tecnologias
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar-wrapper">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                        class="flaticon-more-1"></i> </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i>
                                                    <span class="k-nav__link-text">Copiar</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
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
                                    <div class="k-widget-21__legend"> <i class="k-bg-brand"></i> <span>HTML</span> </div>
                                    <div class="k-widget-21__legend"> <i class="k-shape-bg-color-4"></i> <span>CSS</span>
                                    </div>
                                    <div class="k-widget-21__legend"> <i class="k-shape-bg-color-3"></i>
                                        <span>Angular</span> </div>
                                </div>
                                <div class="k-widget-21__chart">
                                    <div class="k-widget-21__stat">+37%</div>
                                    <!--Doc: For the chart initialization refer to "widgetTechnologiesChart" function in "src\theme\app\scripts\custom\dashboard.js" -->
                                    <canvas id="k_widget_technologies_chart" style="height: 110px; width: 110px;"></canvas>
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
                    <div class="k-portlet__head k-portlet__head--noborder">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Total Ordenes
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar-wrapper">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                        class="flaticon-more-1"></i> </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i>
                                                    <span class="k-nav__link-text">Copiar</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
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
                                    <!--Doc: For the chart initialization refer to "widgetTotalOrdersChart" function in "src\theme\app\scripts\custom\dashboard.js" -->
                                    <canvas id="k_widget_total_orders_chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Portlet-->
            </div>
            <div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid k-widget ">
                    <div class="k-portlet__body">
                        <div id="k-widget-slider-13-1" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
                            <div class="k-slider__head">
                                <div class="k-slider__label">Anuncios</div>
                                <div class="k-slider__nav">
                                    <a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-13-1" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a>
                                    <a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-13-1" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a>
                                </div>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Keen Admin Launch Day</a>
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__label">
                                                <div class="btn btn-sm btn-label btn-bold"> 07 OCT, 2018 </div>
                                            </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View</a> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Incredibly Positive Reviews</a>
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__title">
                                                <div class="btn btn-sm btn-label btn-bold"> 17 NOV, 2018 </div>
                                            </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View</a> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Award Winning Theme</a>
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__label">
                                                <div class="btn btn-sm btn-label btn-bold"> 03 SEP, 2018 </div>
                                            </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View</a> </div>
                                        </div>
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
                <div class="k-portlet k-portlet--height-fluid k-widget-13">
                    <div class="k-portlet__body">
                        <div id="k-widget-slider-13-2" class="k-slider carousel slide" data-ride="carousel" data-interval="4000">
                            <div class="k-slider__head">
                                <div class="k-slider__label">Proyectos</div>
                                <div class="k-slider__nav">
                                    <a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-13-2" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a>
                                    <a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-13-2" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a>
                                </div>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Keen Admin Launch Day</a>
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__progress">
                                                <div class="k-widget-13__progress-info">
                                                    <div class="k-widget-13__progress-status"> Progress </div>
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
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__progress">
                                                <div class="k-widget-13__progress-info">
                                                    <div class="k-widget-13__progress-status"> Progress </div>
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
                                            <div class="k-widget-13__desc"> To start a blog, think of a topic about and first brainstorm party is ways to write details </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__progress">
                                                <div class="k-widget-13__progress-info">
                                                    <div class="k-widget-13__progress-status"> Progress </div>
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
            </div>
            <div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid k-widget-13">
                    <div class="k-portlet__body">
                        <div id="k-widget-slider-13-3" class="k-slider carousel slide" data-ride="carousel" data-interval="12000">
                            <div class="k-slider__head">
                                <div class="k-slider__label">Agenda de hoy</div>
                                <div class="k-slider__nav">
                                    <a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-13-3" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a>
                                    <a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-13-3" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a>
                                </div>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Octa Pre-Launch Meeting</a>
                                            <div class="k-widget-13__desc k-widget-13__desc--xl k-font-brand"> 9:20AM - 10:00AM </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__label"> <i class="fa fa-map-marker-alt k-label-font-color-2"></i> <span class="k-label-font-color-2">490 E Main St. Norwich...</span> </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">UI/UX Design Updates</a>
                                            <div class="k-widget-13__desc k-widget-13__desc--xl k-font-brand"> 11:15AM - 12:30PM </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__label"> <i class="fa fa-map-marker-alt k-label-font-color-2"></i> <span class="k-label-font-color-2">246 R St. Manhattan NY...</span> </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item k-slider__body">
                                    <div class="k-widget-13">
                                        <div class="k-widget-13__body">
                                            <a class="k-widget-13__title" href="#">Sales Report Summary Meet-up</a>
                                            <div class="k-widget-13__desc k-widget-13__desc--xl k-font-brand"> 4:30PM - 5:30PM </div>
                                        </div>
                                        <div class="k-widget-13__foot">
                                            <div class="k-widget-13__label"> <i class="fa fa-map-marker-alt k-label-font-color-2"></i> <span class="k-label-font-color-2">492 F Sub St. Norwich CT...</span> </div>
                                            <div class="k-widget-13__toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">View Map</a> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Portlet-->
            </div>
        </div>
        <!--end::Row-->
        <!--begin::Row-->
        <div class="row">
            <div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid">
                    <div class="k-portlet__head">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Los Mejores Productos
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar-wrapper">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                        class="flaticon-more-1"></i> </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i>
                                                    <span class="k-nav__link-text">Copiar</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="k-portlet__body">
                        <div class="k-widget-1">
                            <ul class="nav nav-pills nav-tabs-btn nav-pills-btn-brand" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#k_tabs_19_15c3cb6285ba4f" role="tab">
                                        <span class="nav-link-icon"><i class="flaticon2-graphic"></i></span>
                                        <span class="nav-link-title">Ajustes</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#k_tabs_19_25c3cb6285ba4f" role="tab">
                                        <span class="nav-link-icon"><i class="flaticon2-position"></i></span>
                                        <span class="nav-link-title">Code</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#k_tabs_19_35c3cb6285ba4f" role="tab">
                                        <span class="nav-link-icon"><i class="flaticon2-layers-1"></i></span>
                                        <span class="nav-link-title">Design</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="k_tabs_19_15c3cb6285ba4f" role="tabpanel">
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title"> HTML 5 Templates </a>
                                            <div class="k-widget-1__item-desc">Font-end,Admin & Email</div>
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
                                            <a href="#" class="k-widget-1__item-title"> Wordpress Themes </a>
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
                                            <a href="#" class="k-widget-1__item-title">eCommerce Websites</a>
                                            <div class="k-widget-1__item-desc">Shops, Fasion wep sites & atc</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">-16%</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 80%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">UI/UX Design</a>
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
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">Freebie Themes</a>
                                            <div class="k-widget-1__item-desc">Font-end & Admin</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">+34</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="k_tabs_19_25c3cb6285ba4f" role="tabpanel">
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">UI/UX Design</a>
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
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">HTML 5 Templates</a>
                                            <div class="k-widget-1__item-desc">Font-end,Admin & Email</div>
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
                                            <a href="#" class="k-widget-1__item-title">Wordpress Themes</a>
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
                                            <a href="#" class="k-widget-1__item-title">eCommerce Websites</a>
                                            <div class="k-widget-1__item-desc">Shops, Fasion wep sites & atc</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">-16%</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 80%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">Freebie Themes</a>
                                            <div class="k-widget-1__item-desc">Font-end & Admin</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">+34</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="k_tabs_19_35c3cb6285ba4f" role="tabpanel">
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">eCommerce Websites</a>
                                            <div class="k-widget-1__item-desc">Shops, Fasion wep sites & atc</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">-16%</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 80%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">UI/UX Design</a>
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
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">Latest Trends</a>
                                            <div class="k-widget-1__item-desc">eCommerce Website, Plugin</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">+34%</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 50%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-1__item">
                                        <div class="k-widget-1__item-info">
                                            <a href="#" class="k-widget-1__item-title">HTML 5 Templates</a>
                                            <div class="k-widget-1__item-desc">Font-end,Admin & Email</div>
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
                                            <a href="#" class="k-widget-1__item-title">Freebie Themes</a>
                                            <div class="k-widget-1__item-desc">Font-end & Admin</div>
                                        </div>
                                        <div class="k-widget-1__item-stats">
                                            <div class="k-widget-1__item-value">+34</div>
                                            <div class="k-widget-1__item-progress">
                                                <div class="progress">
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
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
            <div class="col-lg-12 col-xl-8 order-lg-2 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid">
                    <div class="k-portlet__head">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Estadisticas de Ventas
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-toolbar-wrapper">
                                <div class="dropdown dropdown-inline">
                                    <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                        class="flaticon-more-1"></i> </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="k-nav">
                                            <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i>
                                                    <span class="k-nav__link-text">Copiar</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                            </li>
                                            <li class="k-nav__item">
                                                <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="k-portlet__body">
                        <div class="k-widget-9">
                            <div class="k-widget-9__panel">
                                <div class="k-widget-9__legends">
                                    <div class="k-widget-9__legend">
                                        <div class="k-widget-9__legend-bullet k-bg-brand"></div>
                                        <div class="k-widget-9__legend-label">Autor</div>
                                    </div>
                                    <div class="k-widget-9__legend">
                                        <div class="k-widget-9__legend-bullet k-label-bg-color-1"></div>
                                        <div class="k-widget-9__legend-label">Cliente</div>
                                    </div>
                                </div>
                                <div class="k-widget-9__toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button" class="btn btn-default dropdown-toggle btn-font-sm btn-bold btn-upper" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> August
                                    </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <ul class="k-nav">
                                                <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span> </li>
                                                <li class="k-nav__item">
                                                    <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-print"></i> <span class="k-nav__link-text">Imprimir</span> </a>
                                                </li>
                                                <li class="k-nav__item">
                                                    <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copiar</span> </a>
                                                </li>
                                                <li class="k-nav__item">
                                                    <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
                                                </li>
                                                <li class="k-nav__item">
                                                    <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-text-o"></i> <span class="k-nav__link-text">CSV</span> </a>
                                                </li>
                                                <li class="k-nav__item">
                                                    <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-pdf-o"></i> <span class="k-nav__link-text">PDF</span> </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="k-widget-9__chart">
                                <!--Doc: For the chart initialization refer to "widgetSalesStatisticsChart" function in "src\theme\app\scripts\custom\dashboard.js" -->
                                <canvas id="k_chart_sales_statistics" height="300"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Portlet-->
            </div>
            <div class="col-lg-6 col-xl-4 order-lg-1 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid k-portlet--tabs">
                    <div class="k-portlet__head">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Ultimas Tareas
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-bold" role="tablist">
                                <li class="nav-item"> <a class="nav-link active show" data-toggle="tab" href="#k_portlet_tabs_1_1_content" role="tab" aria-selected="false"> Hoy </a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_2_content" role="tab" aria-selected="false"> Semana </a>
                                </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#k_portlet_tabs_1_3_content" role="tab" aria-selected="true"> Mensual </a>
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
                                            <a href="#" class="k-widget-5__item-title"> Management meeting </a>
                                            <div class="k-widget-5__item-datetime"> 09:30 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Replace datatables rows color </a>
                                            <div class="k-widget-5__item-datetime"> 12:00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Export Navitare booking table </a>
                                            <div class="k-widget-5__item-datetime"> 01:20 PM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> NYCS internal discussion </a>
                                            <div class="k-widget-5__item-datetime"> 03: 00 PM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Project Launch </a>
                                            <div class="k-widget-5__item-datetime"> 11: 00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Server maintenance </a>
                                            <div class="k-widget-5__item-datetime"> 4: 30 PM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Export Navitare booking table </a>
                                            <div class="k-widget-5__item-datetime"> 01:20 PM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Replace datatables rows color </a>
                                            <div class="k-widget-5__item-datetime"> 12:00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Export Navitare booking table </a>
                                            <div class="k-widget-5__item-datetime"> 01:20 PM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Replace datatables rows color </a>
                                            <div class="k-widget-5__item-datetime"> 12:00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> NYCS internal discussion </a>
                                            <div class="k-widget-5__item-datetime "> 03: 00 PM </div>
                                        </div>
                                        <div class="k-widget-5__item-check ">
                                            <label class="k-radio">
                                            <input type="radio" checked="checked" name="radio1">
                                            <span></span>
                                        </label>
                                        </div>
                                    </div>
                                    <div class="k-widget-5__item k-widget-5__item--info ">
                                        <div class="k-widget-5__item-info ">
                                            <a href="#" class="k-widget-5__item-title"> Management meeting </a>
                                            <div class="k-widget-5__item-datetime "> 09:30 AM </div>
                                        </div>
                                        <div class="k-widget-5__item-check ">
                                            <label class="k-radio">
                                            <input type="radio" checked="checked" name="radio1">
                                            <span></span>
                                        </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="k_portlet_tabs_1_3_content" role="tabpanel">
                                <div class="k-widget-5 ">
                                    <div class="k-widget-5__item k-widget-5__item--success">
                                        <div class="k-widget-5__item-info ">
                                            <a href="#" class="k-widget-5__item-title"> NYCS internal discussion </a>
                                            <div class="k-widget-5__item-datetime"> 03: 00 PM </div>
                                        </div>
                                        <div class="k-widget-5__item-check">
                                            <label class="k-radio">
                                            <input type="radio" checked="checked" name="radio1">
                                            <span></span>
                                        </label>
                                        </div>
                                    </div>
                                    <div class="k-widget-5__item k-widget-5__item--danger">
                                        <div class="k-widget-5__item-info ">
                                            <a href="#" class="k-widget-5__item-title"> Replace datatables rows color </a>
                                            <div class="k-widget-5__item-datetime"> 12:00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Replace datatables rows color </a>
                                            <div class="k-widget-5__item-datetime"> 12:00 AM </div>
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
                                            <a href="#" class="k-widget-5__item-title"> Export Navitare booking table </a>
                                            <div class="k-widget-5__item-datetime"> 01:20 PM </div>
                                        </div>
                                        <div class="k-widget-5__item-check">
                                            <label class="k-radio">
                                            <input type="radio" checked="checked" name="radio1">
                                            <span></span>
                                        </label>
                                        </div>
                                    </div>
                                    <div class="k-widget-5__item k-widget-5__item--brand">
                                        <div class="k-widget-5__item-info ">
                                            <a href="#" class="k-widget-5__item-title"> Export Navitare booking table </a>
                                            <div class="k-widget-5__item-datetime "> 01:20 PM </div>
                                        </div>
                                        <div class="k-widget-5__item-check">
                                            <label class="k-radio">
                                            <input type="radio" checked="checked" name="radio1">
                                            <span></span>
                                        </label>
                                        </div>
                                    </div>
                                    <div class="k-widget-5__item k-widget-5__item--info">
                                        <div class="k-widget-5__item-info ">
                                            <a href="#" class="k-widget-5__item-title"> Management meeting </a>
                                            <div class="k-widget-5__item-datetime"> 09:30 AM </div>
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
            <div class="col-lg-12 col-xl-8 order-lg-2 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid-half k-widget-14">
                    <div class="k-portlet__body">
                        <!-- Doc: The bootstrap carousel is a slideshow for cycling through a series of content, see https://getbootstrap.com/docs/4.1/components/carousel/ -->
                        <div id="k-widget-slider-14-1" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
                            <div class="k-slider__head">
                                <div class="k-slider__label">Nuevos Productos</div>
                                <div class="k-slider__nav">
                                    <a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-14-1" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a>
                                    <a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-14-1" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a>
                                </div>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="k-widget-14__body">
                                        <div class="k-widget-14__product">
                                            <div class="k-widget-14__thumb">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/blog/1.jpg" class="k-widget-14__image--landscape" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-14__content">
                                                <a href="#">
                                                    <h3 class="k-widget-14__title">
                                                        Active Smartwatch
                                                    </h3>
                                                </a>
                                                <div class="k-widget-14__desc"> Beautifully designed watch that helps you track your fitness and diet – while keeping you motivated! </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-14__data">
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title k-font-brand">246</div>
                                                <div class="k-widget-14__desc">Purchases</div>
                                            </div>
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title">37</div>
                                                <div class="k-widget-14__desc">Reviews</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-14__foot">
                                        <div class="k-widget-14__foot-info">
                                            <div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold"> 24 Nov, 2018 </div>
                                            <div class="k-widget-14__foot-desc">Date of Release</div>
                                        </div>
                                        <div class="k-widget-14__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a> </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="k-widget-14__body">
                                        <div class="k-widget-14__product">
                                            <div class="k-widget-14__thumb">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/blog/2.jpg" class="k-widget-14__image--landscape" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-14__content">
                                                <a href="#">
                                                    <h3 class="k-widget-14__title">
                                                        DSLR Lens
                                                    </h3>
                                                </a>
                                                <div class="k-widget-14__desc"> Wide-angle, Quick Focus. Emphasis is on modern lenses for 35 mm film SLRs and for DSLRs with sensor sizes less than or equal to 35 mm. </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-14__data">
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title k-font-brand">142</div>
                                                <div class="k-widget-14__desc">Purchases</div>
                                            </div>
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title">25</div>
                                                <div class="k-widget-14__desc">Reviews</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-14__foot">
                                        <div class="k-widget-14__foot-info">
                                            <div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold"> 24 Nov, 2018 </div>
                                            <div class="k-widget-14__foot-desc">Date of Release</div>
                                        </div>
                                        <div class="k-widget-14__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a> </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="k-widget-14__body">
                                        <div class="k-widget-14__product">
                                            <div class="k-widget-14__thumb">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/blog/4.jpg" class="k-widget-14__image--landscape" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-14__content">
                                                <a href="#">
                                                    <h3 class="k-widget-14__title">
                                                        Polaroid Camera
                                                    </h3>
                                                </a>
                                                <div class="k-widget-14__desc"> Instant is back! Make photos fun again with the new range of Polaroid Instant Cameras with Vintage Effects and Built in Flash </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-14__data">
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title k-font-brand">3578</div>
                                                <div class="k-widget-14__desc">Purchases</div>
                                            </div>
                                            <div class="k-widget-14__info">
                                                <div class="k-widget-14__info-title">457</div>
                                                <div class="k-widget-14__desc">Reviews</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-14__foot">
                                        <div class="k-widget-14__foot-info">
                                            <div class="k-widget-14__foot-label btn btn-sm btn-label-brand btn-bold"> 24 Nov, 2018 </div>
                                            <div class="k-widget-14__foot-desc">Date of Release</div>
                                        </div>
                                        <div class="k-widget-14__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Preview</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Details</a> </div>
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
                        <!-- Doc: The bootstrap carousel is a slideshow for cycling through a series of content, see https://getbootstrap.com/docs/4.1/components/carousel/ -->
                        <div id="k-widget-slider-14-2" class="k-slider carousel slide" data-ride="carousel" data-interval="8000">
                            <div class="k-slider__head">
                                <div class="k-slider__label">Nuevos Autores</div>
                                <div class="k-slider__nav">
                                    <a class="k-slider__nav-prev carousel-control-prev" href="#k-widget-slider-14-2" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> </a>
                                    <a class="k-slider__nav-next carousel-control-next" href="#k-widget-slider-14-2" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> </a>
                                </div>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="k-widget-15__body">
                                        <div class="k-widget-15__author">
                                            <div class="k-widget-15__photo">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/users/100_14.jpg" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-15__detail">
                                                <a href="#" class="k-widget-15__name">Andy John</a>
                                                <div class="k-widget-15__desc"> AngularJS Expert </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-15__wrapper">
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-success"><i
                                                    class="fa fa-envelope"></i></a>
                                                <a href="#" class="k-widget-15__info--item">sale@boatline.com</a>
                                            </div>
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-brand"><i
                                                    class="fa fa-phone"></i></a>
                                                <a href="#" class="k-widget-15__info--item">(+44) 345 345 4705</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-15__foot">
                                        <div class="k-widget-15__foot-info">
                                            <div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold"> 01 Sep, 2018 </div>
                                            <div class="k-widget-15__foot-desc">Joined Date</div>
                                        </div>
                                        <div class="k-widget-15__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a> </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="k-widget-15__body">
                                        <div class="k-widget-15__author">
                                            <div class="k-widget-15__photo">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/users/100_3.jpg" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-15__detail">
                                                <a href="#" class="k-widget-15__name">Patrick Smith</a>
                                                <div class="k-widget-15__desc"> ReactJS Expert </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-15__wrapper">
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-success"><i
                                                    class="fa fa-envelope"></i></a>
                                                <a href="#" class="k-widget-15__info--item">patrick@boatline.com</a>
                                            </div>
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-brand"><i
                                                    class="fa fa-phone"></i></a>
                                                <a href="#" class="k-widget-15__info--item">(+44) 345 345 5574</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-15__foot">
                                        <div class="k-widget-15__foot-info">
                                            <div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold"> 01 Sep, 2018 </div>
                                            <div class="k-widget-15__foot-desc">Joined Date</div>
                                        </div>
                                        <div class="k-widget-15__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a> </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="k-widget-15__body">
                                        <div class="k-widget-15__author">
                                            <div class="k-widget-15__photo">
                                                <a href="#">
                                                    <img src="${urlPublic}/assets/media/users/100_7.jpg" alt="" title="" />
                                                </a>
                                            </div>
                                            <div class="k-widget-15__detail">
                                                <a href="#" class="k-widget-15__name">Amanda Collin</a>
                                                <div class="k-widget-15__desc"> Project Manager </div>
                                            </div>
                                        </div>
                                        <div class="k-widget-15__wrapper">
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-success"><i
                                                    class="fa fa-envelope"></i></a>
                                                <a href="#" class="k-widget-15__info--item">amanda@boatline.com</a>
                                            </div>
                                            <div class="k-widget-15__info">
                                                <a href="#" class="btn btn-icon btn-sm btn-circle btn-brand"><i
                                                    class="fa fa-phone"></i></a>
                                                <a href="#" class="k-widget-15__info--item">(+44) 345 345 1247</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="k-widget-15__foot">
                                        <div class="k-widget-15__foot-info">
                                            <div class="k-widget-15__foot-label btn btn-sm btn-label-brand btn-bold"> 01 Sep, 2018 </div>
                                            <div class="k-widget-15__foot-desc">Joined Date</div>
                                        </div>
                                        <div class="k-widget-15__foot-toolbar"> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Message</a> <a href="#" class="btn btn-default btn-sm btn-bold btn-upper">Profile</a> </div>
                                    </div>
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
                            <h3 class="k-portlet__head-title">
                                Ultimas Subidas
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-actions"> <a href="#" class="btn btn-default btn-upper btn-sm btn-bold">TODOS LOS ARCHIVOS</a> </div>
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
                                        <a href="#" class="k-widget-7__item-title"> Keeg Design Reqs </a>
                                        <div class="k-widget-7__item-desc"> 95 MB </div>
                                    </div>
                                    <div class="k-widget-7__item-toolbar">
                                        <div class="dropdown dropdown-inline">
                                            <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                                class="flaticon-more-1"></i> </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <ul class="k-nav">
                                                    <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-eye"></i> <span class="k-nav__link-text">Vistas</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-comment-o"></i> <span class="k-nav__link-text">Comentarios</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copiar</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
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
                                        <a href="#" class="k-widget-7__item-title"> S.E.R Agreement </a>
                                        <div class="k-widget-7__item-desc"> 805 MB </div>
                                    </div>
                                    <div class="k-widget-7__item-toolbar">
                                        <div class="dropdown dropdown-inline">
                                            <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                                class="flaticon-more-1"></i> </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <ul class="k-nav">
                                                    <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-eye"></i> <span class="k-nav__link-text">Vistas</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-comment-o"></i> <span class="k-nav__link-text">Comentarios</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copiar</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
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
                                        <a href="#" class="k-widget-7__item-title"> Capturas de Pantalla </a>
                                        <div class="k-widget-7__item-desc"> 4 MB </div>
                                    </div>
                                    <div class="k-widget-7__item-toolbar">
                                        <div class="dropdown dropdown-inline">
                                            <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                                class="flaticon-more-1"></i> </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <ul class="k-nav">
                                                    <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-eye"></i> <span class="k-nav__link-text">Vistas</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-comment-o"></i> <span class="k-nav__link-text">Comentarios</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copiar</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
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
                                        <a href="#" class="k-widget-7__item-title"> ST.11 Dacuments </a>
                                        <div class="k-widget-7__item-desc"> Unknown </div>
                                    </div>
                                    <div class="k-widget-7__item-toolbar">
                                        <div class="dropdown dropdown-inline">
                                            <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                                class="flaticon-more-1"></i> </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <ul class="k-nav">
                                                    <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">Herramientas de Exportacion</span>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-eye"></i> <span class="k-nav__link-text">Vistas</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-comment-o"></i> <span class="k-nav__link-text">Comentarios</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copiar</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
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
                                        <a href="#" class="k-widget-7__item-title"> XML AOL Data Fetchin </a>
                                        <div class="k-widget-7__item-desc"> 4 MB </div>
                                    </div>
                                    <div class="k-widget-7__item-toolbar">
                                        <div class="dropdown dropdown-inline">
                                            <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
                                                class="flaticon-more-1"></i> </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <ul class="k-nav">
                                                    <li class="k-nav__section k-nav__section--first"> <span class="k-nav__section-text">EXPORT TOOLS</span> </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-eye"></i> <span class="k-nav__link-text">View</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-comment-o"></i> <span class="k-nav__link-text">Coments</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-copy"></i> <span class="k-nav__link-text">Copy</span> </a>
                                                    </li>
                                                    <li class="k-nav__item">
                                                        <a href="#" class="k-nav__link"> <i class="k-nav__link-icon la la-file-excel-o"></i> <span class="k-nav__link-text">Excel</span> </a>
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
                                    <span>Arrastrar archivos aqui...</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Portlet-->
            </div>
            <div class="col-lg-12 col-xl-8 order-lg-3 order-xl-1">
                <!--begin::Portlet-->
                <div class="k-portlet k-portlet--height-fluid">
                    <div class="k-portlet__head k-portlet__head--lg k-portlet__head--noborder k-portlet__head--break-sm">
                        <div class="k-portlet__head-label">
                            <h3 class="k-portlet__head-title">
                                Ordenes Recientes <small>32500 total</small>
                            </h3>
                        </div>
                        <div class="k-portlet__head-toolbar">
                            <div class="k-portlet__head-wrapper k-form">
                                <div class="k-form__group k-form__group--inline k-margin-r-10">
                                    <div class="k-form__label">Sort By:</div>
                                    <div class="k-form__control" style="width: 160px;">
                                        <select class="form-control bootstrap-select" id="k_form_status" title="Status">
                                        <option value="1">Pendientes</option>
                                        <option value="2">Enviadas</option>
                                        <option value="3">Canceladas</option>
                                        <option value="4">Exitosas</option>
                                        <option value="5">Informacion</option>
                                        <option value="6">Peligro</option>
                                    </select>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-brand btn-upper btn-bold">Nuevo Registro</a>
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
        </div>
        <!--end::Row-->
        <!--end::Dashboard 1-->
    </div>
    <!-- end:: Content -->
    <!-- end:: Content -->
    </div>