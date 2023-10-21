package br.com.platareceitas.servlet;
import br.com.platareceitas.DAO.UserDAO;
import br.com.platareceitas.MODEL.User;
import br.com.platareceitas.DAO.UserDAO.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-user")
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String userName = request.getParameter("nome");
        String email = request.getParameter("email");
        String password = request.getParameter("senha");
        String confPassword = request.getParameter("confSenha");

        User usuario = new User(id, userName, email, password);
        UserDAO userDAO = new UserDAO();
        userDAO.createUser(usuario);

        request.getRequestDispatcher("cadastro.html").forward(request, response);




        }


    }


