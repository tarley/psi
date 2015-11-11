<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name=description content="Psy - Painel Administrativo" />
	<meta name=viewport content="width=device-width, initial-scale=1" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>PSI | Unidade de Atendimento</title>
	<link rel="stylesheet" href="../resources/css/datatables.min.css"/>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/theme.css"/>
	<script type="text/javascript" src="../resources/js/datatables.min.js"></script>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
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
	<br /><br />

	<!-- Barra | Container  -->
	<div class="container centralizarBox">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					Cadastrar Unidade de Atendimento
				</h3>
			</div>

			<div class="panel-body">
				<div class="container-fluid">
		<br />
				<form:form commandName="unidadeAtendimento" action="adicionarUnidadeAtendimento" method="post">
				
					<div class="row">
						<div class="col-xs-6 col-md-10">
     						<label >Nome da Unidade:</label>
    						 <input id="textinput" name="nom_uni_atendimento" type="text" placeholder="Entre com o nome da unidade" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-2">
     						<label >CEP:</label>
     						<input id="textinput" name="num_cep" type="text" placeholder="Ex:00000-000" class="form-control input-md" required="">
  						</div>
 					</div>
 					<br />
 					<div class="row">
						<div class="col-xs-5 col-md-5">
     						<label >Endereço:</label>
    						 <input id="textinput" name="nom_logradouro" type="text" placeholder="Entre com o endereço da unidade" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-1">
     						<label >Nº:</label>
     						<input id="textinput" name="num_numero" type="text" placeholder="1030" class="form-control input-md" required="">
  						</div>
  						
  						<div class="col-xs-6 col-md-3">
     						<label >Região:</label>
     						<select name="regiao.cod_regiao" id="regiao" class="form-control input-md" required="">
											<option value="">Selecione</option>
											<c:forEach var="regiao" items="${listaRegioes}">
												<option value="${regiao.cod_regiao}">
													<out>${regiao.des_regiao}</out>
												</option>
											</c:forEach>
										</select>
						</div>
						<div class="col-xs-6 col-md-3">
     						<label >Bairro:</label>
							<select name="bairro.cod_bairro" id="bairro" class="form-control input-md" required="">
								<option value="">Selecione</option>					
							</select>
						</div>
					</div>
					<br/>
					<div class="row">
						<div class="col-xs-5 col-md-2">
     						<label >Telefone 1:</label>
    						 <input type="tel"	name="num_tel1"  placeholder="Ex:31-00000-0000" class="form-control input-md" maxlength="15" required="" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
 						 </div>
 						 
 						<div class="col-xs-6 col-md-2">
     						<label >Telefone 2:</label>
     						 <input type="tel"	name="num_tel2"  placeholder="Ex:31-00000-0000" class="form-control input-md" maxlength="15" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
  						</div>
  						
  						<div class="col-xs-6 col-md-2">
     						<label >Telefone 3:</label>
     						 <input type="text" name="num_tel3"   class="form-control input-md" maxlength="15" placeholder="Ex:31-00000-0000" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;"></input>
     						 
  						</div>
  						
  						<div class="col-xs-6 col-md-6">
     						<label >Tipo de Atendimento:</label><br />
     						<div style="margin-top:6px">
     						<form:checkboxes element="label class='checkbox-inline' "  cssClass="checkbox" path="tiposAtendimentoAux" items="${tiposAtendimentosMap}"></form:checkboxes>
  							</div>
  						</div>
  						
  						
  						
  						
									
  			
					</div>
					
					
						<br>
								<div class="text-right">
									<input type="submit" class="btn btn-primary" value="Salvar" />
									<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" />Cancelar</a>
								</div>
							</form:form>

				



					
					
					
					
					
					<!--  <div class="col-md-12">
						<div class="span12">
							<form:form commandName="unidadeAtendimento"
								action="adicionarUnidadeAtendimento" method="post">
								<div class="row-fluid">
									<div class="span10">
										<label>Nome da Unidade de Atendimento</label> <input
											class="input-small span12" type="text"
											name="nom_uni_atendimento" maxlength="80" required=""><br>
									</div>
									<div class="span2">
										<label class="">CEP:</label> <input type="text" name="num_cep"
											class="input-small span12" maxlength="12" required="">
									</div>
								</div>

								<div class="row-fluid">
									<div class="span5">
										<label class="">Endereço da Unidade:</label> <input
											type="text" name="nom_logradouro" class="input-small span12"
											maxlength="100" required="">
									</div>
									<div class="span1">
										<label class="">N°:</label> <input type="text"
											name="num_numero" class="input-small span12" maxlength="5" required="">
									</div>
									<div class="span3">
										<label class="">Região:</label> 
										<select name="regiao.cod_regiao" id="regiao" class="span12" required="">
											<option value="">Selecione</option>
											<c:forEach var="regiao" items="${listaRegioes}">
												<option value="${regiao.cod_regiao}">
													<out>${regiao.des_regiao}</out>
												</option>
											</c:forEach>
										</select>
									</div>
									<div class="span3">
										<label class="">Bairro:</label> 
										<select name="bairro.cod_bairro" id="bairro" class="span12" required="">
											<option value="">Selecione</option>					
										</select>
									</div>
								</div>

								<div class="row-fluid">
									<div class="span2">
										<label class="">Telefone 1:</label> <input type="text"
											name="num_tel1" class="input-small span12" maxlength="15" required="">
									</div>
									<div class="span2">
										<label class="">Telefone 2:</label> <input type="text"
											name="num_tel2" class="input-small span12" maxlength="15">
									</div>
									<div class="span2">
										<label class="">Telefone 3:</label> <input type="text"
											name="num_tel3" class="input-small span12" maxlength="15">
									</div>									
								</div>
								<div class="row-fluid">
									<label>Tipo de Atendimento:</label>
									<form:checkboxes element="label class='checkbox-inline'" required="required" cssClass="checkbox" path="tiposAtendimentoAux" items="${tiposAtendimentosMap}"></form:checkboxes>
								</div>
								<br>
								<div class="span12 text-right">
									<input type="submit" class="btn btn-primary" value="Salvar" />
									<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" />Cancelar</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div> -->
		</div>
	</div>
</body>

<script src="../resources/js/jquery-1.11.3.min.js"></script>
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