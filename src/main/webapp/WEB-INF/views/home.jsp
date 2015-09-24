<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PSI</title>

<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<a class="brand" href="home.html"><img
				src="resources/img/logo11.png" alt="Logo PSI"
				title="Ir para Página Inicial" /> </a>
		</div>
	</div>
	<br />

	<div class="container">
		<div class="row">
			<div class="span12">
				&nbsp;&nbsp; </span> <br /> <br /> <br />
			</div>
		</div>
	</div>
	<div class="container-fluid">

		<div class="row-fluid">
			<div class="span12" style="text-align: right">
				<i class="icon-user"></i> Olá, Usuário | <span
					style="color: #1E90FF;">SAIR</span> <br /> <br /> <br /> <br />
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<h4>Consultar Unidades</h4>
		<hr>
	</div>
	<div class="container-fixed">
		<table id="unidadesTable" class="display" cellspacing="0"
			width="100%">
			<thead>
				<tr>
					<th>Nome</th>
				</tr>
			</thead>

			<tbody>
<%-- 				<c:forEach var="listValue" items="${lists}"> --%>
					<tr>
						<td style="text-align: center">teste</td>
					</tr>

<%-- 				</c:forEach> --%>
			</tbody>
		</table>
	</div>

	<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
	
	<script>
		$(document).ready(function() {
			$('#unidadesTable').DataTable({
				"language": {
					"url": "../resources/i18n/datatables-pt_BR.json"
				}
			});
		} );
	</script>
</body>
</html>
