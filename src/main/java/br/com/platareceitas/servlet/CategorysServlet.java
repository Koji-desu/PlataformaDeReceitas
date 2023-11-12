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

@WebServlet("/categorys")
public class CategorysServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ServletException {


            String category = req.getParameter("categorytype");
            List<Receita> receitas = new ReceitaDAO().findReceitaByCategory(category);
            System.out.println(category);

            req.setAttribute("receitas", receitas);
            req.getRequestDispatcher("findReceitas.jsp").forward(req, resp);



    }
}