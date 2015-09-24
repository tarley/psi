<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/resources/js/jquery-1.11.3.min.js" var="jquery"></spring:url>
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap"></spring:url>
<spring:url value="/resources/js/jquery.dataTables.min.js" var="dataTables"></spring:url>

<script src="${jquery}" type="text/javascript"></script>
<script src="${bootstrap}" type="text/javascript"></script>
<script src="${dataTables}" type="text/javascript"></script>
