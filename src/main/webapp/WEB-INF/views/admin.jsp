<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
    
<!DOCTYPE html>
<html lang="pt-br">
	
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	   	<meta name="viewport" content="width=device-width, initial-scale=1">
	    <title> PSI | Painel Administrativo </title>
	    <%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp" %>
	    
	    
		   
		    <!--[if lt IE 9]>
		      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		    <![endif]-->
	</head>
	
	
	
	<body>
       <!--  Barra de Navega��o -->
	
	
	<nav class="navbar-default">
  		<div class="container-fluid">
	    	<div class="navbar-header">
	    		<a class="navbar-brand" href="#">
        <img alt="Brand" class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="resources/img/logo.png"  />
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
		
        
      <li class="activee"><a class="link" href="#" style="color:#fff"><span class="glyphicon glyphicon-pencil" style="font-size:1em"></span> P�gina Inicial<span class="sr-only">(current)</span></a></li>
		<li  class="teste"><a class="link" href="unidadeAtendimento/" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Cadastrar Unidade</a></li>
		<li class="teste"><a href="tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Cadastrar Atendimento</a></li>
	

				
		
		
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Ol�, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#"><span class="glyphicon glyphicon-cog" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
	
      
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navega��o -->
	
        
        
        <div class="container blocoPai">
			<br />
			<div class="jumbotron">
  <h1>Ol�, seja bem-vindo de Volta :)</h1>
  <p>Se precisar de ajuda � s� clicar no bot�o abaixo.</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button" ><span style="color:#fff">Quero uma explica��o</span></a></p>
</div>
			
       </div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>   
</body>
</html>