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
				<img src="resources/img/logo11.png" alt="PSI Logo" title="Ir para Página Inicial" class="pull-left">
			</div>
		</div>
	</header>
	
	<section class="container">
		
		<div class="row" id="bloco-pesquisa">
			<div class="col-md-12">
				<form>
					<div class="input-group">
						<input type="text" id="des-bairro" class="form-control input-lg" placeholder="DIGITE O BAIRRO">
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
		 				<%-- <c:forEach var="listValue" items="${lists}"> --%>
							<tr>
								<td>Nome da Unidade</td>
								<td>Endereço da Unidade</td>
								<td>
								<!-- <a href="#" class="btn btn-primary btn-sm">Localizar</a> -->
									<a href="#" class="btn btn-primary">
										<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
									</a>
								</td>
							</tr>
							<tr>
								<td>Nome da Unidade</td>
								<td>Endereço da Unidade</td>
								<td>
								<!-- <a href="#" class="btn btn-primary btn-sm">Localizar</a> -->
									<a href="#" class="btn btn-primary">
										<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
									</a>
								</td>
							</tr>
							<tr>
								<td>Nome da Unidade</td>
								<td>Endereço da Unidade</td>
								<td>
								<!-- <a href="#" class="btn btn-primary btn-sm">Localizar</a> -->
									<a href="#" class="btn btn-primary">
										<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
									</a>
								</td>
							</tr>
							<tr>
								<td>Nome da Unidade</td>
								<td>Endereço da Unidade</td>
								<td>
								<!-- <a href="#" class="btn btn-primary btn-sm">Localizar</a> -->
									<a href="#" class="btn btn-primary">
										<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
									</a>
								</td>
							</tr>
		 				<%-- </c:forEach> --%>
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
	function initMap() {
	  var bh = {lat: -19.9027163, lng: -43.9640501};
	  var map = new google.maps.Map(document.getElementById('mapa'), {
	    zoom: 11,
	    center: bh
	  });

	  /*var contentString = '<div id="content">'+
	      'Teste'+
	      '</div>';

	  var infowindow = new google.maps.InfoWindow({
	    content: contentString,
	  });

	  var marker = new google.maps.Marker({
	    position: bh,
	    map: map,
	    title: 'Belo Horizonte'
	  });
	  marker.addListener('click', function() {
	    infowindow.open(map, marker);
	  });*/
	}
	</script>
</body>
</html>
