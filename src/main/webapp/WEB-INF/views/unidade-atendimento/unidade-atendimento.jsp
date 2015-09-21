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

	<!-- Barra | Cabeçalho  -->

	<div class="navbar navbar-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img src="../resources/img/logo11.png" alt="Logo PSI" title="Ir para Página Inicial" /> </a>
			</div>
		</div>
	</div>

	<!-- Barra | Container  -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span10 "></div>
			<div class="span2 text-right">
				<span class="icon-user status"></span> Olá, <a href="#">Usuário | Sair</a>
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
				<h4>Formulário de Cadastro de Unidade de Atendimento</h4>
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
		                            <input type="text" class="input-small span12">
	                        	</div>
							</div>

                <div class="row-fluid">
                    <div class="span5">
                        <label class="">Endereço da Unidade:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span1">
                        <label class="">N°:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span3">
                        <label class="">Cidade:</label>
                        <select class="span12">
                            <option>Belo Horizonte</option>
                            <option>Contagem</option>
                            <option>Sabará</option>
                        </select>
                    </div>
                    <div class="span2">
                        <label class="">Região:</label>
                        <select class="span12">
                            <option>Selecione a Região</option>
                            <option>Norte</option>
                            <option>Nordeste</option>
                            <option>Centro-Oeste</option>
                            <option>Sudeste</option>
                            <option>Sul</option>
                        </select>
                    </div>
                    <div class="span1">
                        <label class="">UF:</label>
                       	 	<select class="span12">
					    		<option value="estado">Selecione o Estado</option> 
					    		<option value="ac">AC</option> 
					    		<option value="al">AL</option> 
					    		<option value="am">AM</option> 
					    		<option value="ap">AP</option> 
					    		<option value="ba">BA</option> 
					    		<option value="ce">CE</option> 
					    		<option value="df">DF</option> 
					    		<option value="es">ES</option> 
					    		<option value="go">GO</option> 
					    		<option value="ma">MA</option> 
					    		<option value="mt">MG</option> 
					    		<option value="ms">MS</option> 
					    		<option value="mg">MG</option> 
					    		<option value="pa">PA</option> 
					    		<option value="pb">PB</option> 
					    		<option value="pr">PR</option> 
					    		<option value="pe">PE</option> 
					    		<option value="pi">PI</option> 
					    		<option value="rj">RJ</option> 
					    		<option value="rn">RN</option> 
					    		<option value="ro">RO</option> 
					    		<option value="rs">RS</option> 
					    		<option value="rr">RR</option> 
					    		<option value="sc">SC</option> 
					    		<option value="se">SE</option> 
					    		<option value="sp">SP</option> 
					    		<option value="to">TO</option> 
                        	</select>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span1">
                        <label class="">DDD:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span2">
                        <label class="">Telefone:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span1">
                        <label class="">DDD:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span2">
                        <label class="">Telefone:</label>
                        <input type="text" class="input-small span12">
                    </div>
                    <div class="span6">
                        <label class="">Tipo de Atendimento:</label>
                        <input style="padding: 0 5px;" type="checkbox" class="input-small">&nbsp; Atendimento Urgente &nbsp;
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Casa de Reabilitação 
                        <input style="padding: 0 5px;"type="checkbox" class="input-small">&nbsp; Posto de Atendimento  
                        <input style="padding: 0 5px;"type="checkbox" class="input-small"> Acompanhamento Clínico  
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
</html>