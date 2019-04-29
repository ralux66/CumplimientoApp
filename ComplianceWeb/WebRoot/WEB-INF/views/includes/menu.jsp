<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <spring:url value="/" var="urlRoot" />

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="${urlRoot}">Inicio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <c:forEach var="modulosPerfilesList" items="${user.idperfil.modulosPerfilesList}" varStatus="loop">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						${modulosPerfilesList.idmodulo.nombre} </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${urlRoot}${modulosPerfilesList.idmodulo.menusList[loop.index].custom1}">${modulosPerfilesList.idmodulo.menusList[loop.index].nombremenu}</a>
                            </div>
                        </li>
                    </c:forEach>
                    <li class="nav-item"><a class="nav-link disabled" href="#">Desabilitado</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
            </div>
        </nav>