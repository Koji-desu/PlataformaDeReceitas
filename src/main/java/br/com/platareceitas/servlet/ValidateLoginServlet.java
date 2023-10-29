package br.com.platareceitas.servlet;

import br.com.platareceitas.DAO.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class ValidateLoginServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ServletException {

        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String userEmail = req.getParameter("emailLogin");
        String userPass = req.getParameter("senhaLogin");

        UserDAO userDAO = new UserDAO();
        boolean resposta = userDAO.loginUser(userEmail, userPass);

        if(resposta){
            System.out.println("Logado com sucesso!");
            req.getSession().setAttribute("loggedUser", userEmail);
            resp.sendRedirect("/");
        } else{
            System.out.println("Tem não em");
            req.setAttribute("message", "Invalid credentials!");
            resp.sendRedirect("/login.jsp");
        }



    }
}
