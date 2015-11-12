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
	<link rel="Shortcut Icon" href="../resources/img/favicon.ico">
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
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
					<li  class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Página Inicial</a></li>
					<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-credit-card" style="font-size:1em"></span> Unidade de Atendimento<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento</a></li>
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
				<br />
				<form:form commandName="unidadeAtendimento" method="POST" action="alterarUnidadeAtendimento">  
				
					<div class="row">
						<div class="col-xs-6 col-md-10">
     						<label >Nome da Unidade:</label>
    						 <input id="textinput" name="nom_uni_atendimento" value="${unidadeAtendimento.nom_uni_atendimento}" type="text" placeholder="Entre com o nome da unidade" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-2">
     						<label >CEP:</label>
     						<input id="cep" name="num_cep" type="text" placeholder="xxxxx-xxx" value="${unidadeAtendimento.num_cep}" class="form-control input-md" required="">
  						</div>
 					</div>
 					<br />
 					<div class="row">
						<div class="col-xs-6 col-md-5">
     						<label >Endereço:</label>
    						 <input id="textinput" name="nom_logradouro" value="${unidadeAtendimento.nom_logradouro}" type="text" placeholder="Entre com o endereço da unidade" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-1">
     						<label >Nº:</label>
     						<input id="textinput" name="num_numero" value="${unidadeAtendimento.num_numero}" type="text" placeholder="1030" class="form-control input-md" required="">
  						</div>
  						
  						<div class="col-xs-6 col-md-3">
     						<label >Região:</label>
     						<select required="required" name="regiao.cod_regiao" id="regiao" class="form-control input-md">
											<c:forEach var="regiao" items="${listaRegioes}">
												<option value="${regiao.cod_regiao}"
													${regiao.cod_regiao == unidadeAtendimento.regiao.cod_regiao ? 'selected' : ''}>
													<out>${regiao.des_regiao}</out>
												</option>
											</c:forEach>
							</select>
						</div>
						<div class="col-xs-6 col-md-3">
     						<label >Bairro:</label>
							<select required="required" name="bairro.cod_bairro" id="bairro" class="form-control input-md">
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
					<br/>
					<div class="row">
						<div class="col-xs-6 col-md-2">
     						<label >Telefone 1:</label>
    						 <input type="tel"	id="campoTel1"  value="${unidadeAtendimento.num_tel1}" placeholder="(xxx) xxxx-xxxx" name="num_tel1"   class="form-control input-md" maxlength="15" required="" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
 						 </div>
 						
 						<div class="col-xs-6 col-md-2">
     						<label >Telefone 2:</label>
     						 <input type="tel"	id="campoTel2" value="${unidadeAtendimento.num_tel2}" placeholder="(xxx) xxxx-xxxx" name="num_tel2"   class="form-control input-md" maxlength="15"  onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
  						</div>

  						<div class="col-xs-6 col-md-2">
     						<label >Telefone 3:</label>
     						 <input type="tel"	id="campoTel3" value="${unidadeAtendimento.num_tel3}" placeholder="(xxx) xxxx-xxxx" name="num_tel3"   class="form-control input-md" maxlength="15"  onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
     						 
  						</div>
  							
  						<div class="col-xs-6 col-md-6">
     						<label>Tipos de Atendimentos:</label>
										<form:select path="tiposAtendimentoAux" multiple="multiple" id="tiposAtendimentos">
											<form:options items="${tiposAtendimentosMap}"></form:options>
										</form:select>
						</div>
					</div>
				</div><br>
				<div class="text-right style="margin-right:14px">
									<input type="hidden" name="cod_unidade_atendimento" id="cod_unidade_atendimento" value="${unidadeAtendimento.cod_unidade_atendimento}" /> 
									<input type="submit" class="btn btn-primary" value="Salvar" /> 
										<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" >Cancelar</a>
								</div>
			</form:form>	
					
					
					
					<!--  <div class="row-fluid">
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
									<div class="span6">
										<label>Tipos de Atendimentos:</label>
										<form:select path="tiposAtendimentoAux" multiple="multiple" id="tiposAtendimentos">
											<form:options items="${tiposAtendimentosMap}"></form:options>
										</form:select>
									</div>									
								</div>
								
								 
								<br>
								<div class="span12 text-right">
									<input type="hidden" name="cod_unidade_atendimento" id="cod_unidade_atendimento" value="${unidadeAtendimento.cod_unidade_atendimento}" /> 
									<input type="submit" class="btn btn-primary" value="Salvar" /> 
										<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" >Cancelar</a>
								</div>
							</form:form> -->
						</div>
					</div>
				</div>
			</div>


</body>

<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
<script>
       $("#tiposAtendimentos").multipleSelect({
           filter: true,
           width: '100%',
           position: 'top'
       });
</script>
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
<script>
jQuery(function($){
	$("#cep").mask("99999-999");
	$("#campoTel1").mask("(99) 9999-9999");
	$("#campoTel2").mask("(99) 9999-9999");
	$("#campoTel3").mask("(99) 9999-9999");
	

	});
</script>
</html>