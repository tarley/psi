<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>PSI | Unidade de Atendimento</title>
	
	<link rel="stylesheet" href="../resources/css/datatables.min.css"/>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/theme.css"/>
	<script type="text/javascript" src="../resources/js/datatables.min.js"></script>

	<script type="text/JavaScript" charset="utf-8">
	
	$(document).ready(function() {
		$('#GerenciarUnidade').DataTable();
	} );	
	
	</script>



</head>

<body>
	
	<!--  Barra de Navegação -->
	
	<nav class="navbar navbar-default">
  		<div class="container-fluid">
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        		<span class="sr-only">Toggle navigation</span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
				</button>
	     		<div class="navbar-header">
					<a class="navbar-brand logo" href=""><img  alt="PSI" src="../resources/img/logo.png"  /></a>
		 		</div>
    		</div>
    		
	   	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    	<ul class="nav navbar-nav">
	       		<!--  <li class="active"><a href="#">Página Inicial<span class="sr-only">(current)</span></a></li>
	       		<li><a href="#">Listar</a></li>-->
	       		<li class="dropdown">
		         	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
		         		<span class="glyphicon glyphicon-align-justify" aria-hidden="true">&nbsp;Listar<span class="caret"></span>
		         	</a>
		         	
			        <ul class="dropdown-menu">
			            <li><a href="../unidadeAtendimento/">Unidades Cadastradas</a></li>
			            <li><a href="../tipoAtendimento/">Tipos de Unidades Cadastradas</a></li>
			        </ul>
	       		</li>
	     	</ul>
			
			<ul class="nav navbar-nav">
        		<!--  <li class="active"><a href="#">Página Inicial<span class="sr-only">(current)</span></a></li>
        		<li><a href="#">Listar</a></li>-->
        	 	<li class="dropdown">
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-pencil" aria-hidden="true">
          				Cadastrar<span class="caret"></span>
          			</a>
	          		<ul class="dropdown-menu">
			            <li><a href="#">Unidade</a></li>
			            <li><a href="#">Tipo de Unidade</a></li>
	          		</ul>
        		</li>
        		
        		<li>
        			<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
        				Pesquisar
        			</a>
        		</li>
      		</ul>
			
			<ul class="nav navbar-nav navbar-right">
        		<li class="dropdown">
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Usuário<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#">Alterar dados de conta</a></li>
            			<li><a href="#">Gerenciar contas de usuário</a></li>
            			<li role="separator" class="divider"></li>
            			<li><a href="../logout">Finalizar sessão</a></li>
          			</ul>
        		</li>
      		</ul>
      
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	
	
	<div class="container-fluid centralizarBox">
		<form action="unidade-atendimento" method="post">
			<div class="span12 text-right" style="margin-bottom:11px; margin-top:-10px">
				<input type="submit" class="btn btn-success" formaction="cadastrarUnidadeAtendimento" value="Cadastrar Novo"/>
			</div>
		</form>
		
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
		        				<h4>Nova Unidade Cadastrada com Sucesso !</h4>
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
		        				<h4>Dados Editados Com Sucesso !</h4>
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
				<h3 class="panel-title"><span class="glyphicon glyphicon-list" aria-hidden="true"></span>Unidades de Atendimento Cadastradas</h3>
			</div>
			
			<div class="panel-body">
				<table id="GerenciarUnidade" class="display" cellspacing="0" width="100%">
					
					<thead>
						<tr class="tr_padrao"> 
						      <th width="15%">Nome</th>
						      <th>Bairro</th>
						      <th>Regiao</th>
						      <th>Atendimento</th>
						      <th width="18%">Logradouro</th>
						      <th>CEP</th>
						      <th>Tel1</th>
						      <th>Tel2</th>
						      <th>Tel3</th>
							<th width="10%">Editar | Excluir</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${listaUnidadesAtendimento}" var="unidadeAtendimento">
							<tr class="tr_padrao" id="row${unidadeAtendimento.cod_unidade_atendimento}">
		   						 <td style="text-align: left">${unidadeAtendimento.nom_uni_atendimento}</td>
							     <td style="text-align: center">${unidadeAtendimento.bairro.des_bairro}</td>
							     <td style="text-align: center">${unidadeAtendimento.regiao.des_regiao}</td>
							     <td style="text-align: center">${unidadeAtendimento.tipoAtendimento.des_tipo_atendimento}</td>		
							     <td style="text-align: left">${unidadeAtendimento.nom_logradouro},${unidadeAtendimento.num_numero}</td>
							     <td style="text-align: center">${unidadeAtendimento.num_cep}</td>
							     <td style="text-align: center">${unidadeAtendimento.num_tel1}</td>
							     <td style="text-align: center">${unidadeAtendimento.num_tel2}</td>
							     <td style="text-align: center">${unidadeAtendimento.num_tel3}</td>
								 
								 <td>
									<div class="centralizadora" style="margin-left:27px">
										<a href="editarUnidadeAtendimento?id=${unidadeAtendimento.cod_unidade_atendimento}">
											<div class="botao" title="Editar">
												<span class="glyphicon glyphicon-pencil botao-datableUnidade" aria-hidden="true"></span>
											</div>
										</a>
										
										<a href="#" onclick="remover(${unidadeAtendimento.cod_unidade_atendimento})">
											<div class="botao" style="background-color:#d9534f" title="Excluir">
												<span class="glyphicon glyphicon-trash botao-datableUnidade" aria-hidden="true"></span>
											</div>
										</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

<script type="text/javascript">

	
		// Ativar conteúdo de Busca e Estilização
		$('#GerenciarUnidade')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
	
	
		$('#GerenciarUnidade').DataTable( {
			language: {
				"url": "../resources/i18n/datatables-pt_BR.json"
				},
		});
	
		
	
		window.setTimeout('$(".alert").remove()',5000);
		
		
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
		
		$(document).ready(function() {
			   $('#Modal-Editado_Sucesso').modal('show');
			});
		$(document).ready(function() {
			   $('#Modal-Cadastrado_Sucesso').modal('show');
			});

</script>
</body>
</html>

