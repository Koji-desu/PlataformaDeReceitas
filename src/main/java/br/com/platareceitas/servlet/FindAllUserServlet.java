package br.com.platareceitas.servlet;

import br.com.platareceitas.MODEL.User;
import br.com.platareceitas.DAO.UserDAO

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-usuarios")
public class FindAllUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> users = new UserDAO().findAllUser();

        req.setAttribute("users", users);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
    }

}