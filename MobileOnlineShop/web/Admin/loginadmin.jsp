<%-- 
    Document   : loginadmin
    Created on : Jul 2, 2020, 10:05:21 AM
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
        <form action="LoginAdminServlet" method="post">
            <input type="text" name="email">
            <input type="password" name="pass">
            
            <input type="submit" value="login">
            <p>${erro}</p>
        </form>
    </body>
</html>
