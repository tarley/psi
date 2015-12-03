<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title> PSI | Tipo Atendimento</title>
	<link rel="Shortcut Icon" href="../resources/img/favicon.ico">
	<meta charset="UTF-8">
	<meta name=description content="Psy - Painel Administrativo" />
	<meta name=viewport content="width=device-width, initial-scale=1" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
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
					<li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Página Inicial</a></li>
					<li class="activee"><a class="link" href="../unidadeAtendimento/" style="color:#fff"><span class="glyphicon glyphicon-credit-card" style="font-size:1em"></span> Unidade de Atendimento<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Tipo de Atendimento</a></li>
					<li class="teste"><a href="../usuario/" class="link"><span class="glyphicon glyphicon-user" style="font-size:1em"></span> Usuário</a></li>
					<li class="teste"><a href="../" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<!-- <li><a href="#"><span class="glyphicon glyphicon-wrench" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li> -->
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	<br /><br /><br /><br /><br />

	<!-- Barra | Container  -->
	<div id="tudo">
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
    						 <input id="textinput" name="nom_uni_atendimento" type="text" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-2">
     						<label >CEP:</label>
     						<input id="cep" name="num_cep" type="text" placeholder="xxxxx-xxx" class="form-control input-md" required="">
  						</div>
 					</div>
 					<br />
 					<div class="row">
						<div class="col-xs-6 col-md-5">
     						<label >Rua / Avenida:</label>
    						 <input id="textinput" name="nom_logradouro" type="text" class="form-control input-md" required="">
 						 </div>
 						<div class="col-xs-6 col-md-1">
     						<label >Nº:</label>
     						<input id="textinput" name="num_numero" type="text" onkeypress='return SomenteNumero(event)' class="form-control input-md" required="">
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
								<option value="">Selecione a região</option>					
							</select>
						</div>
					</div>
					<br/>
					<div class="row">
						<div class="col-xs-6 col-md-2">
     						<label >Telefone 1:</label>
    						 <input type="tel" id="campoTel1" placeholder="(xx) xxxx-xxxx" name="num_tel1" class="form-control input-md" maxlength="15" required="" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
 						 </div>
 						<div class="col-xs-6 col-md-2">
     						<label >Telefone 2:</label>
     						 <input type="tel" id="campoTel2" placeholder="(xx) xxxx-xxxx" name="num_tel2" class="form-control input-md" maxlength="15" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
  						</div>

  						<div class="col-xs-6 col-md-2">
     						<label >Telefone 3:</label>
     						 <input type="tel" id="campoTel3" placeholder="(xx) xxxx-xxxx" name="num_tel3" class="form-control input-md" maxlength="15" onkeypress="if (!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;">
  						</div>
  						<div class="col-xs-6 col-md-6">
     						<label>Tipos de Atendimento:</label>
								<form:select path="tiposAtendimentoAux" multiple="multiple" id="tiposAtendimentos" required="required">
									<form:options items="${tiposAtendimentosMap}" ></form:options>
								</form:select>
						</div>
					</div>
				</div><br>
						<div class="text-right" style="margin-right:14px">
							<input type="submit" class="btn btn-primary" value="Salvar" />
							<a href="../unidadeAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar" />Cancelar</a>
						</div>
			</form:form>
		</div>
	</div>
	</div>
	</div><br/><br/><br/><br/>
		<div id="clear"></div>
		<div id="footer">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador: Tarley Lana.</p>
		</div>
	</div>
</body>

<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
<script>
     $("#tiposAtendimentos").multipleSelect({
         filter: true,
         width: '100%',
         position: 'top',
         placeholder: "Selecione os tipos de atendimento"
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
<script>
	function SomenteNumero(e){
	    var tecla=(window.event)?event.keyCode:e.which;   
	    if((tecla>47 && tecla<58)) return true;
	    else{
	    	if (tecla==8 || tecla==0) return true;
		else  return false;
	    }
	}
</script>
</html>