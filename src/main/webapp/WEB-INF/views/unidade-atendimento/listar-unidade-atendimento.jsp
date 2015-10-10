<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
			<div class="blocoLogin">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Usuário | Sair 
			</div>
		</div>
	</nav>
	


	
		
		<!-- Text field - Nome Unidade Atendimento  -->
		<div class="container-fluid blocoPai">
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
						<tr id="row${unidadeAtendimento.cod_unidade_atendimento}">
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
							<a href="#"onclick="remover(${unidadeAtendimento.cod_unidade_atendimento})"><img alt="Excluir" src="../resources/img/excluir.png" title="Excluir" ></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div></br></br></br>
	</div>
</div></br></br></br>

<script>
		function remover(cod_unidade_atendimento) {
			var resposta = confirm("Deseja remover esse registro?");
		     if (resposta == true) {
				jQuery.ajax({ 
					  url: 'remover/' + cod_unidade_atendimento,
					  async: true,
					  success: function(data) {
					  	alert(data);				  	
					  	$("#row" + cod_unidade_atendimento).remove();
					  	
					  }
				});
		     }
		}
	</script>

</body>
</html>
