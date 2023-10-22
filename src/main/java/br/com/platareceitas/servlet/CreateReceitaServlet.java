package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.ReceitaDAO;
import br.com.platareceitas.MODEL.Receita;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/create-receita")
@MultipartConfig
public class CreateReceitaServlet extends HttpServlet {
    LocalDateTime dataHora = LocalDateTime.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("ddMMyyyyHHmmss");
    String nomeArquivo = dataHora.format(formatter);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String receitaId = request.getParameter("id");
        String receitaName = request.getParameter("receita-name");
        String receitaDescricao = request.getParameter("receita-descricao");
        String receitaInstrucoes = request.getParameter("receita-instrucoes");
        int receitaTempoPreparo = Integer.parseInt(request.getParameter("receita-tempo-preparo"));
        String receitaCategoria = request.getParameter("receita-categoria");
        String receitaNivelDificuldade = request.getParameter("receita-dificuldade");

        // Processar o upload da imagem
        Part imagemPart = request.getPart("imagem");

        String imagePath = "null";
        if (imagemPart != null && imagemPart.getSize() > 0) {
            String imagemNome = "/"+receitaName+nomeArquivo+".png"; // Defina o nome desejado

            // Salvar a imagem em um diretório do servidor
            String diretorioImagens = "src/main/webapp/img"; // Altere para o caminho desejado
            File diretorio = new File(diretorioImagens);
            if (!diretorio.exists()) {
                diretorio.mkdirs();
            }

            try (InputStream input = imagemPart.getInputStream()) {
                File imagemArquivo = new File(diretorio, imagemNome);
                Files.copy(input, imagemArquivo.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }

            imagePath = imagemNome;

        }

        // O restante do seu código para salvar os outros campos no banco de dados
        ReceitaDAO receitaDAO = new ReceitaDAO();
        Receita receita = new Receita(receitaId, receitaName, receitaDescricao, receitaInstrucoes, receitaTempoPreparo, receitaCategoria, receitaNivelDificuldade, imagePath);

        receitaDAO.createReceita(receita);

        response.sendRedirect("/find-all-receitas");
    }
}
