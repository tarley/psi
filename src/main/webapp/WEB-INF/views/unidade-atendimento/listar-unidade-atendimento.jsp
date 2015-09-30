<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name=description content="Psy - Painel Administrativo" />
<meta name=viewport content="width=device-width, initial-scale=1" />
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> PSI| Listar Unidade de Atendimento</title>
	<link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resources/css/bootstrap-theme.min" rel="stylesheet">
	<link href="../resources/css/psi.css" rel="stylesheet">
	<link href="resources/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/jquery.dataTables.min.css">

<script src="../resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../resources/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#unidadeAtendimentoTable').DataTable({
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
			
			<d><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  Olá, Usuário | Sair </d>

			
		</div>
		
	</nav>


	
		
		<!-- Text field - Nome Unidade Atendimento  -->
		<div class="container-fluid">
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span12">
			<div class="well">
				<h4>Pesquisar Unidade de Atendimento</h4>
			</div>
			
			<div class="row-fluid">
			<form>
				<div class="span12 text-right">
					<input type="submit" class="btn btn-success" 
					formaction="cadastrarUnidadeAtendimento" value="Cadastrar Novo"/>
				</div>
			</form>
			</div>	
			
			<br/>
			<br/>
			
			<table id="unidadeAtendimentoTable" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Bairro</th>
						<th>Regiao</th>
						<th>Tipo Atendimento</th>
						<th>Logradouro</th>
						<th>Numero</th>
						<th>CEP</th>
						<th>Tel1</th>
						<th>Tel2</th>
						<th>Tel3</th>
						<th>Ações</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach items="${listaUnidadesAtendimento}" var="unidadeAtendimento">
					<tr>
							<td style="text-align: center">${unidadeAtendimento.nom_uni_atendimento}</td>
							<td style="text-align: center">${unidadeAtendimento.bairro.des_bairro}</td>
							<td style="text-align: center">${unidadeAtendimento.regiao.des_regiao}</td>
							<td style="text-align: center">${unidadeAtendimento.tipoAtendimento.des_tipo_atendimento}</td>		
							<td style="text-align: center">${unidadeAtendimento.nom_logradouro}</td>
							<td style="text-align: center">${unidadeAtendimento.num_numero}</td>
							<td style="text-align: center">${unidadeAtendimento.num_cep}</td>
							<td style="text-align: center">${unidadeAtendimento.num_tel1}</td>
							<td style="text-align: center">${unidadeAtendimento.num_tel2}</td>
							<td style="text-align: center">${unidadeAtendimento.num_tel3}</td>
							<td style="width: 100px; text-align: center" >
							<a href="editarUnidadeAtendimento?id=${unidadeAtendimento.cod_unidade_atendimento}"><img alt="Editar" src="../resources/img/editar.png" title="Editar" > </a>
							<a href="excluirUnidadeAtendimento?id=${unidadeAtendimento.cod_unidade_atendimento}"><img alt="Excluir" src="../resources/img/excluir.png" title="Excluir" ></a></td>
					</tr>
					
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		</div>
</div>
	</div></br></br></br>

</body>
</html>

