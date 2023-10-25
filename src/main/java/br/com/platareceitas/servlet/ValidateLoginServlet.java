package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.UserDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login-user")
public class ValidateLoginServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String userEmail = req.getParameter("emailLogin");
        String userPass = req.getParameter("senhaLogin");

        UserDAO userDAO = new UserDAO();
        boolean resposta = userDAO.loginUser(userEmail, userPass);

        if(resposta){
            System.out.println("Logado com sucesso!");

            resp.sendRedirect("/");
        } else{
            System.out.println("Tem não em");
            resp.sendRedirect("/login.jsp");
        }



    }
}
