package com.example.servletnjsp;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/sq")
public class SqServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        int k = 0;
        //int k = (int) req.getAttribute("k");

        //int k = Integer.parseInt(req.getParameter("k"));

//        HttpSession session = req.getSession();
//        int k = (int) session.getAttribute("k");
//
//        session.removeAttribute("k");

        Cookie[] cookies = req.getCookies();

        for(Cookie cookie: cookies) {
            if(cookie.getName().equals("k"))
                k = Integer.parseInt(cookie.getValue());
        }

        k = k * k;

        PrintWriter out = res.getWriter();
        out.println("Result is k: " + k);
    }
}
