<%-- 
    Document   : purchahistory
    Created on : Jun 24, 2020, 11:15:24 AM
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
            <style>
                #customers {
                    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                }

                #customers td, #customers th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #customers tr:nth-child(even){background-color: #f2f2f2;}

                #customers tr:hover {background-color: #ddd;}

                #customers th {
                    padding-top: 12px;
                    padding-bottom: 12px;
                    text-align: left;
                    background-color: black;
                    color: white;
                }
            </style>
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
                                <span>Purcha History</span>
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
                        <div style="float: right; width: 800px; margin-left: 150px; padding-top: 10px; border-width: 2px;">

                            <div class="col-lg-12" style="height: 400px;">
                                <h4 style="text-align: center;">Purcha History</h4>
                                <div class="row" >
                                    <table id="customers" style="height: 90%;;margin-left: auto;
                               margin-right: auto; width: 100%;">
                                        <tr>
                                            <th>Name</th>
                                            <th>Subtotal</th>
                                            <th>Order Date</th>
                                            <th>Expected</th>
                                            <th>State</th>
                                            <th>Action</th>
                                        </tr>
                                        <c:forEach items="${list}" var="item">
                                        <tr>
                                            <td>${item.shipName}</td>
                                            <td>${item.subTotal}</td>
                                            <td>${item.orderDate}</td>
                                            <td>${item.expected}</td>
                                            <td>${item.orderState}</td>
                                            <td><a href="PurchaDetailsServlet?id=${item.orderID}">See More</a></td>
                                        </tr>
                                    </c:forEach>
                                </table>
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
