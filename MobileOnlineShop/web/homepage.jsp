<%-- 
    Document   : homepage
    Created on : Jun 18, 2020, 6:26:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="link.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Hero Section Begin -->
            <section class="hero-section">
                <div class="hero-items owl-carousel">
                    <div class="single-hero-items set-bg" data-setbg="img/iphone-12-se-co-muc-gia-khoi-diem-thap-nhat-trong-lich-su-flagship-cua-apple-xtmobile-banner.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <span>Phone,Apple</span>
                                    <h1 style="color: white;">Big Sale</h1>

                                    <a href="#" class="primary-btn">Shop Now</a>
                                </div>
                            </div>
                            <div class="off-card">
                                <h2>Sale <span>50%</span></h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-hero-items set-bg" data-setbg="img/Herobanner-2000x600-EX.webp">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <span>Phone,SamSung</span>
                                    <h1 style="color: white;">Big Sale</h1>

                                    <a href="#" class="primary-btn">Shop Now</a>
                                </div>
                            </div>
                            <div class="off-card">
                                <h2>Sale <span>50%</span></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Banner Section Begin -->
            <div class="banner-section spad">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="single-banner">
                                <img src="img/samsunglogo-1.jpg" alt="" width="570px" height="260px;">
                                <div class="inner-text">

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="single-banner">
                                <img src="img/56984ada446db49f694d66bbb53d81a8.jpg" alt="" width="570px" height="260px;">
                                <div class="inner-text">

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="single-banner">
                                <img src="img/bb.png" alt="" width="570px" height="260px;">
                                <div class="inner-text">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Banner Section End -->

            <!-- Women Banner Section Begin -->
            <section class="women-banner spad">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="product-large set-bg" data-setbg="img/DSC7716-1399-1590682760.jpg">
                                <h2>Samsung</h2>
                                <a href="#">Discover More</a>
                            </div>
                        </div>
                        <div class="col-lg-8 offset-lg-1">
                            <div class="filter-control">
                                <ul>
                                    <li class="active">Iphone</li>
                                    <li>SamSung</li>
                                    <li>Black Berry</li>
                                    <li>Accessories</li>
                                </ul>
                            </div>
                            <div class="product-slider owl-carousel">
                            <c:forEach items="${books}" var="p">
                                <div class="product-item">

                                    <div class="pi-pic">
                                        <img src="img/products/${p.productImage}" alt="">
                                        <c:if test="${p.promotionPrice > 0}">
                                            <div class="sale">Sale</div>
                                        </c:if>
                                        
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="AddtocartServlet?productId=${p.productID}"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">Coat</div>
                                        <a href="#">
                                            <h5>${p.productName}</h5>
                                        </a>

                                        <c:if test="${p.promotionPrice == 0}">
                                            <div class="product-price">
                                                ${p.price}
                                                
                                            </div>
                                        </c:if>
                                        <c:if test="${p.promotionPrice > 0}">
                                            
                                            <div class="product-price">
                                                ${p.promotionPrice}
                                                <span>${p.price}</span>
                                            </div>
                                            
                                            
                                        </c:if>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
