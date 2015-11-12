<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title>PSI | Tipo Atendimento</title>
	<link rel="Shortcut Icon" href="../resources/img/favicon.ico">
	<link rel="stylesheet" href="../resources/css/datatables.min.css"/>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/theme.css"/>

	<script type="text/javascript" src="../resources/js/datatables.min.js"></script>
	<script type="text/JavaScript" charset="utf-8">
	
	$(document).ready(function() {
		$('#tipoAtendimentoTable').DataTable();
	} );	
	</script>

</head>

<body>
		<!--  Barra de Navegação -->
	<nav class="navbar-default">
  		<div class="container-fluid">
	    	<div class="navbar-header">
	    		<a class="navbar-brand" href="../admin">
			        <img alt="PSI" class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="../resources/img/logo.png"  />
			    </a>
	      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        		<span class="sr-only">Toggle navigation</span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
				</button>
    		</div>
		   	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="text-align:center">
			    <ul class="nav navbar-nav">
					<li class="teste"><a class="link" href="../admin"><span class="glyphicon glyphicon-home" style="font-size:1em"></span> Página Inicial</a></li>
					<li  class="teste"><a class="link" href="../unidadeAtendimento/" ><span class="glyphicon glyphicon-credit-card" style="font-size:1em;"></span> Unidade de Atendimento</a></li>
					<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="/psi" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#"><span class="glyphicon glyphicon-cog" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->

<br /><br /><br />
	<div class="container centralizarBox">
		<c:if test="${param.msg == '1' }">
			<div class="modal fade" id="Modal-Cadastrado_Sucesso">
	  			<div class="modal-dialog" >
	    			<div class="modal-content">
	      				<div class="modal-header">
	        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Mensagem de Notificação</h4>
	     				 </div>
		      			<div class="modal-body">
		        			<center>
		        				<span class="glyphicon glyphicon-ok" aria-hidden="true" style="font-size:35px;color:#5CB85C;"></span> </br/>
		        				<h4>Novo Tipo de Atendimento Cadastrado com Sucesso !</h4>
		        			</center>
		      			</div>
		      		
		      			<div class="modal-footer" style="text-align:center">
		        			<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
		      			</div>
	    			</div><!-- /.modal-content -->
	  			</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</c:if>
			
		<c:if test="${param.msg == '2' }">
			<div class="modal fade" id="Modal-Editado_Sucesso">
	  			<div class="modal-dialog" >
	    			<div class="modal-content">
	      				<div class="modal-header">
	        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Mensagem de Notificação</h4>
	     				 </div>
		      			<div class="modal-body">
		        			<center>
		        				<span class="glyphicon glyphicon-ok" aria-hidden="true" style="font-size:35px;color:#5CB85C;"></span> </br/>
		        				<h4>Dados de Tipo de Atendimento Editados Com Sucesso !</h4>
		        			</center>
		      			</div>
		      			<div class="modal-footer" style="text-align:center">
		        			<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
		      			</div>
	    			</div><!-- /.modal-content -->
	  			</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</c:if>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title" style="float:left;padding-top:8px">
					<span class="glyphicon glyphicon-list" aria-hidden="true"></span> 
					Tipos de Atendimento Cadastrados 
				</h3>
				<form action="unidade-atendimento" method="post">
					<div class="span12 text-right" style="padding-top:0px">
						<input type="submit" class="btn btn-success" formaction="cadastrarTipoAtendimento" value="+ Adicionar Atendimento"/>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<table id="tipoAtendimentoTable" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>Nome</th>
							<th style="text-align: center;">Editar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaTipoAtendimentos}" var="tipoAtendimentos">
							<tr class="tr_padrao">
								<td style="text-align: left;vertical-align:middle">${tipoAtendimentos.des_tipo_atendimento}</td>
								<td style="width: 90px; text-align: center" >
									<div class="centralizadora">
										<a href="editarTipoAtendimento?id=${tipoAtendimentos.cod_tipo_atendimento}"><div class="botao" title="Editar">
											<span class="glyphicon glyphicon-pencil botao-datableUnidade" style="color:#fff" aria-hidden="true"></span>
										</a>
									</div>
									<!-- <a href="excluirTipoAtendimento?id=${tipoAtendimentos.cod_tipo_atendimento}" title="Editar">
										<div class="botao" style="background-color:#d9534f" title="Excluir">
												<span class="glyphicon glyphicon-trash botao-datableUnidade" aria-hidden="true"></span>
										</div>
									</a> -->
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
		<br /><br /><br /><br /><br /><br /><br /><br /><br />
		
	<div id="footer" style="bottom:0; position:relative;">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador Tarley Lanna</a>.</p>
		</div>
	</div>

<script type="text/javascript">
	
	$(document).ready(function(){
		window.setTimeout('$(".alert").remove()',10000);
	});

	// Ativar conteúdo de Busca e Estilização
	$('#tipoAtendimentoTable')
	.removeClass( 'display' )
	.addClass('table table-striped table-bordered');

	$('#tipoAtendimentoTable').DataTable( {
		language: {
			"url": "../resources/i18n/datatables-pt_BR.json"
		}
	});
	
	$(document).ready(function() {
		   $('#Modal-Editado_Sucesso').modal('show');
	});
	$(document).ready(function() {
		   $('#Modal-Cadastrado_Sucesso').modal('show');
	});

</script>

</body>
</html>
