<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Hello ${label} <br> -->
        <!-- <c:out value="Hello ${label}"/> -->

        <!-- ${student} hashcode: com.example.servletnjsp.Student@6bf652c3 -->
        <!-- ${student.name} <br>  if we tries to access object properties without beans or getter and setter it will give error-->
        <!-- ${student}  after toString() -->

        <c:forEach items="${students}" var="s">
            ${s} <br>
        </c:forEach>

    </body>
</html>