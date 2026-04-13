<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello JSP</h1>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");   // HTTP 1.0
            response.setHeader("Expires", "0");         // Proxies

            if(session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            String name = (String) session.getAttribute("username");
            out.println("Welcome " + name);
        %>

        <form action="upload" method="post" enctype="multipart/form-data">
            <input type="file" name="file" multiple>
            <input type="submit">
        </form>

        <form action="Logout">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>