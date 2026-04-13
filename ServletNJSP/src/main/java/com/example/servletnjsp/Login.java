package com.example.servletnjsp;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        if("h".equals(uname) && "p".equals(pass)) {

            HttpSession session = request.getSession();
            session.setAttribute("username", uname);

            response.sendRedirect("welcome.jsp");

        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}