package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.UserDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-usuarios")
public class DeleteUserServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String userId = req.getParameter("id");

        new UserDAO().deleteUserById(userId);

        resp.sendRedirect("/find-all-usuarios");

    }
}
