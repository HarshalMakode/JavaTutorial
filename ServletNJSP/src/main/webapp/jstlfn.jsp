<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="str" value="My name is harshal"/>
        Length : ${fn:length(str)}

        <c:forEach items="${fn:split(str, ' ')}" var="s">
            <br>
            ${s}
        </c:forEach>
        <br>
        index : ${fn:indexOf(str, "is")}
        <br>
        is there : ${fn:contains(str, "name")}
        <br>
        <c:if test="${fn:contains(str, 'hello')}">
            hello is there
        </c:if>
        <c:choose>
            <c:when test="${fn:contains(str, 'hello')}">
                hello is there
            </c:when>

            <c:otherwise>
                hello is NOT there
            </c:otherwise>
        </c:choose>
        <br>
        ${fn:toUpperCase(str)}
    </body>
</html>