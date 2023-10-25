<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
    contentType="text/html" pageEncoding="UTF-8"%>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./styles/cadastro.css" />
    <title>SENAC MASTER COOK</title>
    <link rel="stylesheet" href="styles/main.css" />
    <link rel="shortcut icon" href="cook_hat.ico.ico" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;1,700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="styles/login.css" />
  </head>

  <body>
    <jsp:include page="Header.jsp" />

    <main class="container-main">
      <div class="container-login">
        <h2>Login</h2>
        <div class="container-form">
          <form action="/login-user" method="post">

            <input type="email" name="emailLogin" placeholder="Email"/><br><br>


            <input type="password" name="senhaLogin" id="" placeholder="Senha"/><br><br>

            <button type="submit">Entrar</button>
          </form>
        </div>
      </div>
      <div class="container-login">
        <h2>Não possui cadastro?</h2>
        <a href="cadastro.jsp">
        <button type="button" name="cadastraBtn">Cadastre-se</button>
        </a>
      </div>
    </main>

    <jsp:include page="Footer.jsp" />
  </body>
  <script src="js/cadastro.js"></script>
</html>
