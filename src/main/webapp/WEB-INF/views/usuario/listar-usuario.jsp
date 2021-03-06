<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title>PSI | Usu�rio</title>
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
	<!--  Barra de Navega��o -->
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
					<li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> P�gina Inicial</a></li>
					<li class="teste"><a href="../unidadeAtendimento/" class="link"><span class="glyphicon glyphicon-credit-card" style="font-size:1em"></span> Unidade de Atendimento</a></li>
					<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento</a></li>
					<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-user" style="font-size:1em"></span> Usu�rio<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="../" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Ol�, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<!-- <li><a href="#"><span class="glyphicon glyphicon-wrench" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li> -->
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
 		</div>
	</nav> <!-- Encerra a barra de navega��o -->
	<br />
	<div id="tudo">
	<div class="container centralizarBox">
		<c:if test="${param.msg == '1' }">
			<div class="modal fade" id="Modal-Cadastrado_Sucesso">
	  			<div class="modal-dialog" >
	    			<div class="modal-content">
	      				<div class="modal-header">
	        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Mensagem de Notifica��o</h4>
	     				 </div>
		      			<div class="modal-body">
		        			<center>
		        				<span class="glyphicon glyphicon-ok" aria-hidden="true" style="font-size:35px;color:#5CB85C;"></span> </br/>
		        				<h4>Novo Usu�rio Cadastrado com Sucesso !</h4>
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
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Mensagem de Notifica��o</h4>
	     				 </div>
		      			<div class="modal-body">
		        			<center>
		        				<span class="glyphicon glyphicon-ok" aria-hidden="true" style="font-size:35px;color:#5CB85C;"></span> </br/>
		        				<h4>Usu�rio Editado Com Sucesso !</h4>
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
					Usu�rios Cadastrados 
				</h3>
				<form action="unidade-atendimento" method="post">
					<div class="span12 text-right" style="padding-top:0px">
						<c:if test="${fn:length(listaUsuarios) lt 2}">
							<p>&nbsp;</p>
						</c:if>
						<c:if test="${fn:length(listaUsuarios) gt 1}">
							<input type="submit" class="btn btn-success" formaction="cadastrarUsuario" value="+ Adicionar Usu�rio"/>
						</c:if>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<table id="usuarioTable" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>Login</th>
							<th>Usuario</th>
							<th>Email</th>
							<th style="text-align: center;">A��es</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaUsuarios}" var="usuarios">
							<tr class="tr_padrao" id="row${usuarios.codUsuario}">
								<td style="text-align: left;vertical-align:middle">${usuarios.login}</td>
								<td style="text-align: left;vertical-align:middle">${usuarios.nome}</td>
								<td style="text-align: left;vertical-align:middle">${usuarios.email}</td>
								<td>
									<div class="centralizadora" style="width:100%">
										<a href="editarUsuario?id=${usuarios.codUsuario}">
											<div class="botao" title="Editar">
												&nbsp;<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
											</div>
										</a>
										<c:if test="${fn:length(listaUsuarios) gt 1}">
											<a href="#" onclick="remover(${usuarios.codUsuario})">
												<div class="botao botaoExluir" style="background-color:#d9534f" title="Excluir">
													<input type="hidden" value="${usuarios.codUsuario}" class="input_cod_usuario" id="input_cod_usuario">
													<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
												</div>
											</a>
										</c:if>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- Modal confirma��o de exclus�o -->
			<div class="modal fade" id="Modal-Confirma_Exclusao">
	  			<div class="modal-dialog" > 
	    			<div class="modal-content">
	      				<div class="modal-header">
	        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Mensagem de Notifica��o</h4>
	     				 </div>
		      			<div class="modal-body">
		        			<center>
		        				<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true" style="font-size:35px;color:#d9534f;"></span> </br/>
		        				<h4>Tem certeza que deseja excluir este usuario?</h4>
		        			</center>
		      			</div>		      		
		      			<div class="modal-footer" style="text-align:center">
		      				<button type="button" id="button_confirma_exclusao" class="btn btn-primary button_confirma_exclusao" data-dismiss="modal">Confirmar</button>
		      				<input type="hidden" value="" class="modal_cod_usuario" id="modal_cod_usuario">
		        			<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
		      			</div>
	    			</div><!-- /.modal-content -->
	  			</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			<!-- Modal exclus�o com sucesso -->
			<div class="modal fade" id="Modal-Exclusao_Sucesso">
	  			<div class="modal-dialog" >
	    			<div class="modal-content">
	      				<div class="modal-header">
	        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	       					 <h4 class="modal-title"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span>Mensagem de Notifica��o</h4>
	     				 </div>
		      			<div class="modal-body ">
		        			<center>
		        				<span class="glyphicon glyphicon-ok" aria-hidden="true" style="font-size:35px;color:#5CB85C;"></span> </br/>
		        				<div class="texto_confirmacao" id="texto_confirmacao">
		        					
	        					</div>
		        			</center>
		      			</div>		      		
		      			<div class="modal-footer" style="text-align:center">
		        			<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
		      			</div>
	    			</div><!-- /.modal-content -->
	  			</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</div>
	</div>
</div>
	<br /><br /><br /><br /><br /><br /><br /><br />
	<div id="clear" style="padding-bottom:12px"></div>
	<div id="footer">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informa��o Newton Paiva | 8� Per�odo 2015 - Professor Orientador: Tarley Lana.</p>
		</div>
	</div>


<script type="text/javascript">

	// Ativar conte�do de Busca e Estiliza��o
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
	
	$(".botaoExluir").click(function()
			{
				var cod_usuario = $('.input_cod_usuario',this).val();
				$('.modal_cod_usuario').val(cod_usuario);
				$('#Modal-Confirma_Exclusao').modal('show');
				//alert(cod);
			});
			$(".button_confirma_exclusao").click(function()
			{
				var cod_usuario = $('.modal_cod_usuario').val();
				jQuery.ajax({ 
					  url: 'remover/' + cod_usuario,
					  async: true,
					  success: function(data) 
					  {
					  	$(".texto_confirmacao").html("<h4>"+data+"</h4>");
				  		$('#Modal-Exclusao_Sucesso').modal('show');
					  	//alert(data);			  	
					  	$("#row" + cod_usuario).remove();
					  	
					  }
				});
			});

</script>

</body>
</html>
