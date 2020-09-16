<%-- 
    Document   : checkoutsucces
    Created on : Jun 24, 2020, 9:50:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="link.jsp" ></jsp:include>

        </head>
        <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <div style="text-align: center; padding-top: 100px;padding-bottom: 100px; padding-left: 200px;padding-right: 200px;">
            <h1 style="font-size: 70px;">Congratulations on your successful order, thank you for using our service</h1>
            <a href="PurchahistoryServlet" style="font-size:  30px; ">See your orders</a>
        </div>
            
        <jsp:include page="footer.jsp" ></jsp:include>
        <jsp:include page="script.jsp" ></jsp:include>

    </body>
</html>
