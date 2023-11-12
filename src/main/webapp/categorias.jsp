<!DOCTYPE html>
<html lang="pt-br">
<head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
  contentType="text/html" pageEncoding="UTF-8"%>
  <meta charset="UTF-8">
  <title>Categorias</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
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
<link rel="stylesheet" href="styles/header.css" />
<link rel="stylesheet" href="styles/footer.css" />
<link rel="stylesheet" href="styles/categorias.css">
</head>

<body class>

  <jsp:include page="Header.jsp" />

  <div class="container mx-auto max-w-7xl py-10">
    <h1 class="text-3xl font-bold text-gray-900">Categorias</h1>
    <ul class="flex flex-col gap-4">
      <li class="py-5 flex items-center"></li>
        <form action="/category" method="post">
          <img src="img/doce.jpg" alt="Doce" class="object-fit: contain; border: 1px solid #ccc; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); w-48 h-48 mr-4" />
          <span class="text-xl text-gray-900">Doces</span> <button type="submit">Ver</button>
          <input type="text" style="display: none;" value="doce" name="categorytype">
          <p class="text-sm text-gray-500">Deliciosas sobremesas para todos os gostos.</p>
        </form>
      </li>
      <li class=" py-5 flex items-center">
        <form action="/category" method="post">
          <img src="img/salgado.jpg" alt="Salgado" class="object-fit: contain; border: 1px solid #ccc; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); w-48 h-48 mr-4" />
          <span class="text-xl text-gray-900" >Salgados</span><button type="submit">Ver</button>
          <input type="text" style="display: none;" value="salgado" name="categorytype">
          <p class="text-sm text-gray-500">Comidinhas deliciosas para o dia a dia.</p>
          </form>
      </li>
      <li class=" py-5 flex items-center">
        <form action="/category" method="post">
          <img src="img/vegetariano.png" alt="Vegetariano" class="object-fit: contain; border: 1px solid #ccc; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); w-48 h-48 mr-4" />
          <span class="text-xl text-gray-900" >Vegetariano</span><button type="submit">Ver</button>
          <input type="text" style="display: none;" value="vegetariano" name="categorytype">
          <p class="text-sm text-gray-500">Opções deliciosas para quem não come carne.</p>
          </form>
      </li>
      <li class=" py-5 flex items-center">
        <form action="/category" method="post">
          <img src="img/light.png" alt="Light" class="object-fit: contain; border: 1px solid #ccc; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); w-48 h-48 mr-4" />
          <span class="text-xl text-gray-900" >Light</span><button type="submit">Ver</button>
          <input type="text" style="display: none;" value="light" name="categorytype">
          <p class="text-sm text-gray-500">Opções saudáveis e saborosas.</p>
        </form>
      </li>
      <li class="py-5 flex items-center">
        <form action="/category" method="post">
          <img src="img/vegano.png" alt="Vegano" class="object-fit: contain; border: 1px solid #ccc; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); w-48 h-48 mr-4" />
          <span class="text-xl text-gray-900" >Vegano</span><button type="submit">Ver</button>
          <input type="text" style="display: none;" value="vegano" name="categorytype">
          <p class="text-sm text-gray-500">Opções deliciosas para quem não come nenhum produto de origem animal.</p>
          </form>
      </li>
    </ul>
  </div>

      <jsp:include page="Footer.jsp" />
</body>
</html>