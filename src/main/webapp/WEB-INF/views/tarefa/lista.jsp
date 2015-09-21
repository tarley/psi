<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<%@include file="/WEB-INF/views/shared/estilos_basicos.jsp" %>
</head>
<body>
	<h3>Consulta Tarefas</h3>
	<form:errors cssStyle="alert alert-danger"/>
	<fieldset>
		<legend>Filtro</legend>
		
		<form action="/pesquisar" method="get">
			<div class="form-group">
				<label for="descricao">Descrição:</label> <br />
				<input type="text" name="descricao" id="descricao"/>
			</div>
			<input type="submit" class="btn btn-default" value="Adicionar">
		</form>		
	</fieldset>	
	
	<table class="table table-striped">
		<thead>
			<td>#</td>
			<td>Descrição</td>
			<td>Acoes</td>
		</thead>
		<tbody>
		<c:if test="${listaTarefas != null && !listaTarefas.Empty} }">
			<c:forEach items="${listaTarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					<td><a href="/tarefa/${tarefa.id}" class="btn btn-default">Excluir</a></td>
				</tr>
			</c:forEach>
		</c:if>
		</tbody>
		<c:if test="${listaTarefas == null || listaTarefas.Empty} }">
			<tfoot>
				<td colspan="3">Nenhum registro Encontrado</td>
			</tfoot>
		</c:if>
	</table>
	
</body>
</html>