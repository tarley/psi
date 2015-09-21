<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/resources/css/bootstrap.css" var="bootstrap"></spring:url>
<spring:url value="/resources/css/bootstrap-responsive.css" var="bootstrapResponsive"></spring:url>
<spring:url value="/resources/css/theme.css" var="theme"></spring:url>

<link rel="stylesheet" href="${bootstrap}"/>
<link rel="stylesheet" href="${bootstrapResponsive}"/>
<link rel="stylesheet" href="${theme}"/>