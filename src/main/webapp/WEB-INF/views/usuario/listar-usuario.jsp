<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title>PSI | Usuário</title>
	<link rel="stylesheet" href="../resources/css/datatables.min.css"/>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/theme.css"/>

	<script type="text/javascript" src="../resources/js/datatables.min.js"></script>
	<script type="text/JavaScript" charset="utf-8">
	
	$(document).ready(function() {
		$('#usuarioTable').DataTable();
	} );	
	</script>
</head>
<body>
	<!--  Barra de Navegação -->
	<nav class="navbar-default">
  		<div class="container-fluid">
	    	<div class="navbar-header">
	    		<a class="navbar-brand" href="#">
        			<img alt="Brand" class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="../resources/img/logo.png"  />
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
					<li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Página Inicial</a></li>
					<li class="teste"><a href="../unidadeAtendimento/" class="link"><span class="glyphicon glyphicon-credit-card" style="font-size:1em"></span> Unidade de Atendimento</a></li>
					<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento</a></li>
					<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-user" style="font-size:1em"></span> Usuário<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="/psi" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#"><span class="glyphicon glyphicon-wrench" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
 		</div>
	</nav> <!-- Encerra a barra de navegação -->
	<br />
	
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
		        				<h4>Novo Usuário Cadastrado com Sucesso !</h4>
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
		        				<h4>Usuário Editado Com Sucesso !</h4>
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
					Usuários Cadastrados 
				</h3>
				<form action="unidade-atendimento" method="post">
					<div class="span12 text-right" style="padding-top:0px">
						<input type="submit" class="btn btn-success" formaction="cadastrarUsuario" value="+ Adicionar Usuário"/>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<table id="usuarioTable" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>Login</th>
							<th>Senha</th>
							<th>Usuario</th>
							<th>Email</th>
							<th style="text-align: center;">Editar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaUsuarios}" var="usuarios">
							<tr class="tr_padrao">
								<td style="text-align: left;vertical-align:middle">${usuarios.login}</td>
								<td style="text-align: left;vertical-align:middle">${usuarios.senha}</td>
								<td style="text-align: left;vertical-align:middle">${usuarios.nome}</td>
								<td style="text-align: left;vertical-align:middle">${usuarios.email}</td>
								<td>
									<div class="centralizadora" style="width:100%">
										<a href="editarUsuario?id=${usuarios.codUsuario}">
											<div class="botao" title="Editar">
												&nbsp;<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
											</div>
										</a>
										<a href="#" onclick="remover(${usuarios.codUsuario})">
											<div class="botao" style="background-color:#d9534f" title="Excluir">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</div>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div id="footer" style="background-color:#e7e7e7; padding-top:15px; position:absolute; bottom:0px; width:100%">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador Tarley Lanna.</p>
		</div>
	</div>

<script type="text/javascript">

	// Ativar conteúdo de Busca e Estilização
	$('#usuarioTable')
	.removeClass( 'display' )
	.addClass('table table-striped table-bordered');

	$('#usuarioTable').DataTable( {
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
	
	function remover(codUsuario) {
		//var resposta = confirm("Deseja remover esse registro?");
	     //if (resposta == true) {
			jQuery.ajax({ 
				  url: 'remover/' + codUsuario,
				  async: true,
				  success: function(data) {
				  	//alert(data);				  	
				  	$("#row" + codUsuario).remove();
				  }
			});
	     //}
	}

</script>

</body>
</html>
