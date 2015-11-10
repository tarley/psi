<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PSI | Unidade de Atendimento</title>
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<link rel="stylesheet" href="../resources/css/bootstrap.css" />
</head>
<body>
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
			        <li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Introdução</a></li>
			        <li class="teste"><a class="link" href="../" ><span class="glyphicon glyphicon-search" style="font-size:1em;"></span> Página Inicial</a></li>
					<li class="activee"><a class="link" href="../unidadeAtendimento/" style="color:#fff"><span class="glyphicon glyphicon-pencil" style="font-size:1em"></span> Unidade de Atendimento<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento</a></li>
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
	<br />
	<br />

	<!-- Barra | Container  -->
	<div class="container centralizarBox">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title">
					<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
					Editar Unidade de Atendimento
				</h3>
			</div>
			<div class="panel-body">
				<!-- Text field - Nome Unidade Atendimento  -->
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="col-md-12">
							<form:form commandName="unidadeAtendimento" method="POST" action="alterarUnidadeAtendimento">  
								<div class="row-fluid">
									<div class="span10">
										<label>Nome da Unidade de Atendimento</label> <input
											required="required" class="input-small span12" maxlength="80"
											value="${unidadeAtendimento.nom_uni_atendimento}" type="text"
											name="nom_uni_atendimento"><br>
									</div>
									<div class="span2">
										<label class="">CEP:</label> <input required="required"
											type="text" name="num_cep" maxlength="12"
											value="${unidadeAtendimento.num_cep}"
											class="input-small span12">
									</div>
								</div>

								<div class="row-fluid">
									<div class="span5">
										<label class="">Endereço da Unidade:</label> <input
											required="required" type="text" name="nom_logradouro"
											value="${unidadeAtendimento.nom_logradouro}"
											maxlength="100" class="input-small span12">
									</div>
									<div class="span1">
										<label class="">N°:</label> <input required="required"
											type="text" name="num_numero" maxlength="5"
											value="${unidadeAtendimento.num_numero}"
											class="input-small span12">
									</div>
									<div class="span3">
										<label class="">Região:</label> <select required="required"
											name="regiao.cod_regiao" id="regiao" class="span12">
											<c:forEach var="regiao" items="${listaRegioes}">
												<option value="${regiao.cod_regiao}"
													${regiao.cod_regiao == unidadeAtendimento.regiao.cod_regiao ? 'selected' : ''}>
													<out>${regiao.des_regiao}</out>
												</option>
											</c:forEach>
										</select>
									</div>
									<div class="span3">
										<label class="">Bairro:</label> 
										<select required="required" name="bairro.cod_bairro" id="bairro" class="span12">
											<option value="${unidadeAtendimento.bairro.cod_bairro}">
												<out>${unidadeAtendimento.bairro.des_bairro}</out>
											</option>
											<c:forEach var="bairro" items="${listaBairros}">
												<c:if test="${unidadeAtendimento.regiao.cod_regiao == bairro.regiao.cod_regiao}">
													<option value="${bairro.cod_bairro}">
														<out>${bairro.des_bairro}</out>
													</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="row-fluid">
									<div class="span2">
										<label class="">Telefone 1:</label> <input required="required"
											type="text" name="num_tel1" maxlength="15"
											value="${unidadeAtendimento.num_tel1}"
											class="input-small span12">
									</div>
									<div class="span2">
										<label class="">Telefone 2:</label> <input type="text" maxlength="15"
											name="num_tel2" value="${unidadeAtendimento.num_tel2}"
											class="input-small span12">
									</div>
									<div class="span2">
										<label class="">Telefone 3:</label> <input type="text" maxlength="15"
											name="num_tel3" value="${unidadeAtendimento.num_tel3}"
											class="input-small span12">
									</div>									
								</div>
								<div class="row-fluid">
									<label>Tipo de Atendimento:</label>
									<form:checkboxes element="label class='checkbox-inline'" cssClass="checkbox" path="tiposAtendimentoAux" items="${tiposAtendimentosMap}"></form:checkboxes>
								</div>
								 
								<br>
								<div class="span12 text-right">
									<input type="hidden" name="cod_unidade_atendimento" id="cod_unidade_atendimento" value="${unidadeAtendimento.cod_unidade_atendimento}" /> 
									<input type="submit" class="btn btn-primary" value="Salvar" /> 
										<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" >Cancelar</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>

<script>
	$('#regiao').change(function(){
		
		var regiao = $('#regiao').val();
		
		jQuery.ajax({ 
				
			  url: 'regiao/' + regiao,
			  async: false,
			  success: function(data) 
			  {
				  	$('option', '#bairro').remove();
				  	$('#bairro').html(data);
			  },
			  error:function(data){
				  alert("Erro ao carregar os bairros da região:" + data);
			  }
		});
	})
</script>
</html>