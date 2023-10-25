<!DOCTYPE html>
<html lang="pt-br">

<head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SENAC MASTER COOK</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="shortcut icon" href="cook_hat.ico.ico" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;1,700&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        

</head>

<body>
  <jsp:include page="Header.jsp" /> 
    <main>
    <h2 class="titulo-destaque">Receitas em Destaque</h2>

    <div id="carouselExampleIndicators" class="carousel slide d-inline-flex p-2">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <h3>Vulcão</h3>
            <img src="img/bolo.jpg" class="d-block " style="width: 1100px; height: 733px;" alt="...">
          </div>
          <div class="carousel-item">
            <h3>Bolo de Chocolate</h3>
            <img src="img/choco.jpg" class="d-block " style="width: 1100px; height: 733px;" alt="...">
          </div>
          <div class="carousel-item">
            <h3>Pudim</h3>
            <img src="img/pudim.jpg" class="d-block " style="width: 1100px; height: 733px;" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

    <section class="receitas-destaque">
        <div class="recipe-card">
            <img src="receita.jpg" alt="Receita 1">
            <h3>Nome da Receita</h3>
            <p>Descrição curta da receita...</p>
            <a href="#">Ver Receita</a>
            <!-- Conteúdo do card 1 -->
        </div>
        <div class="recipe-card">
            <img src="receita.jpg" alt="Receita 1">
            <h3>Nome da Receita</h3>
            <p>Descrição curta da receita...</p>
            <a href="#">Ver Receita</a>
            <!-- Conteúdo do card 2 -->
        </div>
        <div class="recipe-card">
            <img src="receita.jpg" alt="Receita 1">
            <h3>Nome da Receita</h3>
            <p>Descrição curta da receita...</p>
            <a href="#">Ver Receita</a>
            <!-- Conteúdo do card 3 -->
        </div>
    </section>

    <section class="lista-categorias">
        <h2>Categorias</h2>
        <ul>
            <li><a href="#">Café da Manhã</a></li>
            <li><a href="#">Almoço</a></li>
            <li><a href="#">Jantar</a></li>
            <li><a href="#">Sobremesas</a></li>

        </ul>
        <!-- Conteúdo da lista de categorias -->
    </section>
  </main>
    <jsp:include page="Footer.jsp" />
</body>
</html>