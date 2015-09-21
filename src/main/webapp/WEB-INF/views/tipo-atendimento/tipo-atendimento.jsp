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

<title>Psi - Tipo de Atendimento</title>

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
				<span class="icon-user status"></span> Olá, <a href="#">Usuário	| Sair</a>
			</div>
		</div>


		<div class="container-fluid">
			<div class="row-fluid ">
				<div class="span12 titulo">
					<h6>Tipo de Atendimento</h6>
				</div>
			</div>
		</div>

		<br/>
		<br/>

		<div class="container-fluid">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="well">
							<h4>Formulário de Cadástro de Tipo de Atendimento</h4>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<form action="adicionarTipoAtendimento" method="post">
									<div class="span12">
										<label>Nome do Tipo de Atendimento</label> <input type="text"
											name="desc_tipo_atendimento" id="desc_tipo_atendimento" style="width: 98.5%"
											maxlength="100"><br>
										<form:errors path="tipoAtendimento.desc_tipo_atendimento"
											cssStyle="color:red" />
									</div>
									<div class="container-fluid">
										<div class="span12 text-right">
											<input type="submit" class="btn btn-primary" value="Salvar" />
											<a href="../tipoAtendimento/" class="btn btn-primary" value="Cancelar" />Cancelar</a>
										</div>
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
		$(document).ready(function(){
			$("form").submit(function(e){
				e.preventDefault();
				alert("Inserido com sucesso"); //?
				this.submit();
				
				/*var tipo_atendimento = document.getElementById("desc_tipo_atendimento").value;
				if (tipo_atendimento == "") {
					alert("Insira o nome do tipo");
				} else {
					$.ajax({
						url: "adicionarTipoAtendimento",
						type: "POST",
						data: { 
							tipo_atendimento: tipo_atendimento
						}
					})
					.done(function(result) {
						//alert("Inserido com sucesso");
						alert(result);
					})
					.fail(function(result) {
						alert("Erro na resposta do servidor");
						console.log(result);
					});
				}*/
			});
		});
	</script>
</html>