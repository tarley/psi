<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    		<style>
    		.activee{ background-color:#3299CC; color:#fff; }

.teste:hover{ background-color:#555; color:#fff !important}
.teste a:hover{  color:#fff !important; }

a.link{ font-size:1em;   color:#fff; }





	</style>
    		
	   	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="text-align:center">
	    <ul class="nav navbar-nav">
		
        <li  class="teste"><a class="link" href="#" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> &nbsp;Página Inicial&nbsp;</a></li>
      
		<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-pencil" style="font-size:1em"></span> Cadastrar Unidade<span class="sr-only">(current)</span></a></li>
	
		<li class="teste"><a href="#" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Cadastrar Atendimento</a></li>
	
		<li class="teste"><a href="#" class="link"><span class="glyphicon glyphicon-record" style="font-size:1em"></span> Gerenciar Usuário</a></li>
	

				
		
		
      </ul>
      
      <ul class="nav navbar-nav navbar-right" >
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu centralizadora">
            			<li><a href="#"><span class="glyphicon glyphicon-cog" style="font-size:1em;"></span> &nbsp; Minha conta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
          			</ul>
        		</li>
        		</ul>
	
      
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	
	
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
			
		</c:if> <br />
		
		<div class="panel panel-primary">
			
			<div class="panel-heading">
				<h3 class="panel-title" style="float:left;padding-top:5px">
					<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
					Unidades de Atendimento Cadastradas 
				</h3>
				<form action="unidade-atendimento" method="post">
			<div class="span12 text-right" style="padding-top:0px">
				<input type="submit" class="btn btn-success" formaction="cadastrarUnidadeAtendimento" value="Cadastrar Novo"/>
			</div>
		</form>
			</div>
			
			<div class="panel-body">
				<table id="GerenciarUnidade" class="display" cellspacing="0" width="100%">
					
					<thead>
						<tr class="tr_padrao"> 
						      <th>Nome</th>
						      <th>Bairro</th>
						      <th>Regiao</th>
						      <th>Atendimento</th>
						     <!--   <th width="18%">Logradouro</th>
						      <th>CEP</th> -->
						      <th>Telefone</th>
						      <!--  <th>Tel2</th>
						      <th>Tel3</th> --> 
							<th width="120px"><center>Ação</center></th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${listaUnidadesAtendimento}" var="unidadeAtendimento">
							<tr class="tr_padrao" id="row${unidadeAtendimento.cod_unidade_atendimento}">
		   						 <td style="text-align: left">${unidadeAtendimento.nom_uni_atendimento}</td>
							     <td style="text-align: center">${unidadeAtendimento.bairro.des_bairro}</td>
							     <td style="text-align: center">${unidadeAtendimento.regiao.des_regiao}</td>
							     <td style="text-align: center">${unidadeAtendimento.tipoAtendimento.des_tipo_atendimento}</td>		
							    <!--  <td style="text-align: left">${unidadeAtendimento.nom_logradouro},${unidadeAtendimento.num_numero}</td> -->
							      <!--<td style="text-align: center">${unidadeAtendimento.num_cep}</td>-->
							     <td style="text-align: center">${unidadeAtendimento.num_tel1}</td>
							     <!-- <td style="text-align: center">${unidadeAtendimento.num_tel2}</td>
							     <td style="font-align:center">${unidadeAtendimento.num_tel3}</td> -->
								 
								 <td>
									<div class="centralizadora">
										<a href="editarUnidadeAtendimento?id=${unidadeAtendimento.cod_unidade_atendimento}">
											<div class="botao" style="padding:5px;" title="Editar">
												&nbsp;<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
											</div>
										</a>
										
										<a href="#" onclick="remover(${unidadeAtendimento.cod_unidade_atendimento})">
											<div class="botao" style="background-color:#d9534f" title="Excluir">
												&nbsp;<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;
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

