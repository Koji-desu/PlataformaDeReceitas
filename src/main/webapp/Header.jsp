<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
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
    
        <header class="p-3 text-bg-red-500">
        

            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <div class="logo">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none"><img
                            class="bi me-2" src="logo.png" alt="Logo da SENAC MASTER COOK"></a>
                </div>
            </div>

           
                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a class="nav-link px-2 text-white" href="/find-all-receitas">Receitas</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Categorias</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Sobre</a></li>
                    <li><a class="nav-link px-2 text-white" href="#">Contato</a></li>
                </ul>
            
            <form action="/find-receitas" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control form-control-dark text-bg-light" placeholder="Buscar..." aria-label="Search" name="busca">
            </form>
            <div class="text-end">
                <button type="button" class="btn btn-outline-light me-2">Login</button>
                <a href="/cadastro.html"><button type="button" class="btn btn-warning">Sign-up</button></a>
            </div>
        </header>