<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> PSI | Painel Administrativo</title>
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<link rel="stylesheet" href="../resources/css/bootstrap.css"/>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script src="../resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../resources/js/jquery.dataTables.min.js" type="text/javascript"></script>

</head>
<body>

	<!-- Barra | Cabeçalho  -->

	<nav class="navbar navbar-default navbar-fixed-top  barra">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a class="navbar-brand logo" href="#"><img  alt="Brand" src="../resources/img/logo.png"  /></a>
			</div>
			<div class="blocoLogin">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Usuário | Sair 
			</div>
		</div>
	</nav>
	

	<!-- Barra | Container  -->

		<div class="container blocoPai borda-form">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="well">
							<h4>Formulário de Edição de Tipo de Atendimento - ${tipoAtendimento.cod_tipo_atendimento}</h4>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<form action="alterarTipoAtendimento" method="post">
									<div class="span12">
										<input type="hidden" name="cod_tipo_atendimento" value="${tipoAtendimento.cod_tipo_atendimento}" />
										<label>Nome do Tipo de Atendimento</label> <input type="text"
											name="des_tipo_atendimento" id="des_tipo_atendimento" value="${tipoAtendimento.des_tipo_atendimento}" maxlength="100" class="input-small span12"><br>
										<form:errors path="tipoAtendimento.des_tipo_atendimento"
											cssStyle="color:red" />
									</div>
									<div class="container-fluid">
										<div class="span12 text-right">
											<input type="submit" class="btn btn-primary" value="Salvar" />
											<a href="../tipoAtendimento/" style="color:#fff" class="btn btn-primary" value="Cancelar" />Cancelar</a>
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
				alert("Editado com sucesso"); //?
				this.submit();
				
				/*var tipo_atendimento = document.getElementById("des_tipo_atendimento").value;
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