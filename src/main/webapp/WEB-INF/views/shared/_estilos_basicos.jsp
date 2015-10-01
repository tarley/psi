<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrap"></spring:url>
<spring:url value="/resources/css/bootstrap-responsive.min.css" var="bootstrapResponsive"></spring:url>
<spring:url value="/resources/css/theme.css" var="theme"></spring:url>
<spring:url value="/resources/css/psi.css" var="psi"></spring:url>
<spring:url value="/resources/css/jquery.dataTables.min.css" var="dataTables"></spring:url>

<link rel="stylesheet" href="${bootstrap}"/>
<link rel="stylesheet" href="${bootstrapResponsive}"/>
<link rel="stylesheet" href="${theme}"/>
<link rel="stylesheet" href="${psi}"/>
<link rel="stylesheet" href="${dataTables}"/>