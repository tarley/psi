<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html class="no-margin no-padding">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>PSI</title>

<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
</head>
<body>

	<header>
		<div class="row">
			<div class="col-md-12">
				<img src="resources/img/logo.png" alt="PSI Logo" title="Ir para Página Inicial" class="pull-left">
			</div>
		</div>
	</header>
	
	<section class="container">
		
		<div class="row" id="bloco-pesquisa">
			<div class="col-md-12">
				<form action="pesquisar" method="get">
					<div class="input-group">
						<input type="text" id="des_bairro" name="descricao" value="${empty filtro ? '' : filtro}" 
							class="form-control input-lg" placeholder="DIGITE O BAIRRO">
						<span class="input-group-btn">
							<button class="btn btn-primary btn-lg" type="submit">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span> Pesquisar
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		
		<div class="row table-responsive" id="bloco-resultado">
			<div class="col-md-6">
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
		
			<div class="col-md-6">
				<div id="mapa"></div>
			</div>
		</div>
		
	</section>

	<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
	
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBo3wiTHEdnl0vLz_Z4FZbivw6JsnjT2Pg&signed_in=true&callback=initMap"></script>
	
	<script>
	$(document).ready(function(){
		$(".table").dataTable({
			"lengthChange": false,
			"pageLength": 6,
			"searching": false,
			"columnDefs" : [ 
			   { "orderable" : false, "targets" : 2
				} ],
				"language" : {
					"url" : "resources/i18n/datatables-pt_BR.json"
				}
			});
		});

		function setLocation(endereco, nome, tel1, tel2, tel3, tipoAtendimento) {
	
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
