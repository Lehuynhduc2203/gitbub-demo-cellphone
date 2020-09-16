<%-- 
    Document   : purchadetails
    Created on : Jun 24, 2020, 2:25:29 PM
    Author     : Admin
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <span>Shopping Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcrumb Section Begin -->

            <!-- Shopping Cart Section Begin -->
            <section class="shopping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6" style="height: 500px;">
                            <p style="padding-left: 52px;">Customer information</p>
                            <table border="1" style="text-align: center;width: 80%;
                                   border: 1px solid #ebebeb;height: 80%;margin-left: auto;
                                   margin-right: auto;" >

                                <tr>
                                    <td>Email</td>
                                    <td>${sessionScope.customerLogin.email}</td>    
                            </tr>
                            <tr>
                                <td>Full Name</td>
                                <td>${sessionScope.customerLogin.firstName} ${sessionScope.customerLogin.lastName}</td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>${sessionScope.customerLogin.gender}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>${sessionScope.customerLogin.phone}</td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>${sessionScope.customerLogin.address}</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-6" >
                        <p style="padding-left: 52px;">Order information</p>
                        <table border="1" style="text-align: center;width: 80%;
                               border: 1px solid #ebebeb;height: 80%;margin-left: auto;
                               margin-right: auto;">
                            <tr>
                                <td>Order name</td>
                                <td>${order.shipName}</td>
                            </tr>
                            <tr>
                                <td>Shipping Address</td>
                                <td>${order.shipAddress}</td>
                            </tr>
                            <tr>
                                <td>Order Phone</td>
                                <td>${order.shipPhone}</td>
                            </tr>
                            <tr>
                                <td>Note</td>
                                <td>${order.shipNote}</td>
                            </tr>
                            <tr>
                                <td>Order Date</td>
                                <td>${order.orderDate}</td>
                            </tr>
                            <tr>
                                <td>Expected</td>
                                <td>${order.expected}</td>
                            </tr>
                            <tr>
                                <td>Order State</td>
                                <td>${order.orderState}</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="cart-table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th class="p-name">Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${details}" var="item">
                                        <tr>
                                            <td class="cart-pic first-row"><img src="img/products/${item.productID.productImage}" alt=""></td>
                                            <td class="cart-title first-row">
                                                <h5>${item.productID.productName}</h5>
                                            </td>
                                            <td class="p-price first-row">${item.price}</td>
                                            <td class="qua-col first-row">
                                                <div class="quantity">
                                                    <p style="text-align: center;"><b>${item.quantity}</b></p>


                                                </div>
                                            </td>
                                            <td class="total-price first-row">${item.totalPrice}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                
                                <form action="header.jsp" method="post">
                                    <input type="submit" class="btn btn-danger" value="Delete" 
                                           <c:if test="${order.orderState == 'Shipping'}">disabled=""</c:if>
                                           <c:if test="${order.orderState == 'Complete'}">disabled=""</c:if>>
                                    
                                </form>
                                

                            </div>
                            <div class="col-lg-4 offset-lg-4">
                                <div class="proceed-checkout">
                                    <ul>




                                        <li class="subtotal">Subtotal <span>$${order.subTotal}</span></li>


                                    </ul>
                                        <a href="PurchahistoryServlet" class="proceed-btn">Go Back To Purcha History</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shopping Cart Section End -->


        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
