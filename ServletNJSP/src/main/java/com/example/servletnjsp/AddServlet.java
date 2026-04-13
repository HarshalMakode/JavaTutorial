package com.example.servletnjsp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

//if we dont wanna use web.xml file then use annotation

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        int i = Integer.parseInt(req.getParameter("num1"));
        int j = Integer.parseInt(req.getParameter("num2"));

        int k = i + j;
//        System.out.println("The result: " + k);

        PrintWriter out = res.getWriter();
        out.println("The result: " + k);


        //req.setAttribute("k", k);

        //Request Dispatcher
//        RequestDispatcher rd = req.getRequestDispatcher("sq");
//        rd.forward(req, res);

        //res.sendRedirect("sq?k="+k); //URL rewritting

//        HttpSession session = req.getSession();
//        session.setAttribute("k", k);

//        Cookie cookie = new Cookie("k", k + "");
//        res.addCookie(cookie);

//        res.sendRedirect("sq");

//        PrintWriter out = res.getWriter();
//        out.println("<html><body bgcolor='AliceBlue'>");
//        out.println("The result: " + k);
//        out.println("</body></html>");
    }
}
