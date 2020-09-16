<%-- 
    Document   : shoppingcart
    Created on : Jun 18, 2020, 6:39:52 PM
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
                        <form action="UpdateCartServlet" method="post" style="width: 100%;">
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
                                                <th><i class="ti-close"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ordersitems}" var="item">
                                            <tr>
                                                <td class="cart-pic first-row"><img src="img/products/${item.productID.productImage}" alt=""></td>
                                                <td class="cart-title first-row">
                                                    <h5>${item.productID.productName}</h5>
                                                </td>
                                                <td class="p-price first-row">$${item.price}</td>
                                                <td class="qua-col first-row">
                                                    <div class="quantity">
                                                        <div class="pro-qty">
                                                            <input type="text" value="${item.quantity}" name="quantity" >
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="total-price first-row">$${item.totalPrice}</td>
                                                <td class="close-td first-row"><a onclick="myFunction1(${item.productID.productID})" style="color: black;"><i class="ti-close"></i></a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-4" style="display: inline;">
                                    <div class="cart-buttons" >

                                        <input type="submit" value="Update Cart" class="primary-btn up-cart" style="width: 195px;"> <br> <br>
                                        <a href="ShoppingServlet?id=1" class="primary-btn continue-shop">Continue shopping</a>
                                    </div>

                                </div>
                                <div class="col-lg-4 offset-lg-4">
                                    <div class="proceed-checkout">
                                        <ul>




                                            <li class="subtotal">Subtotal <span>$${orders.subTotal}</span></li>


                                        </ul>
                                        <a href="checkout.jsp" class="proceed-btn">PROCEED TO CHECK OUT</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Shopping Cart Section End -->


        <jsp:include page="footer.jsp"></jsp:include>
            <script>
                function myFunction1(id) {
                    if (confirm("Are u want to delete!")) {
                        window.location = "RemovecartServlet?productID=" + id;
                    }
                }
            </script>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
