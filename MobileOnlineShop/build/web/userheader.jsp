<%-- 
    Document   : userheader
    Created on : Jul 10, 2020, 3:19:25 PM
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
        <div class="col-lg-2" style="width: 100px; float: left; border: solid wheat 1px; background-color: white;
                    border-radius: 5px ; height: 350px; border-width: 2px;">
                    <div class="filter-widget" style="text-align: left; padding-top: 40px;">
                        <h4 class="fw-title" style="padding-left: 20px;">Account</h4>
                        <hr>
                        <ul class="filter-catagories" style="padding-left: 20px;">
                            <li><a href="userinformation.jsp">Information</a></li>
                            <li><a href="changepassword.jsp">Change Password</a></li>
                            <li><a href="PurchahistoryServlet">Purcha History</a></li>
                        </ul>
                        <hr>
                        <a style="padding-left: 30px; color: black;" href="LogoutServlet">Logout</a>
                    </div>
                </div>
    </body>
</html>
