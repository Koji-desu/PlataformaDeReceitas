package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.ReceitaDAO;
import br.com.platareceitas.MODEL.Receita;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-receitas")
public class FindReceitaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String busca = req.getParameter("busca");
        List<Receita> receitas = new ReceitaDAO().findReceita(busca);

        req.setAttribute("receitas", receitas);

        req.getRequestDispatcher("teste.jsp").forward(req, resp);
    }

}