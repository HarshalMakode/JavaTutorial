<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/harshal" user="postgres" password="password"/>

        <sql:query var="rs" dataSource="${db}">select * from students</sql:query>

        <c:forEach items="${rs.rows}" var="row">
            <c:out value="${row.id}"></c:out> : <c:out value="${row.name}"></c:out> <br>
        </c:forEach>

    </body>
</html>