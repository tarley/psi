<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title>PSI | Gerenciar Unidade</title>

	<link rel="stylesheet" href="../resources/css/datatables.min.css"/>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/theme.css"/>

	<script type="text/javascript" src="../resources/js/datatables.min.js"></script>


	<script type="text/JavaScript" charset="utf-8">
	
	$(document).ready(function() {
		$('#GerenciarUnidade').DataTable();
	} );	
	</script>



</head>

<body>
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

	<div class="container-fluid centralizarBox">
	<form>
			<div class="span12 text-right" style="margin-bottom:10px">
				<input type="submit" class="btn btn-success" formaction="cadastrarUnidadeAtendimento" value="Cadastrar Novo"/>
			</div>
	</form>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> Gerenciar Unidade</h3>
			</div>

			<div class="panel-body">
				<table id="GerenciarUnidade" class="display" cellspacing="0" width="100%">

					<thead>
						<tr class="tr_padrao"> 
						      <th width="250px">Nome</th>
						      <th>Bairro</th>
						      <th>Regiao</th>
						      <th>Atendimento</th>
						      <th>Logradouro</th>
						      <th>CEP</th>
						      <th>Tel1</th>
						      <th>Tel2</th>
						      <th>Tel3</th>
							<th width="105px">Editar | Excluir</th>

						</tr>
					</thead>
					<tbody>
					 <c:forEach items="${listaUnidadesAtendimento}" var="unidadeAtendimento">
						<tr class="tr_padrao" id="row${unidadeAtendimento.cod_unidade_atendimento}">
	   						 <td style="text-align: left">${unidadeAtendimento.nom_uni_atendimento}</td>
						     <td style="text-align: center">${unidadeAtendimento.bairro.des_bairro}</td>
						     <td style="text-align: center">${unidadeAtendimento.regiao.des_regiao}</td>
						     <td style="text-align: center">${unidadeAtendimento.tipoAtendimento.des_tipo_atendimento}</td>		
						     <td style="text-align: left">${unidadeAtendimento.nom_logradouro},${unidadeAtendimento.num_numero}</td>
						     <td style="text-align: center">${unidadeAtendimento.num_cep}</td>
						     <td style="text-align: center">${unidadeAtendimento.num_tel1}</td>
						     <td style="text-align: center">${unidadeAtendimento.num_tel2}</td>
						     <td style="text-align: center">${unidadeAtendimento.num_tel3}</td>

							<td>
								<div class="centralizadora" style="margin-left:22px">
									<a href="editarUnidadeAtendimento?id=${unidadeAtendimento.cod_unidade_atendimento}"><div class="botao" title="Editar">
										<span class="glyphicon glyphicon-pencil botao-datableUnidade" aria-hidden="true"></span>
									</a>
								</div>
								<a href="#"onclick="remover(${unidadeAtendimento.cod_unidade_atendimento})">
									<div class="botao" style="background-color:#d9534f" title="Excluir">
											<span class="glyphicon glyphicon-trash botao-datableUnidade" aria-hidden="true"></span>
									</div>
								</a>
							
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
		</div></br></br></br>
	</div>
</div></br></br></br>

<script type="text/javascript">
	// Ativar conteúdo de Busca e Estilização
	$('#GerenciarUnidade')
	.removeClass( 'display' )
	.addClass('table table-striped table-bordered');


	$('#GerenciarUnidade').DataTable( {
		language: {
			"url": "../resources/i18n/datatables-pt_BR.json"
			},
				});
</script>




<script>
		function remover(cod_unidade_atendimento) {
			var resposta = confirm("Deseja remover esse registro?");
		     if (resposta == true) {
				jQuery.ajax({ 
					  url: 'remover/' + cod_unidade_atendimento,
					  async: true,
					  success: function(data) {
					  	alert(data);				  	
					  	$("#row" + cod_unidade_atendimento).remove();
					  	
					  }
				});
		     }
		}
	</script>

		</br></br></br>



<script>
		function remover(cod_unidade_atendimento) {
			var resposta = confirm("Deseja remover esse registro?");
		     if (resposta == true) {
				jQuery.ajax({ 
					  url: 'remover/' + cod_unidade_atendimento,
					  async: true,
					  success: function(data) {
					  	alert(data);				  	
					  	$("#row" + cod_unidade_atendimento).remove();
					  	
					  }
				});
		     }
		}
	</script>

</body>
</html>
</html>
