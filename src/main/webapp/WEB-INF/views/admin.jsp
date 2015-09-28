<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> PSI | Painel Administrativo</title>
	<link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/bootstrap-theme.min" rel="stylesheet">
	<link href="resources/css/psi.css" rel="stylesheet">
	<link href="resources/css/bootstrap-responsive.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>

	<nav class="navbar navbar-default navbar-fixed-top  barra">
		<div class="container-fluid">	
		
			<div class="navbar-header">
				<a class="navbar-brand logo" href="#"><img  alt="Brand" src="resources/img/logo.png"  /></a>

			</div>
			
			<d><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  Olá, Usuário | Sair </d>

			
		</div>
		
	</nav>
	

	<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="linha">
						
							<h4><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Painel Administrativo</h4>
					</div>
				</div>
			</div>
			
			<br /><br />
			
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-3">
					<a href="unidadeAtendimento/" title="Permite Gerenciar a Unidade de Atendimento"><div class="box">
						<span class="glyphicon glyphicon-home tamanho" > </span> <br /> <span>&nbsp;Gerenciar Unidade</span>
					</div></a>
				</div>

				<div class="col-xs-6 col-sm-6 col-md-3"> 					
				<a href="tipoAtendimento/"><div class="box">
						<span class="glyphicon glyphicon-list-alt tamanho" title="Permite Gerenciar o Tipo de Atendimento"> </span> <br /> <span>Tipo de Atendimento</span>
					</div></a>
				</div>

				<div class="col-xs-6 col-sm-6 col-md-3"> 					
					<a href="#"><div class="box">
						<span class="glyphicon glyphicon-search tamanho"> </span> <br /> <span>&nbsp; Pesquisar &nbsp;Clínica</span>
					</div></a>
				</div>


				<div class="col-xs-6 col-sm-6 col-md-3"> 					
					<a href="#"><div class="box">
						<span class="glyphicon glyphicon-wrench tamanho"> </span> <br /> <span>Alterar Dados de Conta</span>
					</div></a>
				</div>
				

			</div>
	
	</div>
	

	
	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
  </body>
</html>