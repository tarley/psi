<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Estilos Globais  -->

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrap"></spring:url>
<spring:url value="/resources/css/theme.css" var="theme"></spring:url>
<spring:url value="/resources/css/jquery.dataTables.min.css" var="dataTables"></spring:url>

<link rel="stylesheet" href="${bootstrap}"/>
<link rel="stylesheet" href="${theme}"/>
<link rel="stylesheet" href="${dataTables}"/>

<!-- Estilos: Telas Administrativas -->

<spring:url value="/resources/css/datatables.min" var="datatable_min"></spring:url>
<link rel="stylesheet" href="${datatable_min}"/>
