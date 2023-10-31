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
    <title>SENAC MASTER COOK</title>
    <link rel="stylesheet" href="styles/main.css" />
    <link rel="shortcut icon" href="cook_hat.ico.ico" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;1,700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="styles/cadastro.css">
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/footer.css">
  </head>

  <body>
    <jsp:include page="Header.jsp" />

    <main class="container-main">

            <div class="container-cadastro">
              <h2>Cadastro</h2>
              <form id="formCadastro" action="/create-user" method="post">
                <div class="">
                  <label for="nome" class="form-label">Nome</label>
                  <input
                    placeholder="Enoque Leal o MAIS brabo"
                    type="text"
                    name="nome"
                    style="border: ''"
                    class="form-control"
                    id="required"
                    oninput="nameValidate()"
                  />
                  <span class="spanForm" style="display: none"
                    >Digite um nome com 3 caracteres</span
                  >
                </div>
                <div class="">
                  <label for="email" class="form-label">E-mail</label>
                  <input
                    placeholder="email@dominio"
                    type="email"
                    name="email"
                    class="form-control"
                    id="required"
                    oninput="emailValidate()"
                  />
                  <span class="spanForm">Digite um email válido</span>
                </div>
                <div class="">
                  <label for="senha" class="form-label">Senha</label>
                  <input
                    placeholder="**********"
                    type="password"
                    name="senha"
                    class="form-control"
                    id="required"
                    oninput="passwordValidate()"
                  />
                  <span class="spanForm"
                    >Digite uma senha com no minimo 8 caracteres</span
                  >
                </div>

                <div class="">
                  <label for="confSenha" class="form-label"
                    >Confirme a senha</label
                  >
                  <input
                    placeholder="**********"
                    type="password"
                    name="confSenha"
                    class="form-control"
                    id="required"
                    oninput="confirmPasswordValidate()"
                  />
                  <span class="spanForm">As senhas não concidem</span>
                </div>
                <button type="submit" class="btn btn-success">Cadastrar</button>
              </form>
            </div>
            <div class="container-cadastro">
              <h2>Possui cadastro?</h2>
              <a href="/login">
              <button type="button" name="cadastraBtn">Faça login</button>
              </a>
            </div>

    </main>
    <jsp:include page="Footer.jsp" />
  </body>
  <script src="js/cadastro.js"></script>
</html>
