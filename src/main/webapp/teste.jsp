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
    <link rel="stylesheet" href="styles/allReceitas.css">
</head>

<body>
    <header class="p-3 text-bg-red-500">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <div class="logo">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none"><img
                        class="bi me-2" src="logo.png" alt="Logo da SENAC MASTER COOK"></a>
            </div>
        </div>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a class="nav-link px-2 text-white" href="#">Receitas</a></li>
            <li><a class="nav-link px-2 text-white" href="#">Categorias</a></li>
            <li><a class="nav-link px-2 text-white" href="#">Sobre</a></li>
            <li><a class="nav-link px-2 text-white" href="#">Contato</a></li>
        </ul>
        <form action="/find-all-receitas" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
            <input type="search" class="form-control form-control-dark text-bg-light" placeholder="Buscar..." aria-label="Search">
        </form>
        <div class="text-end">
            <button type="button" class="btn btn-outline-light me-2">Login</button>
            <button type="button" class="btn btn-warning">Sign-up</button>
        </div>
    </header>

    <main>
        <div class="album py-5 bg-body-tertiary">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <c:forEach var="receita" items="${receitas}">
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="img${receita.image}" alt="imagem da receita" style="height: 150px;">
                                <div class="card-body">
                                    <p class="card-text">
                                        ${receita.name}
                                    </p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <button
                                                type="button"
                                                class="btn btn-sm btn-outline-secondary my-button"
                                                onclick="trocaImagem(this)"
                                            >
                                            </button>
                                            <button
                                                type="button"
                                                class="btn btn-sm btn-outline-secondary"
                                            >
                                                Ver
                                            </button>
                                        </div>
                                        <small class="text-body-secondary">Dificuldade: ${receita.difficulty}</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </main>

    <footer class="d-flex flex-wrap justify-content-between align-items-center  border-top text-bg-red-500">
        <div class="col-md-4 d-flex align-items-center logo">
            <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                <img class="bi me-2" src="logo.png" alt="Logo da SENAC MASTER COOK">
            </a>
            <span class="mb-3 mb-md-0 text-body-light">© 2023 SENAC Master Cook, Inc</span>
        </div>

        <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
            <li class="ms-3"><a class="text-body-secondary" href="#"><img class="bi" width="24" height="24" src="img/twitter.svg" alt="twitter logo"></a></li>
            <li class="ms-3"><a class="text-body-secondary" href="#"><img src="img/facebook.svg" class="bi" width="24" height="24"></img></a></li>
            <li class="ms-3"><a class="text-body-secondary" href="#"><img src="img/instagram.svg" class="bi" width="24" height="24"></img></a></li>
        </ul>
    </footer>
</body>

<script>
    function trocaImagem(button) {
        // Alterna entre as classes ao clicar no botão
        button.classList.toggle("with-background");
    }
</script>
</html>
