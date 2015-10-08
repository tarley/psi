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

      <form class="form-signin">
        <h2 class="form-signin-heading">Credenciais</h2>
        <label for="usuario" class="sr-only">Usuário</label>
        <input type="text" id="usuario" class="form-control" placeholder="Usuário" required autofocus>
        <label for="senha" class="sr-only">Senha</label>
        <input type="password" id="senha" class="form-control" placeholder="Senha" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      </form>

    </div> <!-- /container -->

    <%@ include file="/WEB-INF/views/shared/_scripts_basicos.jsp"%>
    
  </body>
</html>
