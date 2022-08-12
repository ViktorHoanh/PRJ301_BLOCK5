<%-- 
    Document   : register
    Created on : Aug 11, 2022, 2:29:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="register" method="POST">
            Username: <input type="text" name="username"/> <br/>
            Password: <input type="password" name="password"/> <br/>
            Groups: <br/>
            <c:forEach items="${requestScope.groups}" var="g">
                <input type="checkbox" name="gid" value="${g.id}" /> ${g.name} <br/>
            </c:forEach>
 
            <input type="submit" value="Save" /> 
        </form>
    </body>
</html>
