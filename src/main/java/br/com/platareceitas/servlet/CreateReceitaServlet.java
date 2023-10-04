package br.com.platareceitas.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-receita")
public class CreateReceitaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String receitaName = request.getParameter("receita-name");
        String receitaDescricao = request.getParameter("receita-descricao");
        String receitaInstrucoes = request.getParameter("receita-instrucoes");
        String receitaTempoPreparo = request.getParameter("receita-tempo-preparo");
        String receitaCategoria = request.getParameter("receita-categoria");
        String receitaNivelDificuldade = request.getParameter("receita-dificuldade");

        System.out.println(receitaName);

        request.getRequestDispatcher("index.html").forward(request, response);

    }

}
