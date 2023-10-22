<!DOCTYPE html>
<html lang="pt-br">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="/create-receita" method="post" enctype="multipart/form-data">
      <h1>Cadastro de receita</h1>
      <div class="campo">
        <label for="receita-name">Nome da receita:</label>
        <input type="text" name="receita-name" id="receita-name" required>
      </div>
      <div class="campo">
        <label for="receita-descricao">Descricao:</label>
        <input type="text" name="receita-descricao" id="receita-descricao" required>
      </div>
      <div class="campo">
        <label for="receita-instrucoes">Instrucoes de preparo:</label>
        <textarea name="receita-instrucoes" id="receita-instrucoes" required></textarea>
      </div>
      <div class="campo">
        <label for="receita-tempo-preparo">Tempo de preparo(em minutos):</label>
        <input type="number" name="receita-tempo-preparo" id="tempo" required>
      </div>
      <div class="campo">
        <label for="receita-categoria">Categoria:</label>
        <select name="receita-categoria" id="receita-categoria" required>
          <option value="doce">Doce</option>
          <option value="salgado">Salgado</option>
          <option value="vegetariano">Vegetariano</option>
          <option value="vegano">Vegano</option>
          <option value="light">Light</option>
        </select>
      </div>
      <div class="campo">
        <label for="receita-dificuldade">Nivel de dificuldade:</label>
        <select name="receita-dificuldade" id="receita-dificuldade" required>
          <option value="facil">Facil</option>
          <option value="medio">Medio</option>
          <option value="dificil">Dificil</option>
        </select>
      </div>
      <div class="campo">
        <label for="imagem">Imagem:</label>
        <input type="file" name="imagem" id="imagem" required>
      </div>
      <input type="submit" value="Enviar">
    </form>
</body>

</html>