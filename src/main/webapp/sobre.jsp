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
    <link rel="stylesheet" href="styles/header.css" />
    <link rel="stylesheet" href="styles/sobre.css">
    <link rel="stylesheet" href="styles/footer.css" />
  </head>
<body>
    <jsp:include page="Header.jsp" />

<main>
    <h1 class="display-4">Sobre</h1>
  <h2 class="my-5">O projeto</h2>
  <p>
    <strong>SENAC MASTER COOK</strong> é uma plataforma de receitas que busca reunir receitas de todo o Brasil. Nosso objetivo é facilitar o acesso a receitas deliciosas e fáceis de fazer, para que todos possam se inspirar e cozinhar em casa.
  </p>

  <h2 class="my-5">Os integrantes</h2>
  <div class="team-member">
    <p>Lucas Bonazzi Santos</p>
    <img src="img/bonazzi.png" alt="Lucas Bonazzi Santos" width="250" height="250">
 
  </div>
  <div class="team-member">
    <p>Pablo Rodrigo Reis Gomes</p>
    <img src="img/koji.png" alt="Pablo Rodrigo Reis Gomes" width="250" height="250">

  </div>
  <div class="team-member">
    <p>Tiago Bonazzi Gonçalves</p>
    <img src="img/tiago.png" alt="Tiago Bonazzi Gonçalves" width="250" height="250">

  </div>

  <p>
    <strong>SENAC MASTER COOK</strong> foi criada por três amigos apaixonados por culinária. Os três integrantes foram responsavéis pela construção da plataforma
  </p>

  <h2 class="my-5">O futuro</h2>
  <p>
    Temos planos de expandir a plataforma para incluir receitas de outros países e idiomas. Também queremos adicionar novos recursos, como a possibilidade de usuários conversarem por um chat na própria plataforma.
  </p>
</main>
<jsp:include page="Footer.jsp" />
</body>
</html>
