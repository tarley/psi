<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title>PSI | Gerenciar Unidade</title>

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
	<nav class="navbar navbar-default">
		<div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
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

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <!--  <li class="active"><a href="#">P�gina Inicial<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Listar</a></li>-->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-align-justify" aria-hidden="true">&nbsp;Listar<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../unidadeAtendimento/">Unidades Cadastradas</a></li>
            <li><a href="../tipoAtendimento/">Tipos de Unidades Cadastradas</a></li>
          </ul>
          
        </li>
      </ul>
      
      
            <ul class="nav navbar-nav">
        <!--  <li class="active"><a href="#">P�gina Inicial<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Listar</a></li>-->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-pencil" aria-hidden="true">
          Cadastrar<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Unidade</a></li>
            <li><a href="#">Tipo de Unidade</a></li>
          </ul>
        </li>
         <li><a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"> Pesquisar</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Ol�, Usu�rio<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Alterar dados de conta</a></li>
            <li><a href="#">Gerenciar contas de usu�rio</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../logout">Finalizar sess�o</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

	<div class="container centralizarBox">
	<form>
		<div class="span12 text-right" style="margin-bottom:10px">
			<input type="submit" class="btn btn-success" formaction="cadastrarTipoAtendimento" value="Cadastrar Novo"/>
		</div>
	</form>
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
		        				<h4>Novo Tipo de Unidade Cadastrado com Sucesso !</h4>
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
				<h3 class="panel-title"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> Listar Tipos de Unidades Cadastradas</h3>
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
							<td style="text-align: center">${tipoAtendimentos.des_tipo_atendimento}</td>
							<td style="width: 90px; text-align: center" >
								<div class="centralizadora">
									<a href="editarTipoAtendimento?id=${tipoAtendimentos.cod_tipo_atendimento}"><div class="botao" title="Editar">
										<span class="glyphicon glyphicon-pencil botao-datableUnidade" aria-hidden="true"></span>
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
</div></br></br></br>
</div>
</div></br></br></br>

<script type="text/javascript">
	
		$(document).ready(function(){
			window.setTimeout('$(".alert").remove()',10000);
		});
	
		// Ativar conte�do de Busca e Estiliza��o
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
</html>
