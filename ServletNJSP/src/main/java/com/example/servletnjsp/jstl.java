package com.example.servletnjsp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/demojstl")
public class jstl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // JSTL -> JSP standard tag library
        //Student s = new Student(1, "Harshal");
        //String name = "Harshal";
        List<Student> studs = Arrays.asList(new Student(1, "Harshal"), new Student(2, "Aman"), new Student(3, "Sanket"));

        request.setAttribute("students", studs);
        RequestDispatcher rd = request.getRequestDispatcher("jstl.jsp");
        rd.forward(request, response);
    }
}
