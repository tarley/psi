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
	<link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resources/css/bootstrap-theme.min" rel="stylesheet">
	<link href="../resources/css/psi.css" rel="stylesheet">
	<link href="resources/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/jquery.dataTables.min.css">
</head>
<body>

	<!-- Barra | Cabe�alho  -->

	<nav class="navbar navbar-default navbar-fixed-top  barra">
		<div class="container-fluid">	
		
			<div class="navbar-header">
				<a class="navbar-brand logo" href="#"><img  alt="Brand" src="../resources/img/logo.png"  /></a>

			</div>
			
			<d><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  Ol�, Usu�rio | Sair </d>

			
		</div>
		
	</nav>

	<!-- Barra | Container  -->

		<div class="container">

			<div class="well">
				<h4>Formul�rio de Cadastro de Unidade de Atendimento</h4>
			</div>
			<!-- Text field - Nome Unidade Atendimento  -->
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<form action="adicionarUnidadeAtendimento" method="post">
							<div class="row-fluid">
	                        	<div class="span10">
									<label>Nome da Unidade de Atendimento</label> 
									<input class="input-small span12" type="text" name="desc_unidade_atendimento" ><br>
								</div>
								<div class="span2">
		                            <label class="">CEP:</label>
		                            <input type="text" name="num_cep" class="input-small span12">
	                        	</div>
							</div>

                <div class="row-fluid">
                    <div class="span5">
                        <label class="">Endere�o da Unidade:</label>
                        <input type="text" name="nom_logradouro" class="input-small span12">
                    </div>
                    <div class="span1">
                        <label class="">N�:</label>
                        <input type="text" name="num_numero" class="input-small span12">
                    </div>
                    <div class="span3">
                        <label class="">Bairro:</label>
                        <select name="cod_bairro" class="span12">
                            <!--<forEach var="bairros" items="listarBairro">-->
	                            <option>
	                            	<!--<out value="${bairros.cod_bairro}">${bairros.des_bairro}</out>-->
	                            </option>
                            <!--</forEach>-->
                        </select>
                    </div>
                    <div class="span3">
                        <label class="">Regi�o:</label>
                        <select name="cod_regiao" class="span12">
                        	<!--<forEach var="regioes" items="listarRegiao">-->
	                            <option>
	                            	<!--<out value="${regioes.cod_regiao}">${regioes.des_regiao}</out>-->
								</option>
							<!--</forEach>-->
                        </select>
                    </div> 
                </div>

                <div class="row-fluid">
                    <div class="span2">
                        <label class="">Telefone:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span2">
                        <label class="">Telefone:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span2">
                        <label class="">Telefone:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span6">
                        <label class="">Tipo de Atendimento:</label>
                        <br/><input style="padding: 0 5px;" type="checkbox" class="input-small">&nbsp; Atendimento Urgente &nbsp;
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Casa de Reabilita��o 
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Posto de Atendimento  
                    
                    </div>
                </div>
                <form:errors path="unidadeAtendimento.desc_unidade_atendimento"	cssStyle="color:red" />
							<br>
							<div class="span12 text-right">
								<input type="submit" class="btn btn-primary" value="Salvar" />
								<input type="submit" class="btn btn-primary" value="Cancelar" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</div>

</body>

<script src="../resources/js/jquery-1.11.3.min.js"></script>
	<script>
		$(document).ready(function(){
			$("form").submit(function(e){
				e.preventDefault();
				alert("Inserido com sucesso"); //?
				this.submit();
			});
		});
	</script>

</html>