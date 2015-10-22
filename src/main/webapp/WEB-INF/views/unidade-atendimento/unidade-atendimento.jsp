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
	<title> PSI | Cadastrar Unidade</title>
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<link rel="stylesheet" href="../resources/css/bootstrap.css"/>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
        <!--  <li class="active"><a href="#">Página Inicial<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Listar</a></li>-->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-align-justify" aria-hidden="true">&nbsp;Listar<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Unidades Cadastradas</a></li>
            <li><a href="#">Tipos de Unidades Cadastradas</a></li>
          </ul>
          
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <!--  <li class="active"><a href="#">Página Inicial<span class="sr-only">(current)</span></a></li>
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
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Usuário<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Alterar dados de conta</a></li>
            <li><a href="#">Gerenciar contas de usuário</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Finalizar sessão</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br /><br/>

	<!-- Barra | Container  -->
		<div class="container centralizarBox">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Cadastrar Unidade</h3>
			</div>

			<div class="panel-body">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<form action="adicionarUnidadeAtendimento" method="post">
							<div class="row-fluid">
	                        	<div class="span10">
									<label>Nome da Unidade de Atendimento</label> 
									<input class="input-small span12" type="text" name="nom_uni_atendimento" required=""><br>
								</div>
								<div class="span2">
		                            <label class="">CEP:</label>
		                            <input type="text" name="num_cep" class="input-small span12" required="">
	                        	</div>
							</div>

                <div class="row-fluid">
                    <div class="span5">
                        <label class="">Endereço da Unidade:</label>
                        <input type="text" name="nom_logradouro" class="input-small span12" required="">
                    </div>
                    <div class="span1">
                        <label class="">N°:</label>
                        <input type="text" name="num_numero" class="input-small span12" required="">
                    </div>
                    <div class="span3">
                        <label class="">Região:</label>
                        <select name="regiao.cod_regiao" class="span12" required="">
                        	<option value="">Selecione...</option>
                        	<c:forEach var="regiao" items="${listaRegioes}">
	                            <option value="${regiao.cod_regiao}">
	                            	<out>${regiao.des_regiao}</out>
								</option>
							</c:forEach>
                        </select>
                    </div> 
                    <div class="span3">
                        <label class="">Bairro:</label>
                        <select name="bairro.cod_bairro" class="span12" required="">
							<option value="">Selecione...</option>
							<c:forEach var="bairro" items="${listaBairros}">
	                            <option value="${bairro.cod_bairro}">
	                            	<out>${bairro.des_bairro}</out>
								</option>
							</c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span2">
                        <label class="">Telefone 1:</label>
                        <input type="text" name="num_tel1" class="input-small span12" required="">
                    </div>
                    <div class="span2">
                        <label class="">Telefone 2:</label>
                        <input type="text" name="num_tel2" class="input-small span12">
                    </div>
                    <div class="span2">
                        <label class="">Telefone 3:</label>
                        <input type="text" name="num_tel3" class="input-small span12">
                    </div>
                    <div class="span6">
                        <label class="">Tipo de Atendimento:</label>
      
                        <c:forEach var="tipoAtendimento" items="${listaTiposAtendimentos}">	                            	
							<input style="margin:10px;" type="checkbox" name="tipoAtendimento.cod_tipo_atendimento" 
							value="${tipoAtendimento.cod_tipo_atendimento}" class="input-small" >
							<out >${tipoAtendimento.des_tipo_atendimento}</out>
						</c:forEach>                    
                    </div>
                </div>
                <form:errors path="unidadeAtendimento.desc_unidade_atendimento"	cssStyle="color:red" />
							<br>
							<div class="span12 text-right">
								<input type="submit" class="btn btn-primary" value="Salvar" />
								<a href="../unidadeAtendimento/" style="color:#fff" class="btn btn-primary" value="Cancelar" />Cancelar</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
		
</div>

</body>

<script src="../resources/js/jquery-1.11.3.min.js"></script>
	<script>
		/*$(document).ready(function(){
			$("form").submit(function(e){
				e.preventDefault();
				alert("Inserido com sucesso"); //?
				this.submit();
			});
		});*/
	</script>

</html>