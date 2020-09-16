<%-- 
    Document   : register
    Created on : Jul 10, 2020, 1:36:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <span>Register</span>
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
                            <div class="register-form">
                                <h2>Register</h2>
                                <form action="RegisterServlet" method="post">
                                    <div class="row">
                                        <div class="group-input col-lg-6">
                                            <label for="username">First Name *</label>
                                            <input type="text" name="fname">
                                            <p style="color: red;">${errorfname}</p>

                                    </div>

                                    <div class="group-input col-lg-6" >

                                        <label for="pass">Last name *</label>
                                        <input type="text" name="lname">
                                        <p style="color: red;">${errorlname}</p>

                                    </div>
                                </div>

                                <div class="group-input">
                                    <label for="con-pass">Email address *</label>
                                    <input type="email" name="email">
                                    <p style="color: red;">${erroremail}</p>

                                </div>
                                <div class="group-input">
                                    <label for="con-pass">Password *</label>
                                    <input type="password" name="pass" minlength="6" maxlength="12">
                                    <p style="color: red;">${errorpass}</p>

                                </div>
                                <div class="group-input">
                                    <label for="con-pass">Confirm Password *</label>
                                    <input type="password" name="conpass" minlength="6" maxlength="12">
                                    <p style="color: red;">${errorconpass}</p>

                                </div>
                                <div class="row">
                                    <div class="group-input col-lg-6">
                                        <label for="con-pass">Phone *</label>
                                        <input type="number" name="phone">
                                        <p style="color: red;">${errorphone}</p>

                                    </div>
                                    <div class="group-input col-lg-6">
                                        <label for="gender">Gender *</label>
                                        <select name="gender" style="border-color: rgb(235, 235, 235); width: 100px;">
                                            <option value="Male" selected="">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="None">None</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="group-input">
                                    <label for="con-pass">Address *</label>
                                    
                                    <textarea name="address" rows="6" cols="60" style="border-color: rgb(235, 235, 235);"></textarea>
                                    <p style="color: red;">${erroraddress}</p>

                                </div>
                                <button type="submit" class="site-btn register-btn">REGISTER</button>
                            </form>
                            <div class="switch-login">
                                <a href="./login.html" class="or-login">Or Login</a>
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
