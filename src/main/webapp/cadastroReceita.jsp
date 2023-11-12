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
    <link rel="shortcut icon" href="cook_hat.ico.ico" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;1,700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="styles/cadastroreceita.css" />
    <link rel="stylesheet" href="styles/footer.css">
    <link rel="stylesheet" href="styles/header.css">

  </head>
  <body>
    <jsp:include page="Header.jsp" />

    <main class="container">
      <div class="form-image">
        <img src="img/cadreceita.svg" />
      </div>

      <div class="form">
        <form action="/create-receita" method="post" enctype="multipart/form-data">
          <div class="form-header">
            <div class="title">
              <h1>Cadastre sua receita</h1>
            </div>
            <div class="buttonTeste">
              <button><a href="/">👈 Voltar</a></button>
            </div>


            </div>
            <div class="input-group">
              <div class="input-box">
                <label for="receita-name">Nome da receita:</label>
                <input
                  type="text"
                  name="receita-name"
                  id="receita-name"
                  required
                  placeholder="Digite o nome da receita"
                />
              </div>
              <div class="input-box">
                <label for="receita-descricao">Descricao:</label>
                <input
                  type="text"
                  name="receita-descricao"
                  id="receita-descricao"
                  placeholder="Descreva de maneira sucinta"
                  required
                />
              </div>
              <div class="input-box">
                <label for="receita-instrucoes">Instrucoes de preparo:</label>
                <textarea
                  name="receita-instrucoes"
                  id="receita-instrucoes"
                  required
                  placeholder="Digite as instruções de preparo"
                ></textarea>
              </div>
              <div class="input-box">
                <label for="receita-tempo-preparo"
                  >Tempo de preparo(em minutos):</label
                >
                <input
                  type="number"
                  name="receita-tempo-preparo"
                  id="tempo"
                  required
                  placeholder="Digite o tempo de preparo"
                />
              </div>
              <div class="input-box">
                <label for="receita-categoria">Categoria:</label>
                <select
                  name="receita-categoria"
                  id="receita-categoria"
                  required
                >
                  <option value="doce">Doce</option>
                  <option value="salgado">Salgado</option>
                  <option value="vegetariano">Vegetariano</option>
                  <option value="vegano">Vegano</option>
                  <option value="light">Light</option>
                </select>
              </div>
              <div class="input-box">
                <label for="receita-dificuldade">Nivel de dificuldade:</label>
                <select
                  name="receita-dificuldade"
                  id="receita-dificuldade"
                  required
                >
                  <option value="facil">Facil</option>
                  <option value="medio">Medio</option>
                  <option value="dificil">Dificil</option>
                </select>
              </div>
              <div class="input-box">
                <label for="imagem">Imagem:</label>
                <input type="file" name="imagem" id="imagem" required placeholder="Escolha uma imagem da sua receita" />
              </div>
              <div class="buttonSubmit">
              <button type="submit">Enviar</button>
            </div>
          </div>
        </form>
      </div>
    </main>

    <jsp:include page="Footer.jsp" />
  </body>
</html>
