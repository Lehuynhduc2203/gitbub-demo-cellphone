<%-- 
    Document   : header
    Created on : Jun 18, 2020, 6:24:15 PM
    Author     : Admin
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="header-top">
                <div class="container">
                    <div class="ht-left">
                        <div class="mail-service">
                            <i class=" fa fa-envelope"></i>
                            leduc@gmail.com

                        </div>
                        <div class="phone-service">
                            <i class=" fa fa-phone"></i>
                            0923657335
                        </div>
                    </div>
                    <div class="ht-right">
                        <% if (session.getAttribute("customerLogin") == null) {%>
                        <a href="loginpage.jsp" class="login-panel"><i class="fa fa-user"></i>Login</a>
                        <%} else {%>
                        <div class="login-panel">
                            <div id="menu">
                                <ul>
                                    <li>
                                        <a><i class="fa fa-user"></i>Account</a>
                                        <ul class="sub-menu" style="">
                                            <li><a href="userinformation.jsp" style="color: black; margin-left: 5px;">Information</a></li> 

                                            <li><a href="PurchahistoryServlet" style="color: black; margin-left: 5px;">Purchase History</a></li>
                                            <li><a href="LogoutServlet" style="color: black; margin-left: 5px;">Logout</a></li>

                                        </ul>
                                    </li>
                                </ul>

                            </div>
                        </div>
                        <%}%>
                        <div class="lan-selector">
                            <select class="language_drop" name="countries" id="countries" style="width:300px;">
                                <option value='yt' data-image="img/flag-1.jpg" data-imagecss="flag yt"
                                        data-title="English">English</option>

                            </select>
                        </div>




                        <div class="top-social">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="inner-header">
                    <div class="row">
                        <div class="col-lg-2 col-md-2">
                            <div class="logo">
                                <a href="./HomePageServlet">
                                    <img src="img/logocell.png" alt="" height="80px">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <div class="advanced-search">
                                <div class="">
                                <button type="button" class="category-btn">All Categories</button>
                                
                                </div>
                                <div class="input-group">
                                    <form action="SearchServlet" method="post">
                                        <input type="text" placeholder="What do you need?" name="search">
                                    <button type="submit"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 text-right col-md-3">
                            <ul class="nav-right">

                                <li class="cart-icon">
                                    <a href="shoppingcart.jsp">

                                        <c:set var="countitems" value="${0}"/>
                                        <c:forEach items="${ordersitems}" var="item">
                                            <c:set var="countitems" value="${countitems + item.quantity}" />
                                        </c:forEach>
                                        <i class="icon_bag_alt"></i>
                                        <span>${countitems}</span>
                                    </a>
                                    <div class="cart-hover">
                                        <div class="select-items">
                                            <table>
                                                <tbody>
                                                    <c:if test="${ordersitems == null}">
                                                    <p style="text-align: center;">Cart Emty</p>
                                                </c:if>
                                                <c:forEach items="${ordersitems}" var="item">
                                                    <tr>
                                                        <td class="si-pic"><img src="img/products/${item.productID.productImage}" alt="" style="width: 50px; height: 50px;"></td>
                                                        <td class="si-text">
                                                            <div class="product-selected">

                                                                <c:if test="${item.productID.promotionPrice == 0}">
                                                                    <p>$${item.productID.price} x ${item.quantity}</p>
                                                                </c:if>
                                                                <c:if test="${item.productID.promotionPrice > 0}">
                                                                    <p>$${item.productID.promotionPrice} x ${item.quantity}</p>
                                                                </c:if>

                                                                <h6>${item.productID.productName}</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <a href="RemovecartServlet?productID=${item.productID.productID}" style="color: black;"><i class="ti-close"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="select-total">
                                            <span>total:</span>
                                            <h5>$${orders.subTotal}</h5>
                                        </div>
                                        <div class="select-button">
                                            <a href="shoppingcart.jsp" class="primary-btn view-card">VIEW CARD</a>
                                            <a href="checkout.jsp" class="primary-btn checkout-btn">CHECK OUT</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-price"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nav-item">
                <div class="container">
                    <div class="nav-depart">
                        <div class="depart-btn">
                            <i class="ti-menu"></i>
                            <span>All Brands</span>
                            <ul class="depart-hover">
                                <li class="active"><a href="#">Iphone</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Huawei</a></li>
                                <li><a href="#">Xiaomi</a></li>
                                <li><a href="#">LG</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">...</a></li>
                            </ul>
                        </div>
                    </div>
                    <nav class="nav-menu mobile-menu">
                        <ul>
                            <li class="active"><a href="HomePageServlet">Home</a></li>
                            <li><a href="#">Shop</a>
                                <ul class="dropdown">
                                    <c:forEach items="${sessionScope.cate}" var="cate">
                                    <li><a href="ShoppingServlet?id=${cate.categoriesID}">${cate.categoryName}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                            
                            <li><a href="#">About</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="Admin/TestServlet">Admin Pages</a></li>
                                    <li><a href="">Shopping Cart</a></li>
                                    <li><a href="register.jsp">Register</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <div id="mobile-menu-wrap"></div>
                </div>
            </div>
        </header>
        <!-- Header End -->
    </body>
</html>
