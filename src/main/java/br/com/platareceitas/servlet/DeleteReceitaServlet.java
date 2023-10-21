package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.ReceitaDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-receita")
public class DeleteReceitaServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String receitaId = req.getParameter("id");

        new ReceitaDAO().deleteReceitaById(receitaId);

        resp.sendRedirect("/find-all-receitas");

    }
}
