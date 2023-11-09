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
    <link rel="stylesheet" href="styles/footer.css" />
    <link rel="stylesheet" href="styles/receita.css">
    <link rel="stylesheet" href="styles/inputFile.css">
    <script src="js/inputFile.js"></script>
  </head>

  <body>
    <jsp:include page="Header.jsp" />

    <main>
        <div class="container-esquerda">
            <div class="header-esquerda">
              <h5>Veja também...</h5>
            </div>

            <div class="body-esquerda">
                <div>Receita X </div>
                <div>Receita Y</div>
                <div>Receita Z</div>
            </div>
          </div>
        <div class="container-meio">
            <div class="header-meio">
              <c:forEach var="receita" items="${receitas}">
                <div class="header-pontuacao">⭐⭐⭐⭐⭐</div>
                <div class="header-titulo">${receita.name}</h2></div>
                <div class="header-autor"><h4>$nome do autor$</h3></div>
                </c:forEach>
       
            </div>

            <div class="body-meio">
                <div class="body-video">VIDEO </div>
                <div class="body-ingredientes">
                    <h4>Ingredientes:</h4>
                </div>
                <div class="body-modpreparo">
                    <h4>Modo de Preparo:</h4>
                </div>
            </div>
        </div>


        <div class="container-direita">
          <c:forEach var="receita" items="${receitas}"><div class="img-groups-add"><img src="img${receita.image}" alt="imagem da receita" style="width: 100%;"></div></c:forEach>
            <div class="img-groups-add">
              <label class="picture" for="picture__input" tabIndex="0">
                <span class="picture__image">Imagem 2</span>
              </label>
              
              <input type="file" name="picture__input" id="picture__input">
            </div>
            <div class="img-groups-add">
              <label class="picture" for="picture__input" tabIndex="0">
                <span class="picture__image">Imagem 3</span>
              </label>
              
              <input type="file" name="picture__input" id="picture__input">
            </div>
        </div>
    </main>

    <jsp:include page="Footer.jsp" />
  </body>
</html>
