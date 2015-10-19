<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PSI - Login</title>
    <%@include file="/WEB-INF/views/shared/_estilos_basicos.jsp"%>
  </head>

  <body class="body-form-signin">

    <div class="container">
    
      <form class="form-signin" action="efetuaLogin" method="post">
        <div class="form-signin-heading"><img src="resources/img/logo.png"></div>
        <label for="usuario" class="sr-only">Usu�rio</label>
        <input type="text" id="login" name="login" class="form-control" placeholder="Usu�rio" required autofocus>
        <label for="senha" class="sr-only">Senha</label>
        <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
       		
        <c:if test="${not empty param.error}">
	   		<div class="signin-msg">${param.error}</div>
		</c:if>
      </form>

    </div> <!-- /container -->

    <%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
    
  </body>
</html>
