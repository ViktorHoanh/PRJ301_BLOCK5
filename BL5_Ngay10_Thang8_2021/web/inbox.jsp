<%-- 
    Document   : inbox
    Created on : Aug 10, 2022, 10:38:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="loginname.jsp"></jsp:include>
        <div>
        <c:forEach items="${requestScope.messages}" var="m">
            ${m.sender.username} : ${m.content} <br/>
        </c:forEach>
        </div>
    </body>
</html>
