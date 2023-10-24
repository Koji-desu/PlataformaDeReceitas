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
  </head>

  <body>
    <jsp:include page="Header.jsp" />

    <main>
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="container-cadastro">
              <h2>Cadastro</h2>
              <form id="formCadastro" action="/create-user" method="post">
                <div class="mb-3">
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
                <div class="mb-3">
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
                <div class="mb-3">
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

                <div class="mb-3">
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
          </div>
          <div class="col-md-6">
            <div class="container-login">
              <div
                class="mb-3"
                style="align-items: center; align-content: center"
              >
                <h2>Ja possui conta?</h2>
              </div>
              <img
                src="img/Bolinho21102023234221.png"
                style="width: 320px; height: 180px"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </main>
    <jsp:include page="Footer.jsp" />
  </body>
  <script src="js/cadastro.js"></script>
</html>
