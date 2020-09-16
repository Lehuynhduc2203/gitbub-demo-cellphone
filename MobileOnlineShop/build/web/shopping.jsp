<%-- 
    Document   : shopping
    Created on : Jul 9, 2020, 9:13:24 AM
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
                            <div class="breadcrumb-text">
                                <a href="#"><i class="fa fa-home"></i> Home</a>
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcrumb Section Begin -->

            <!-- Product Shop Section Begin -->

            <section class="product-shop spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                            <div class="filter-widget">
                                <h4 class="fw-title">Categories</h4>
                                <ul class="filter-catagories">
                                <c:forEach items="${sessionScope.cate}" var="cate">
                                    <li><a href="ShoppingServlet?id=${cate.categoriesID}&idd=3">${cate.categoryName}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <div class="filter-widget">
                            <h4 class="fw-title">Price</h4>
                            <div class="fw-tags">
                                <a href="SearchPriceServlet?min=1&max=100">Under $100</a>
                                <a href="SearchPriceServlet?min=100&max=200">Between $100 and $200</a>
                                <a href="SearchPriceServlet?min=200&max=300">Between $200 and $300</a>
                                <a href="SearchPriceServlet?min=1&max=1000">Under $1000</a>

                            </div>
                        </div>

                    </div>
                    <div class="col-lg-9 order-1 order-lg-2">
                        <div class="product-show-option">
                            <div class="row">

                                <div class="col-lg-12" style="padding-bottom: 20px;">
                                    <c:forEach items="${listbrand}" var="p">

                                        <a href="SearchbrandServlet?brandid=${p.brandID}" >
                                            <img src="img/Brand/${p.brandImage}" width="130px" height="70px;" 
                                                 <c:if test="${sessionScope.brandid == p.brandID}">
                                                     style="border: 2px solid #52a2e1;"</c:if><c:if test="${sessionScope.brandid != p.brandID}">
                                                     style="border: 1px solid #eee;"</c:if>></a>

                                    </c:forEach>

                                </div>
                                <div class="col-lg-7 col-md-7" style="padding-left: 700px;">
                                    <div class="select-option" >
                                        <select class="sorting" id="selectBox" onchange="changeFunc();" style="width: 500px;">
                                            <option value="all">ALL</option>
                                            <option value="1">High to low</option>
                                            <option value="2">Low to high</option>
                                        </select>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="product-list">
                            <div class="row">
                                <c:forEach items="${listproduct}" var="p">
                                    <div class="col-lg-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="pi-pic">
                                                <img src="img/products/${p.productImage}" alt="">
                                                <c:if test="${p.promotionPrice > 0}">
                                                    <div class="sale">Sale</div>
                                                </c:if>

                                                <ul>
                                                    <li class="w-icon active"><a href="AddtocartServlet?productId=${p.productID}"><i class="icon_bag_alt"></i></a></li>
                                                    <li class="quick-view"><a href="ShopDetailServlet?productid=${p.productID}">+ Quick View</a></li>
                                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="pi-text">
                                                <div class="catagory-name">${p.brandID.brandName}</div>
                                                <a href="#">
                                                    <h5>${p.productName}</h5>
                                                </a>
                                                <c:if test="${p.promotionPrice == 0}">
                                                    <div class="product-price">
                                                        $${p.price}

                                                    </div>
                                                </c:if>
                                                <c:if test="${p.promotionPrice > 0}">

                                                    <div class="product-price">
                                                        $${p.promotionPrice}
                                                        <span>$${p.price}</span>
                                                    </div>


                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>


                    </div>
                </div>



            </div>
        </section>
        <!-- Product Shop Section End -->
        <script type="text/javascript">

            function changeFunc() {
                var selectBox = document.getElementById("selectBox");
                var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                window.location = "NewServlet?id=" + selectedValue;

            }

        </script>
        <script type="text/javascript">

            function myFunction() {
                // Get the checkbox
                var checkBox = document.getElementById("myCheck");
                // Get the output text
                var text = document.getElementById("text");

                // If the checkbox is checked, display the output text
                if (checkBox.checked == true) {
                    text.style.display = "block";
                } else {
                    text.style.display = "none";
                }
            }

        </script>

        <script type="text/javascript">
            function myFunction11() {
                var checkboxes = document.getElementsByName('employee');
                var selected = [];
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].checked) {
                        selected.push(new Array(checkboxes[i].value));
                    }
                }
                alert(selected);
                window.location = "SearchbrandServlet?id=" + selected;
            }

        </script>
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
    </body>
</html>
