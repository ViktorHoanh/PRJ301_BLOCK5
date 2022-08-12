<%-- 
    Document   : login
    Created on : Aug 10, 2022, 8:56:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            Username: <input type="text" name="username" /><br/><!-- comment -->
            Password: <input type="password" name="password" /><br/><!-- comment -->
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
