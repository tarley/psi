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
            <li><a href="../unidadeAtendimento/">Unidades Cadastradas</a></li>
            <li><a href="../tipoAtendimento/">Tipos de Unidades Cadastradas</a></li>
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

			<br /> <br/>

	<!-- Barra | Container  -->
		<div class="container centralizarBox">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Cadastrar Tipo de Atendimento</h3>
			</div>

			<div class="panel-body">
						<div class="row-fluid">
							<div class="span12">
								<form action="adicionarTipoAtendimento" method="post">
									<div class="span12">
										<label>Nome do Tipo de Atendimento</label> <input type="text"
											name="des_tipo_atendimento" id="des_tipo_atendimento" 
											maxlength="100" class="input-small span12" required=""><br>
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
	/*				
				var tipo_atendimento = document.getElementById("des_tipo_atendimento").value;
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
				}
			});
		});*/
	</script>
</html>