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
	<title> PSI | Cadastrar Tipo de Unidade</title>
	<link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resources/css/bootstrap-theme.min" rel="stylesheet">
	<link href="../resources/css/psi.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/jquery.dataTables.min.css">

<script src="../resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../resources/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#unidadeAtendimentoTable').DataTable({
		"language": {
			"url": "../resources/i18n/datatables-pt_BR.json"
		}
	});
} );
</script>

</head>
<body>

	<!-- Barra | Cabeçalho  -->

	<nav class="navbar navbar-default navbar-fixed-top  barra">
		<div class="container-fluid">	
		
			<div class="navbar-header">
				<a class="navbar-brand logo" href="#"><img  alt="Brand" src="../resources/img/logo.png"  /></a>

			</div>
			
			<d><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  Olá, Usuário | Sair </d>

			
		</div>
		
	</nav>

		<div class="container-fluid">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="well">
							<h4>Formulário de Cadastro de Tipo de Atendimento</h4>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<form action="adicionarTipoAtendimento" method="post">
									<div class="span12">
										<label>Nome do Tipo de Atendimento</label> <input type="text"
											name="desc_tipo_atendimento" id="desc_tipo_atendimento" 
											maxlength="100" class="input-small span12"><br>
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