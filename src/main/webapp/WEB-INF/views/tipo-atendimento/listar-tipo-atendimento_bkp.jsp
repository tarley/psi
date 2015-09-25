<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name=description content="Psy - Painel Administrativo" />
<meta name=viewport content="width=device-width, initial-scale=1" />

<title>Psi - Tipo de Atendimento</title>

<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-responsive.css">
<link rel="stylesheet" href="../resources/css/theme.css">
<link rel="stylesheet" href="../resources/css/jquery.dataTables.min.css">

<script src="../resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../resources/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#tipoAtendimentoTable').DataTable({
		"language": {
			"url": "../resources/i18n/datatables-pt_BR.json"
		}
	});
} );
</script>

</head>
<body>

	<!-- Barra | Cabe�alho  -->

	<div class="navbar navbar-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img src="../resources/img/logo11.png" alt="Logo PSI" title="Ir para P�gina Inicial" /> </a>
			</div>
		</div>
	</div>

	<!-- Barra | Container  -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span10 "></div>
			<div class="span2 text-right">
				<span class="icon-user status"></span> Ol�, <a href="#">Usu�rio | Sair</a>
			</div>
		</div>


		<div class="container-fluid">
			<div class="row-fluid ">
				<div class="span12 titulo">
					<h6> Tipo de Atendimento </h6>
				</div>
			</div>
		</div>
		
		<br>
		
		<!-- Text field - Nome Tipo Atendimento  -->
		<div class="container-fluid">
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span12">
			<div class="well">
				<h4>Pesquisar Tipo de Atendimento</h4>
			</div>
			
			<div class="row-fluid">
			<form>
				<div class="span12 text-right">
					<input type="submit" class="btn btn-success" 
					formaction="cadastrarTipoAtendimento" value="Cadastrar Novo"/>
				</div>
			</form>
			</div>	
			
			<br/>
			<br/>
			
			<table id="tipoAtendimentoTable" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Nome</th>
						<th>A��es</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach  var="listValue" items="${lists}">
					<tr>
							<td style="text-align: center">${listValue}</td>
							<td style="width: 100px; text-align: center" >
							<a href="#"><img alt="Editar" src="../resources/img/editar.png" title="Editar" > 
							<img alt="Excluir" src="../resources/img/excluir.png" title="Excluir" ></a></td>
					</tr>
					
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		</div>
</div>
	</div>

</body>
</html>

