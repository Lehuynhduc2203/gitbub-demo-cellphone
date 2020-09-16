<%-- 
    Document   : index
    Created on : Jun 18, 2020, 6:03:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:forEach items="${list}" var="item">
            <p>${item.productID}</p>
        </c:forEach>

        <form action="NewServlet" method="post">
            <input type="text" name="email">
            <input type="text" name="password">
            <input type="submit" value="Login">
        </form>
    </body>
</html>
