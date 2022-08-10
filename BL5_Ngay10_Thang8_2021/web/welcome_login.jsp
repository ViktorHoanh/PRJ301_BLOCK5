<%-- 
    Document   : welcome_login
    Created on : Aug 10, 2022, 9:07:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var count = 3;
            function counting()
            {
                count--;
                document.getElementById("timer").innerHTML = count;
                if(count <=0)
                    window.location.href = "index.html";
            }
            setInterval(counting,1000);
        </script>
    </head>
    <body>
        <jsp:include page="loginname.jsp"></jsp:include>
        <div>
            <p>Groups:</p>
            <c:forEach items="${requestScope.acc.groups}" var="g">
                ${g.name} <br/>
            </c:forEach>
        </div>
        <div>Redirect to index.html after <span id="timer">3</span> seconds</div>
    </body>
</html>
