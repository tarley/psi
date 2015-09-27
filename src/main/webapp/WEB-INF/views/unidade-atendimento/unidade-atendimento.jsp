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

<title>Psi - Unidade de Atendimento</title>

<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-responsive.css">
<link rel="stylesheet" href="../resources/css/theme.css">
</head>
<body>

	<!-- Barra | Cabe�alho  -->

	<div class="navbar navbar-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img src="../resources/img/logo11.png" alt="Logo PSI" title="Ir para P�gina Inicial" /> </a>
			</div>
		</div>
	</div>

	<!-- Barra | Container  -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span10 "></div>
			<div class="span2 text-right">
				<span class="icon-user status"></span> Ol�, <a href="#">Usu�rio | Sair</a>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row-fluid ">
				<div class="span12 titulo">
					<h6>Unidade de Atendimento</h6>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="span12">
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
									<input type="text" name="desc_unidade_atendimento" style="width:99%;"  maxlength="100"><br>
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
                    <div class="span2">
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
                        <input style="padding: 0 5px;" type="checkbox" class="input-small">&nbsp; Atendimento Urgente &nbsp;
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Casa de Reabilita��o 
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Posto de Atendimento  
                        <input style="padding: 0 5px;"type="checkbox" class="input-small"> Acompanhamento Cl�nico  
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