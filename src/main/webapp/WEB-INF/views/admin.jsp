<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>

<meta charset="UTF-8">
<meta name=description content="Psi - Painel Administrativo" />
<meta name=viewport content="width=device-width, initial-scale=1" />

<title>Psi - Painel Administrativo</title>

<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-responsive.css">
<link rel="stylesheet" href="resources/css/theme.css">

</head>
<body>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<a class="brand" href="home.html"><img
				src="resources/img/logo11.png" alt="Logo PSI"
				title="Ir para Página Inicial" /> </a>

		</div>

	</div>
	<br />

	<div class="container">

		<div class="row">
			<div class="span12">
				&nbsp;&nbsp; </span> <br />
				<br />
				<br />
			</div>
		</div>
	</div>
	<div class="container-fluid">

		<div class="row-fluid">
			<div class="span12" style="text-align: right">
				<i class="icon-user"></i> Olá, Usuário | <span
					style="color: #1E90FF;">SAIR</span> <br /> <br /> <br /> <br />
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<h4>Painel Administrativo</h4>
		<hr>
	</div>
	<div class="container-fixed">
		<div class="row">

			<div class="span11">
				<div class="space">
					<div style="" />
						<a href="#"><img formaction="tipoUnidade" class="image img-polaroid pos responsive"
						src="resources/img/btm_medico.png" alt="placeholder image"
						height="" width="100px" title="Gerenciar Unidade de Atendimento" /> 
						</a>
						
						<a href="#"><img class="image img-polaroid pos responsive"
						src="resources/img/btm_hospital.png" alt="placeholder image"
						height="" width="100px" title="Gerenciar Tipo de Unidade" /> 
						</a>
						
						<a href="#"><img formaction="tipoAtendimento" class="image img-polaroid pos responsive"
						src="resources/img/btm_especialidade.png" alt="placeholder image"
						height="" width="100px" title="Gerenciar Tipo Atendimento"> 
						</a>
						
						<a href=""><img class="image img-polaroid pos responsive"
							src="resources/img/btm_regiao.png" alt="placeholder image"
							height="" width="100px" title="Gerenciar Região">
						</a>
				</div>
			</div>

		</div>
	</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>
