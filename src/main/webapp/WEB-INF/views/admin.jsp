<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false"%>
    
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title> PSI | Painel Administrativo </title>
    <link rel="Shortcut Icon" href="resources/img/favicon.ico">
    <%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp" %>
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
	    		<a class="navbar-brand" href="/admin">
			        <img alt="PSI" class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="resources/img/logo.png"  />
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
					<li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-home" style="font-size:1em"></span> Página Inicial<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="unidadeAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Unidade de Atendimento</a></li>
					<li class="teste"><a class="link" href="tipoAtendimento/" ><span class="glyphicon glyphicon-credit-card" style="font-size:1em;"></span> Tipo de Atendimento</a></li>
					<li class="teste"><a href="usuario/" class="link"><span class="glyphicon glyphicon-user" style="font-size:1em"></span> Usuário</a></li>
					<li class="teste"><a href="../psi" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#"><span class="glyphicon glyphicon-wrench" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="./logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	
	<div class="container blocoPai">
		<br />
		<div class="jumbotron" style="background-image: url('resources/img/1515.png'); background-repeat:no-repeat; background-position: right;">
			<h1>Olá, seja bem-vindo! :)</h1>
			<!--<p>Se precisar de ajuda é só clicar no botão abaixo.</p>
			<p><a class="btn btn-primary btn-lg" href="#" role="button" type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"><span style="color:#fff">Abrir Tutorial</span></a></p>
		  	-->
		  	
		  	<!-- Large modal -->
			<div class="modal fade bs-example-modal-lg" id="teste" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
				 <br/><br/><br/><br/><br/><br/><br/><br/>
				 <div class="modal-dialog modal-lg">
				 	<div class="modal-content">
				 		<div id="carousel-example-generic" class="carousel slide">
							<!-- Indicators -->
							
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
		   						<div class="item active">
								     <img src="resources/img/tuto1.png" alt="teste">
								</div>
							   	<div class="item">
								     <img src="resources/img/tuto1.png" alt="...">
								</div>
		   					</div>
		 				</div>
		
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"></a>
		  				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer" style="background-color:#e7e7e7; padding-top:15px; position:absolute; bottom:0px; width:100%">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador Tarley Lanna.</p>
		</div>
	</div>

<script>
	$(document).ready(function() {
		   $('#teste').modal('show');
	});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>   
</body>
</html>