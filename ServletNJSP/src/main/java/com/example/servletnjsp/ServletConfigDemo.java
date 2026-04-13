package com.example.servletnjsp;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ServletConfigDemo extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //ServletConfig & ServletContext
        PrintWriter out = response.getWriter();
        out.println("Hi ");

//        ServletContext context = getServletContext();
//        String str = context.getInitParameter("name");

        ServletConfig config = getServletConfig();
        String str = config.getInitParameter("name");  //config for specific servlet

        out.println(str);
    }
}
