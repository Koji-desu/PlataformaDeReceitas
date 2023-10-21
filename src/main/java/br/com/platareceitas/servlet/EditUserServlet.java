package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.ReceitaDAO;
import br.com.platareceitas.DAO.UserDAO;
import br.com.platareceitas.MODEL.Receita;
import br.com.platareceitas.MODEL.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/edit-user")
public class EditUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("id");
        String userName = request.getParameter("nome");
        String userEmail = request.getParameter("email");
        String userPassword = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User user = new User(userId,userName, userEmail, userPassword);

        userDAO.updateUser(user);

        response.sendRedirect("/find-all-usuarios");
    }
}
