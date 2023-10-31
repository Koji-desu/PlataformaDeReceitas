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
        <link rel="stylesheet" href="styles/header.css">
        <link rel="stylesheet" href="styles/footer.css">

</head>

<body>
  <jsp:include page="Header.jsp" /> 
    <main>
    <h2 class="titulo-destaque">Receitas em Destaque</h2>

    <div id="carouselExampleIndicators" class="carousel slide d-inline-flex p-2 carroselte">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <h3></h3>
            <img src="img/bolo.jpg" class="d-block " style="width: 1100px; height: 733px;" alt="...">
          </div>
          <div class="carousel-item">
            <h3>  </h3>
            <img src="img/choco.jpg" class="d-block " style="width: 1100px; height: 733px;" alt="...">
          </div>
          <div class="carousel-item">
            <h3></h3>
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
            <img src="img/bolo.jpg">
            <h3>Bolo Vulcão</h3>
            <p>Um vulcão que explode em chocolate</p>
            <a href="/find-all-receitas">Ver Receita</a>
            <!-- Conteúdo do card 1 -->
        </div>
        <div class="recipe-card">
            <img src="img/Bolo de Chocolate.png" >
            <h3>Bolo de aniversário</h3>
            <p>Um lindo bolo para cantar parabéns</p>
            <a href="/find-all-receitas">Ver Receita</a>
            <!-- Conteúdo do card 2 -->
        </div>
        <div class="recipe-card">
            <img src="img/pudim.jpg" >
            <h3>Pudim</h3>
            <p>Pudim clássico!!!</p>
            <a href="/find-all-receitas">Ver Receita</a>
            <!-- Conteúdo do card 3 -->
        </div>
    </section>

  </main>
    <jsp:include page="Footer.jsp" />
</body>
</html>