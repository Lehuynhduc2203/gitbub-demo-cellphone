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
                                <h3 style="font-family: sans-serif">OrdersDetails</h3>
                                OrdersDetails / <u style="font-family: sans-serif">View</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">

                                    </div>
                                    

                                        <div class="col-sm-6 col-md-6">
                                        <h3>
                                            <p style="color: red;">Shipping information</p>
                                        </h3>
                                        
                                        <p>
                                        <td>Email : <b>${ord.customerEmail.email}</b></td>
                                    </p>
                                    <p>
                                    <td>Name : ${ord.customerEmail.lastName} ${ord.customerEmail.firstName}</td>
                                    </p>
                                    <p>
                                    <td>Address : ${ord.customerEmail.address}</td>
                                    </p>
                                    <p>
                                    <td>Phone : ${ord.customerEmail.phone}</td>
                                    </p>
                                    <td>Note: ${ord.shipNote}</td>
                                    
                                    </div>
                                    
                                    <div class="col-sm-6 col-md-6">
                                        <p>
                                            <br/>
                                            <br/>
                                            <br/>
                                            <td>Ship Address :${ord.shipAddress}</td>
                                            
                                        </p>
                                        <p>
                                            <td>Ship Name : ${ord.shipName}</td>
                                        </p>
                                        <p>
                                            <td>Order Date : ${ord.orderDate}</td>
                                        </p>
                                    </div>
                                    




                                
                                <br/>
                                <br/>
                                <form action="" method="post">
                                    <table class="table table-striped table-hover table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Total Price</th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach items="${list}" var="ab">
                                                <tr>
                                                    <td>
                                                        <img src="image/products/${ab.productID.productImage}" accept="image/products/*" height="130px" width="130px"/>
                                                        &nbsp;&nbsp;&nbsp;
                                                        ${ab.productID.productName}

                                                    </td>
                                                    <td>${ab.price} $</td>
                                                    <td>${ab.quantity}</td>
                                                    <td>${ab.totalPrice} $</td>
                                                    
                                                </tr>
                                                
                                            </c:forEach>
                                                
                                        </tbody>
                                        
                                    </table>
                                </form>
                                <div style="float: right; font-weight: bold;font-size: 22px; padding-right: 25px; ">Total : ${ord.subTotal} $</div>
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
        <jsp:include page="script.jsp"></jsp:include>


    </body>
</html>
