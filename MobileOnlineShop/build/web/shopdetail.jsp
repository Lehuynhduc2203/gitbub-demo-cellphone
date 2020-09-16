<%-- 
    Document   : shopdetail
    Created on : Jul 10, 2020, 8:10:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <div class="col-lg-3">
                            <div class="filter-widget">
                                <h4 class="fw-title">Categories</h4>
                                <ul class="filter-catagories">
                                    <c:forEach items="${sessionScope.cate}" var="cate">
                                    <li><a href="ShoppingServlet?id=${cate.categoriesID}&idd=3">${cate.categoryName}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                            
                        </div>
                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="product-pic-zoom">
                                        <img class="product-big-img" src="img/products/${listproduct.productImage}" alt="">
                                        <div class="zoom-icon">
                                            <i class="fa fa-search-plus"></i>
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="col-lg-6">
                                    <div class="product-details">
                                        <div class="pd-title">
                                            <span>${listproduct.brandID.brandName}</span>
                                            <h3>${listproduct.productName}</h3>
                                            <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                        </div>
                                        <div class="pd-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <span>(5)</span>
                                        </div>
                                        <div class="pd-desc">
                                            
                                            
                                            
                                            <c:if test="${listproduct.promotionPrice == 0}">
                                             <h4>$${listproduct.price}</h4>
                                        </c:if>
                                             <c:if test="${listproduct.promotionPrice > 0}">
                                            
                                            <h4>$${listproduct.promotionPrice}<span>$${listproduct.price}</span></h4>
                                            </c:if>
                                        </div>
                                        
                                        
                                        <div class="quantity">
                                            
                                            <a href="AddtocartServlet?productId=${listproduct.productID}" class="primary-btn pd-cart">Add To Cart</a>
                                        </div>
                                        <ul class="pd-tags">
                                            <li><span>CATEGORIES</span>: ${listproduct.categoryID.categoryName}</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="product-tab">
                                <div class="tab-item">
                                    <ul class="nav" role="tablist">
                                        <li style="width: 50%;">
                                            <a class="active" data-toggle="tab" href="#tab-1" role="tab" style="width: 100%;text-align: center;">DESCRIPTION</a>
                                        </li>
                                        <li style="width: 50%;">
                                            <a data-toggle="tab" href="#tab-2" role="tab" style="width: 100%;text-align: center;">SPECIFICATIONS</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                                <div class="tab-item-content">
                                    <div class="tab-content">
                                        <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                            <div class="product-content">
                                                <div class="row">
                                                    <div class="col-lg-7" style="border: 1px solid #EFF0F2;">
                                                        <h5 style="padding-top: 20px;">Introduction</h5>
                                                        <p>${listproduct.productDescription}</p>
                                                    </div>
                                                    <div class="col-lg-5">
                                                        <img src="img/products/${listproduct.productImage}" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                            <div class="specification-table">
                                                <table>
                                                    <tr>
                                                        <td class="p-catagory">Customer Rating</td>
                                                        <td>
                                                            <div class="pd-rating">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <span>(5)</span>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="p-catagory">Add To Cart</td>
                                                        <td>
                                                            <div class="p-price"><a href="AddtocartServlet?productId=${listproduct.productID}" style="color: #e7ab3c;">+ Add to cart</a></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="p-catagory">Price</td>
                                                        <td>
                                                            <div class="cart-add">$${listproduct.price}</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="p-catagory">Promotion Price</td>
                                                        <td>
                                                            <div class="p-stock">$${listproduct.promotionPrice}</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="p-catagory">Brand</td>
                                                        <td>
                                                            <div class="p-weight">${listproduct.brandID.brandName}</div>
                                                        </td>
                                                    </tr>
                                                    
                                                    
                                                    
                                                </table>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Product Shop Section End -->

        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>

    </body>
</html>
