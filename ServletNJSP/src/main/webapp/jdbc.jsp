<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%
            /*
            1. import package (java.sql.*);
            2.load and register the driver
            3. Create a Connection
            */

            String url = "jdbc:postgresql://localhost:5432/harshal";
            String username = "postgres";
            String password = "password";
            String sql = "select * from students where id=1";
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery(sql);
            rs.next();


            int roll = Integer.parseInt(request.getParameter("roll"));
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));

            out.println(roll + "<br>");
            out.println(name + "<br>");
            out.println(age + "<br>");


        %>
        <br>
        Rollno: <%= rs.getString(1) %> <br>
        Name: <%= rs.getString(2) %> <br>
        Age: <%= rs.getString(3) %> <br>

    </body>
</html>