<%-- 
    Document   : userinformation
    Created on : Jun 19, 2020, 4:59:05 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="link.jsp"></jsp:include>

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
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
                        <a href="./shop.html">Account</a>
                        <span>Information</span>
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
                <div style="float: right; border: solid 1px wheat; width: 800px; margin-left: 150px; padding-top: 30px;border-width: 2px;">
                <form action="UpdateCustomerServlet" class="checkout-form" style="float: right;">
                <div class="col-lg-12">
                    <h4 style="text-align: center;">User Information</h4>
                    <div class="row" >
                        <div class="col-lg-6">
                                <label for="firstName">First Name<span>*</span></label>
                                <input type="text" name="firstName" value="${sessionScope.customerLogin.firstName}">
                            </div>
                            <div class="col-lg-6">
                                <label for="lastName">Last Name<span>*</span></label>
                                <input type="text" name="lastName" value="${sessionScope.customerLogin.lastName}">
                            </div>
                            <div class="col-lg-6">
                                <label for="gender">Gender</label> <br>
                                <select name="gender" style="height: 45px; width: 100px; text-align: center;border-color: rgb(235, 235, 235);border-width: 2px;">
                                    <option value="Male" <c:if test="${sessionScope.customerLogin.gender == 'Male'}">selected=""</c:if>>Male</option>
                                    <option value="Female" <c:if test="${sessionScope.customerLogin.gender == 'Female'}">selected=""</c:if> >FeMale</option>
                                </select>
                            </div>
                            <div class="col-lg-6">
                                <label for="phone">Phone<span>*</span></label>
                                <input type="text" name="phone" value="${sessionScope.customerLogin.phone}">
                            </div>
                            <div class="col-lg-12">
                                <label for="street">Street Address<span>*</span></label>
                                <br>
                                <textarea name="address" rows="6" cols="83" style="border-color: rgb(235, 235, 235);border-width: 2px;">${sessionScope.customerLogin.address}</textarea>
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
