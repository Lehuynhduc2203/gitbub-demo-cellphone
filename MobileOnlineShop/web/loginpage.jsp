<%-- 
    Document   : loginpage
    Created on : Jun 18, 2020, 6:30:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="link.jsp"></jsp:include>
            
        </head>
        <body>
        <jsp:include page="header.jsp"></jsp:include>


            <!-- Breadcrumb Section Begin -->
            <div class="breacrumb-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb-text">
                                <a href="#"><i class="fa fa-home"></i> Home</a>
                                <span>Login</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcrumb Form Section Begin -->

            <!-- Register Section Begin -->
            <div class="register-login-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <div class="login-form">
                                <h2>Login</h2>
                                <form action="LoginServlet" method="post" name="myForm">
                                    <div class="group-input">
                                        <label for="username">Username or email address *</label>
                                        <input type="email" name="loginEmail">
                                    </div>
                                    <div class="group-input">
                                        <label for="pass">Password *</label>
                                        <input type="password" name="loginPassword">
                                    </div>
                                    <p style="color: red; text-align: center;">${erro}</p>
                                <button type="submit" class="site-btn login-btn">Sign In</button>
                            </form>
                            <div class="switch-login">
                                <a href="register.jsp" class="or-login">Or Create An Account</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Form Section End -->


        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
