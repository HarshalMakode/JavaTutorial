<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>

<%!
    int a, b, k;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>
</head>

<body>

<h1>Hello Division</h1>

<%
    a = Integer.parseInt(request.getParameter("num1"));
    b = Integer.parseInt(request.getParameter("num2"));

    k = a / b;
    out.println("Division = " + k);
    /*
    try {
        k = a / b;
        out.println("Division = " + k);
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
    */
%>

</body>
</html>