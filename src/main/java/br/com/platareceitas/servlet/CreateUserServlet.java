package br.com.platareceitas.servlet;

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

        String userName = request.getParameter("user-name");
        String userEmail = request.getParameter("user-email");
        String userPassword = request.getParameter("user-password");
        String userPasswordConfirmed = request.getParameter("user-passwordConfirmed");

        System.out.println(userName);

        request.getRequestDispatcher("index.html").forward(request, response);

    }

}
