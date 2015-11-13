<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title> PSI | Tipo Atendimento</title>
	<link rel="Shortcut Icon" href="../resources/img/favicon.ico">
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
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
			        <img alt="PSI" class="img-responsive" style="max-width: 100%;margin-top:-14px" alt="PSI" src="../resources/img/logo.png"  />
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
					<li class="teste"><a class="link" href="../admin" ><span class="glyphicon glyphicon-home" style="font-size:1em;"></span> Página Inicial</a></li>
					<li class="teste"><a href="../unidadeAtendimento/" class="link"><span class="glyphicon glyphicon-edit" style="font-size:1em"></span> Unidade de Atendimento</a></li>
					<li class="activee"><a class="link" href="../tipoAtendimento/" style="color:#fff"><span class="glyphicon glyphicon-credit-card" style="font-size:1em"></span> Tipo de Atendimento<span class="sr-only">(current)</span></a></li>
					<li class="teste"><a href="../usuario/" class="link"><span class="glyphicon glyphicon-user" style="font-size:1em"></span> Usuário</a></li>
					<li class="teste"><a href="/psi" class="link"><span class="glyphicon glyphicon-search" style="font-size:1em"></span> Pesquisar Unidade</a></li>
		      	</ul>
      			<ul class="nav navbar-nav navbar-right">
      		  		<li class="dropdown" >
          			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Olá, Administrador<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="#"><span class="glyphicon glyphicon-wrench" style="font-size:1em;"></span> &nbsp;Gerenciar Contas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            			<li><a href="../logout"><span class="glyphicon glyphicon-share-alt" style="font-size:1em"></span>&nbsp; Sair  </a></li>
          			</ul>
        		</li>
        		</ul>
    		</div>
  		</div>
	</nav> <!-- Encerra a barra de navegação -->
	<br/><br/>	<br/><br/>	<br/><br/>
	<!-- Barra | Container  -->
		<div class="container centralizarBox">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Cadastrar Tipo de Atendimento</h3>
			</div>
			<div class="panel-body">
				<div class="row-fluid">
					<div class="span12">
						<form action="adicionarTipoAtendimento" method="post">
							<div class="row">
								<div class="col-xs-12 col-md-12">
		     						<label >Nome do tipo de atendimento:</label>
		    						 <input type="text" name="des_tipo_atendimento" id="des_tipo_atendimento" maxlength="80" placeholder="Entre com o nome do tipo de atendimento" class="form-control input-md" required=""><br>
									<form:errors path="tipoAtendimento.des_tipo_atendimento" cssStyle="color:red" />
		 						 </div>
		 					</div>
							<div class="container-fluid">
								<div class="text-right" style="margin-right:-15px">
									<input type="submit" class="btn btn-primary" value="Salvar" />
									<a href="../tipoAtendimento/" style="color:#00000" class="btn btn-default" value="Cancelar">Cancelar</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="container centralizadora">
			<p class="muted credit">&copy; PSI - Desenvolvido pela Turma de Sistemas de Informação Newton Paiva | 8° Período 2015 - Professor Orientador Tarley Lanna</a>.</p>
		</div>
    </div>
</body>
	

</html>