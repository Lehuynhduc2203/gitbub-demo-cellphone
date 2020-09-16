<%-- 
    Document   : manageadmin
    Created on : Jun 16, 2020, 7:55:03 PM
    Author     : MXGC
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->
        <jsp:include page="linkBootstrap.jsp"></jsp:include>
            <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

        </head>
        <body>

            <section id="container" class="">
                <!--header start-->
            <jsp:include page="header.jsp"></jsp:include>

                <!--sidebar end-->
                <!--main content start-->
                <section id="main-content" >
                    <section class="wrapper site-min-height">
                        <!-- page start-->
                        <section class="panel">
                            <header class="panel-heading">
                                <h3 style="font-family: sans-serif">Products</h3>
                                Products / <u style="font-family: sans-serif">View</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <div class="btn-group">
                                            <button id="" class="btn green">
                                                <!--    <a href="../Admin/insertproduct.jsp">Add New <i class="fa fa-plus"></i></a>  -->
                                                <a href="insertproductServlet">Add New <i class="fa fa-plus"></i></a>
                                            </button>
                                        </div>
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#">Print</a></li>
                                                <li><a href="#">Save as PDF</a></li>
                                                <li><a href="#">Export to Excel</a></li>
                                            </ul>
                                        </div>
                                        <br/>
                                        <br/>
                                        <div class="btn-group pull-right">
                                            <form action="searchbyname?action=activi" method="post" style="margin-right: 20px;" >
                                                <h5>Action: &nbsp;&nbsp;&nbsp;
                                                <label>
                                                    <select id="category" name="namesearch" >
                                                        
                                                        <option value="All" selected="">All</option>
                                                            <option value="true">Enable</option>
                                                            <option value="false">Disable</option>
                                                            
                                                    </select>
                                                </label>
                                                    
                                            <button type="submit" style="height:25px;width:40px"><i class="fa fa-search" ></i></button>
                                            </h5>
                                            </form>
                                        </div>
                          
                                        <div class="btn-group pull-right">
                                            <form action="searchbyname?action=product" method="post" style="margin-right: 20px">
                                                Search product name: &nbsp;&nbsp;&nbsp;
                                                <label>
                                                    <input type="text" name="namesearch"  class="form-control">
                                                </label>
                                                <button type="submit" style="height:30px;width:40px"><i class="fa fa-search" ></i></button>
                                            </form>
                                        </div>
                                    </div> 
                                    <div class="space15"></div>
                                    <form action="" method="post">
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Product Name</th> 
                                                    <th>Image</th>
                                                    <th>Price</th>

                                                    <th>Promotion</th>
                                                    <th>Category</th>
                                                    <th>Brand</th>
                                                    <th>Active</th>
                                                    <th>Edit</th>
                                                    <th style="text-align: center">Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach items="${list}" var="a">
                                                <tr>
                                                    <td>${a.productID}</td>
                                                    <td>${a.productName}</td>
                                                    <td><img src="image/products/${a.productImage}" height="100px" width="100px"/> </td>

                                                    <td>${a.price} $</td>

                                                    <td>${a.promotionPrice} $</td>   
                                                    <td>${a.categoryID.categoryName}</td>
                                                    <td>${a.brandID.brandName}
                                                        <input type="hidden" value="${a.productDescription}"></a>

                                                    </td>
                                                    <td>         
                                                        <c:if test="${a.action == true}" >
                                                            Enable
                                                        </c:if >
                                                        <c:if test="${a.action == false}">
                                                            Disable
                                                        </c:if>
                                                    </td>
                                                    <td>
                                                        <a class="btn btn-primary" href="UpdateproductServlet?id=${a.productID}">Edit</a>
                                                    </td>
                                                    <td>
                                                        <a class="btn btn-danger" href="deleteProductServlet?id=${a.productID}">Delete</a>
                                                        <br/>
                                                        <br/>

                                                        <p>    

                                                            <c:if test="${a.action == false}">
                                                                <a class="btn btn-primary" href="UpdateActionServlet?id=${a.productID}">Enable</a>
                                                            </c:if >
                                                            <c:if test="${a.action == true}">
                                                                <a class="btn btn-default" href="UpdateActionServlet?id=${a.productID}">Disable</a>
                                                            </c:if>

                                                        </p>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>

                                    </table>
                                </form>
                            </div>
                        </div>
                    </section>
                    <!-- page end-->
                </section>
            </section>
            <!--main content end-->
            <!-- Right Slidebar start -->

            <jsp:include page="footer.jsp"></jsp:include>
        </section>
        <jsp:include page="script.jsp"></jsp:include>
        <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
        <script src="js/respond.min.js" ></script>

        <!--right slidebar-->
        <script src="js/slidebars.min.js"></script>

        <!--common script for all pages-->
        <script src="js/common-scripts.js"></script>

        <!--script for this page only-->
        <script src="js/editable-table.js"></script>


        <!-- END JAVASCRIPTS -->
        <script>
            jQuery(document).ready(function () {
                EditableTable.init();
            });
        </script>



    </body>
</html>
