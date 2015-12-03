<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-margin no-padding">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PSI</title>
	<link rel="Shortcut Icon" href="../resources/img/favicon.ico">
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">	
			<a id="logo" class="navbar-brand logo" href="#"><img  alt="PSI" src="resources/img/logo.png"></a>
			<a id="acesso" class="navbar-brand link pull-right" href="admin"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i>&nbsp;Acesso Restrito</a>
			<a id="fundadores" class="navbar-brand link pull-right" href="fundadores/"><i class="glyphicon glyphicon-education" aria-hidden="true"></i>&nbsp;<span>Fundadores</span></a>
			<a id="sugestao" class="navbar-brand link pull-right" href="mailto:tarley.lana@gmail.com"><i class="glyphicon glyphicon-flag" aria-hidden="true"></i>&nbsp;<span>Sugerir unidade</span></a>
		</div>
	</nav>
	
	<section class="container blocoPai">
		
		<div class="row" id="bloco-pesquisa">
			<div class="col-md-12">
				<form action="pesquisar" method="get">
					<div class="input-group">
						<input type="text" id="des_bairro" name="descricao" value="${empty filtro ? '' : filtro}" 
							class="form-control input-lg autocomplete-suggestions" placeholder="DIGITE O BAIRRO">
						<span class="input-group-btn">
							<button class="btn btn-primary btn-lg" type="submit">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
								<span id="btn-pesquisar-txt"> Pesquisar</span>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		
		<div id="bloco-grid" class="row padding-top-30">
			<div class="col-md-12">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Unidade</th>
								<th>Endereço</th>
								<th>Mapa</th>
							</tr>
						</thead>
		
						<tbody>
			 				<c:forEach items="${listaUnidadeAtendimento}" var="unidadeAtendimento">
			 					<tr class="${unidadeAtendimento.bairro.des_bairro.equalsIgnoreCase(filtro) ? 'highlight' : ''}">
									<td>${unidadeAtendimento.nom_uni_atendimento}</td>
									<td>
										${unidadeAtendimento.nom_logradouro}, 
										${unidadeAtendimento.num_numero} - 
										${unidadeAtendimento.bairro.des_bairro} -
										${unidadeAtendimento.regiao.des_regiao}
									</td>
									<td>
										<a class="btn btn-primary" 
										onclick="javascript:setLocation('${unidadeAtendimento.nom_logradouro}, ${unidadeAtendimento.num_numero} - ${unidadeAtendimento.bairro.des_bairro} - ${unidadeAtendimento.bairro.cidade.nom_cidade}',
										'${unidadeAtendimento.nom_uni_atendimento}', '${unidadeAtendimento.num_tel1}', '${unidadeAtendimento.num_tel2}', '${unidadeAtendimento.num_tel3}', '${unidadeAtendimento.tipoAtendimento.des_tipo_atendimento}');">
											<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
										</a>
									</td>
								</tr>
			 				</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div id="bloco-mapa" class="row padding-top-30">
			<div class="col-md-12">
				<a href="#" class="btn btn-default margin-bottom-5">Voltar</a>
				<div id="mapa"></div>
				<a href="#" class="btn btn-default margin-top-5 hide">Voltar</a>
			</div>
		</div>
		
	</section>

	<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
	
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBo3wiTHEdnl0vLz_Z4FZbivw6JsnjT2Pg&signed_in=true&callback=initMap"></script>
 	<script src="/psi/resources/js/jquery.autocomplete.js" type="text/javascript"></script>

	<script>

     $('#des_bairro').autocomplete({
         serviceUrl: 'listarBairros',
         minChars:3,
         type : "GET",
         transformResult: function(response) {
     		return {      	
     		  suggestions: $.map($.parseJSON(response), function(item) {
     		      return { value: item };
     		   })
     		}
         }
     });
	
	$(document).ready(function(){
		if ( document.getElementById("des_bairro").value == "" ) {
			$("#bloco-grid").hide();
			$("#bloco-mapa").hide();
			$("#bloco-pesquisa").css("margin-top", "15%");
		} else {
			$("#bloco-mapa").hide();
		}
		
		$("form").submit(function(e){
			// Verifica se o bairro foi informado. 
			// Caso não, nada acontece. Caso sim, sobe o campo de pesquisa
			// E exibe a grid de resultados
			if ( document.getElementById("des_bairro").value == "" ) {
				e.preventDefault();
			} else {
				if ( $("#bloco-grid").css("display") == "none" && $("#bloco-mapa").css("display") == "none" ) {
					$("#bloco-pesquisa").animate({
						"margin-top": "-=15%"
					}, "slow", function() {
						$("#bloco-grid").show("slow");
					});
				}
			}
		});
		
		$(".table").dataTable({
			"lengthChange": false,
			"pageLength": 6,
			"searching": false,
			"columnDefs" : [
			   { "orderable" : false, "targets" : 2 }
		   	],
			"language" : {
				"url" : "resources/i18n/datatables-pt_BR.json"
			}
		});
		
		$("#bloco-mapa a").click(function(){
			$("#bloco-mapa").fadeOut("slow", function(){
				$("#bloco-grid").fadeIn("slow");
			});
		});
	});

		function setLocation(endereco, nome, tel1, tel2, tel3, tipoAtendimento)
		{
			$("#bloco-grid").fadeOut("slow", function(){
				$("#bloco-mapa").fadeIn("slow");
				
				var map = new google.maps.Map(document.getElementById('mapa'));
				var geocoder = new google.maps.Geocoder();
				var marker = new google.maps.Marker({
					map : map,
					icon: "resources/img/hospital-icon.png"
				});
	
				var infowindow = new google.maps.InfoWindow(), marker;
				var contentString =
			      '<p><b>' + nome + '</b></p>'+
			      '<p><b> Tipo de Atendimento: </b>' + tipoAtendimento + '</p>'+
			      '<p>' + endereco + '</p>'+
			      '<p>' + tel1 + '</p>'+
			      '<p>' + tel2 + '</p>'+
			      '<p>' + tel3 + '</p>';
	
				google.maps.event.addListener(marker, 'click',
					(function(marker, i) {
						return function() {
							infowindow.setContent(contentString);
							infowindow.open(map, marker);
						}
					})(marker))
	
				geocoder.geocode({
					'address' : endereco + ', Brasil', 'region' : 'BR'
				}, function(results, status) {
					if (status == google.maps.GeocoderStatus.OK) {
						if (results[0]) {
							var latitude = results[0].geometry.location.lat();
							var longitude = results[0].geometry.location.lng();
							var location = new google.maps.LatLng(latitude, longitude);
	
							marker.setPosition(location);
							map.setCenter(location);
							map.setZoom(16);
						}
						
						infowindow.setContent(contentString);
						infowindow.open(map, marker);
					}
				});
			});
		}

		function initMap() {
			var bh = {
				lat : -19.9027163,
				lng : -43.9640501
			};
			var map = new google.maps.Map(document.getElementById('mapa'), {
				zoom : 11,
				center : bh
			});
		}
	</script>
</body>
</html>
