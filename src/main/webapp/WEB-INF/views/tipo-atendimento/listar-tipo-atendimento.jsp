<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> PSI | Listar Tipo Atendimento</title>
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<link rel="stylesheet" href="../resources/css/bootstrap.css"/>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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

	<!-- Barra | Cabeçalho  -->


		<nav class="navbar navbar-default navbar-fixed-top  barra">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a class="navbar-brand logo" href="#"><img  alt="Brand" src="../resources/img/logo.png"  /></a>
			</div>
			<div class="blocoLogin">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Usuário | Sair 
			</div>
		</div>
	</nav>
		<!-- Text field - Nome Tipo Atendimento  -->
		<div class="container blocoPai ">
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
			
			<br/><br/>
			
			<table id="tipoAtendimentoTable" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Ações</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${listaTipoAtendimentos}" var="tipoAtendimentos">
						<tr>
							<td style="text-align: center">${tipoAtendimentos.des_tipo_atendimento}</td>
							<td style="width: 100px; text-align: center" >
								<a href="editarTipoAtendimento?id=${tipoAtendimentos.cod_tipo_atendimento}"><img alt="Editar" src="../resources/img/editar.png" title="Editar" > </a>
								<!-- <a href="excluirTipoAtendimento?id=${tipoAtendimentos.cod_tipo_atendimento}"><img alt="Excluir" src="../resources/img/excluir.png" title="Excluir" ></a> -->
							</td>
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

