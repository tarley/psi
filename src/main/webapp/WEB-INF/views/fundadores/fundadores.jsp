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
    <%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<link rel="stylesheet" href="../resources/css/thumbnail.css" />
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
	    		<a class="navbar-brand" href="#">
        			<img class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="../resources/img/logo.png"  />
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
				<li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em"></span> Página Inicial</a></li>
				<li  class="teste"><a class="link" href="../unidadeAtendimento/" ><span class="glyphicon glyphicon-pencil" style="font-size:1em;"></span> Cadastrar Unidade</a></li>
				<li class="teste"><a href="../tipoAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Cadastrar Tipo de Atendimento</a></li>
				<li class="teste"><a href="../../psi" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
	      	</ul>
      		<ul class="nav navbar-nav navbar-right">
				<li class="dropdown" >
         			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
         			<ul class="dropdown-menu">
	           			<li><a href="#"><span class="glyphicon glyphicon-cog" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	           			<li><a href="logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
         			</ul>
       			</li>
        	</ul>
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	<div class="consdfatainer">
  
	    <div class="row col-md-12">
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	      
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	           <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png" alt="...">
	            </div>
	      	</div>        
	        
	  	</div>
	  	<div class="row col-md-12">
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	      
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	           <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png" alt="...">
	            </div>
	      	</div>        
	        
	  	</div>
	  	<div class="row col-md-12">
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	      
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	            <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png"" alt="...">
	            </div>
	      	</div>
	
	        <div class="col-md-3">            
	           <div class="thumbnail">
	                <div class="caption">
	                    <h4>Nome do aluno</h4>
	                    <p>Sistemas de informação</p>	                   
	                    <a href="" class="label label-info" rel="tooltip" title="Facebook">Facebook</a></p>
	                	<img src="../resources/img/si.jpg">
	                </div>
	                <img src="../resources/img/400x300.png" alt="...">
	            </div>
	      	</div>        
	        
	  	</div>
	  
	</div><!-- /.container -->
	
	<div id="footer" style="background-color:#e7e7e7; padding-top:15px; position:absolute; bottom:0px; width:100%">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador Tarley Lanna.</p>
		</div>
	</div>
<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%> 
<script src="../resources/js/thumbnail.js"></script> 
</body>
</html>