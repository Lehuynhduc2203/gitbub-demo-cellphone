<%-- 
    Document   : changepassword
    Created on : Jun 19, 2020, 7:18:39 PM
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
                            <div class="breadcrumb-text product-more">
                                <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                                <a href="./shop.html">Shop</a>
                                <span>Detail</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcrumb Section Begin -->

            <!-- Product Shop Section Begin -->
            <section class="product-shop spad page-details">
                <div class="container">
                    <div class="row">
                        <jsp:include page="userheader.jsp"></jsp:include>
                        <div style="float: right; border: solid 1px wheat; width: 800px;border-width: 2px; margin-left: 150px; padding-top: 30px;">
                            <form action="ChangePassword" class="checkout-form" style="float: right;">
                                <div class="col-lg-12">
                                    <h4 style="text-align: center;">Change Password</h4>
                                    <div class="row" >

                                        <div class="col-lg-12">
                                            <label for="oldpass">Old Password<span>*</span></label>
                                            <input type="password" name="oldpass" >
                                            <p style="color: red;">${oldpasserro}</p>

                                    </div>
                                    <div class="col-lg-12">
                                        <label for="newpass">New Password<span>*</span></label>
                                        <input type="password" name="newpass" >
                                        <p style="color: red;">${newpasserro}</p>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="cfpass">Confirm Password<span>*</span></label>
                                        <input type="password" name="cfpass" class="street-first" ">
                                        <p style="color: red;">${cfpasserro}</p>
                                    </div>
                                    <div class="col-lg-12" style="padding-left: 320px; margin-bottom: 30px;">
                                        <button type="submit" class="site-btn login-btn">Update</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Shop Section End -->




        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
