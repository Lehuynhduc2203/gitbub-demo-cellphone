<%-- 
    Document   : checkout
    Created on : Jun 18, 2020, 8:04:16 PM
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
                    <div class="breadcrumb-text product-more">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">Shop</a>
                        <span>Check Out</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="checkout-section spad">
        <div class="container">
            <form action="CheckoutServlet" class="checkout-form" method="post">
                <div class="row">
                    <div class="col-lg-6">
                        <h4>Biiling Details</h4>
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <label for="cun-name">Full Name<span>*</span></label>
                                <input type="text" name="fullnametxt">
                                <p style="color: red;">${erroname}</p>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun">Phone<span>*</span></label>
                                <input type="text" name="phonetxt">
                                <p style="color: red;">${errophone}</p>
                            </div>
                            <div class="col-lg-12">
                                <label for="street">Street Address<span>*</span></label>
                                <input type="text" name="addresstxt" class="street-first">
                                <p style="color: red;">${erroaddress}</p>
                                
                            </div>
                            <div class="col-lg-12">
                                <label for="zip">Note</label>
                                <textarea name="notetxt" rows="6" cols="60" style="border: 2px solid #ebebeb;"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6" style="">
                        <div class="place-order">
                            <h4>Your Order</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>Product <span>Total</span></li>
                                    <c:forEach items="${ordersitems}" var="item">
                                    <li class="fw-normal">${item.productID.productName} x ${item.quantity} <span>$${item.totalPrice}</span></li>
                                    </c:forEach>
                                    <li class="fw-normal">Subtotal <span>$${orders.subTotal}</span></li>
                                </ul>
                                
                                <div class="order-btn">
                                    <button type="submit" class="site-btn place-btn">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>

    </body>
</html>
