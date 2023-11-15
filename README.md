# <h1>SENAC MASTER COOK</h1>
<h2>Trabalho desenvolvido em grupo na matéria de PI(Projeto Integrador)</h2><br><br>

<strong>Funcionalidades</strong><br>

⋅ Publicar receitas<br>
⋅ Consultar receitas de outros usuários<br>
⋅ Avaliar receitas de outros usuários<br>
⋅ Barra de Pesquisa<br>
⋅ Fotos e videos das receitas<br>
⋅ Tela de login<br>
⋅ Tela de cadastro<br><br><br>




<strong>Comandos SQL necessários antes de testar o sistema:</strong><br><br>
--------------CRIACAO DE TABELAS---------<br>

CREATE TABLE RECEITA(ID INT AUTO_INCREMENT UNIQUE, NAME VARCHAR(256), DESCRIPTION VARCHAR(256), INSTRUCTIONS VARCHAR(256), TIME INT, CATEGORY VARCHAR(20), DIFFICULTY VARCHAR(12), IMAGE VARCHAR(256))

CREATE TABLE USUARIO(ID INT AUTO_INCREMENT UNIQUE, NAME VARCHAR(256), EMAIL VARCHAR(256), PASSWORD VARCHAR(256))
<br>
------------------...-----------------------
<br><br><br>



--------------INSERINDO VALORES----------<br>
INSERT INTO RECEITA(ID, NAME, DESCRIPTION, INSTRUCTIONS, TIME, CATEGORY, DIFFICULTY, IMAGE) VALUES (0, 'Bolo Vulcão', 'Um vulcão que explode em chocolate', 'blablabla', 60,'doce', 'facil', '/Bolinho21102023234221.png' )

INSERT INTO RECEITA(ID, NAME, DESCRIPTION, INSTRUCTIONS, TIME, CATEGORY, DIFFICULTY, IMAGE) VALUES (1, 'Bolo de aniversário', 'Um lindo bolo para cantar parabéns', 'blablabla', 60, 'doce','facil', '/Bolo de aniversario14112023190808.png' )

INSERT INTO RECEITA(ID, NAME, DESCRIPTION, INSTRUCTIONS, TIME, CATEGORY, DIFFICULTY, IMAGE) VALUES (2, 'Pudim','Pudim clássico', 'blablabla', 60, 'doce', 'facil', '/Pudim21102023234221.png')
<br>
----------------...-------------------------
<br><br><br>



------------CRIANDO CONTA ADMIN----------<br>

INSERT INTO USUARIO(ID, NAME, EMAIL, PASSWORD) VALUES(0, 'admin', 'admin@admin', 'admin')


Executando essa query automaticamente haverá uma conta
Login: admin@admin
Password: admin
<br>
---------------------...--------------------
<br><br><br><br>

<strong> Prototipação realizada no FIGMA </strong><br><br>

<strong> TELA INICIAL </strong><br>
<img src="/public/Imagens do protótipo/TelaInicial.png"><br><br>

<strong> TELA RECEITAS </strong><br>
<img src="/public/Imagens do protótipo/TelaReceita.png"><br><br>

<strong> TELA LOGIN </strong><br>
<img src="/public/Imagens do protótipo/TelaLogin.png"><br><br>

<strong> TELA RECEITAS </strong><br>
<img src="/public/Imagens do protótipo/TelaCadastro.png"><br><br><br>

<strong> DIAGRAMAS MER realizados no brmodelo</strong><br>

<strong> Diagrama conceitual </strong>
<img src="/public/Imagens do protótipo/DiagramaConceitual.png"><br><br>

<strong> Diagrama Lógico </strong>
<img src="/public/Imagens do protótipo/DiagramaLogico.png"><br><br>
