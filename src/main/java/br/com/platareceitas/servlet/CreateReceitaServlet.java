package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.ReceitaDAO;
import br.com.platareceitas.MODEL.Receita;


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

        String receitaId = request.getParameter("id");
        String receitaName = request.getParameter("receita-name");

        ReceitaDAO receitaDAO = new ReceitaDAO();
        Receita receita = new Receita(receitaId,receitaName);

        if(receitaId.isBlank()){
            receitaDAO.createReceita(receita);
        } else {
            receitaDAO.updateReceita(receita);
        }




       /* String receitaDescricao = request.getParameter("receita-descricao");
        String receitaInstrucoes = request.getParameter("receita-instrucoes");
        String receitaTempoPreparo = request.getParameter("receita-tempo-preparo");
        String receitaCategoria = request.getParameter("receita-categoria");
        String receitaNivelDificuldade = request.getParameter("receita-dificuldade");*/

        System.out.println(receitaName);

        response.sendRedirect("/find-all-receitas");

    }

}
