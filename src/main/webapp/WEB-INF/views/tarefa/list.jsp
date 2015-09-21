<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp" %>
</head>
<body>
	<h3>Consulta Tarefas</h3>
	<form:errors cssStyle="alert alert-danger"/>
	<fieldset>
		<legend>Filtro</legend>
		
		<form action="pesquisar" method="get" class="form-inline">
			<div class="form-group">
				<label for="descricao" class="sr-only">Descrição:</label>
				<input type="text" name="descricao" id="descricao" value="${empty filtro ? '' : filtro}" 
					placeholder="Informe uma descrição para filtro" class="form-control"/>
			    <input type="submit" class="btn btn-default" value="Pesquisar">
			</div>
			
		</form>		
	</fieldset>	
	
	<fieldset>
		<legend>Listagem de Tarefas</legend>
		<table class="table table-striped">
			<thead>
				<td>#</td>
				<td>Descrição</td>
				<td>Finalizado</td>
				<td>Dt. Finalização</td>
				<td>Acoes</td>
			</thead>
			<tbody>
			<c:if test="${not empty listaTarefas}">
				<c:forEach items="${listaTarefas}" var="tarefa">
					<tr id="row${tarefa.id}">
						<td>${tarefa.id}</td>
						<td>${tarefa.descricao}</td>
						<td><input type="checkbox" disabled value="${tarefa.finalizado == null ? 'true' : 'false'}"/></td>
						<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy hh:mm:ss"/></td>
						<td>
							<input type="button" onclick="remover(${tarefa.id})" value="Remover" class="btn btn-danger"/>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			</tbody>
			<c:if test="${empty listaTarefas}">
				<tfoot>
					<td colspan="5">Nenhum registro Encontrado</td>
				</tfoot>
			</c:if>
		</table>
	</fieldset>
	
	
	<%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp" %>
	
	<script>
		function remover(id) {	
			jQuery.ajax({ 
				  url: 'remover/' + id,
				  async: true,
				  success: function(data) {
				  	alert(data);				  	
				  	$("#row" + id).remove();
				  }
			});
		}
	
	</script>
</body>
</html>