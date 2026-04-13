<%-- Directives --%>
<%@page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
%>

<%-- Declaration --%>
<%!
    //this will create the variables outside of service method of servlet
    int i, j, k;
    int a = 9;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>

    <body bgcolor="cyan">

    <%--- <h1>Hello Harshal</h1> ---%>

    <%@ include file="header.jsp"%>

    <%-- scriptlet --%>
    <%
        //if we create variables in scriptlet then the variables
        //will create in service method of servlet
        i = Integer.parseInt(request.getParameter("num1"));
        j = Integer.parseInt(request.getParameter("num2"));

        k = i + j;

        pageContext.setAttribute("name", "harshal", PageContext.SESSION_SCOPE);
        //out.println(k);
        out.println(a);
    %>

    <%-- Expression --%>
    Sum = <%= k %>

    </body>
</html>

<%-- Check add_jsp for this file servlet program --%>