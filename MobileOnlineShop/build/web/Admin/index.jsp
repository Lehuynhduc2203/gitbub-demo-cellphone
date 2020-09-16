<%-- 
    Document   : index
    Created on : Jun 15, 2020, 11:18:52 AM
    Author     : MXGC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="linkBootstrap.jsp"></jsp:include>

        </head>
        <body>
        <jsp:include page="header.jsp"></jsp:include>
            <section id="container">
                <!--header start-->

                <!--sidebar end-->
                <!--main content start-->
                <section id="main-content">
                    <section class="wrapper">
                        <!--state overview start-->
                        <div class="row state-overview">
                            <div class="col-lg-3 col-sm-6">
                                <section class="panel">
                                    <div cl ass="symbol terques">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <div class="value">
                                        <h1 class="count">
                                            0
                                        </h1>
                                        <p>New Users</p>
                                    </div>
                                </section>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <section class="panel">
                                    <div class="symbol red">
                                        <i class="fa fa-tags"></i>
                                    </div>
                                    <div class="value">
                                        <h1 class=" count2">
                                            0
                                        </h1>
                                        <p>Sales</p>
                                    </div>
                                </section>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <section class="panel">
                                    <div class="symbol yellow">
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                    <div class="value">
                                        <h1 class=" count3">
                                            0
                                        </h1>
                                        <p>New Order</p>
                                    </div>
                                </section>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <section class="panel">
                                    <div class="symbol blue">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </div>
                                    <div class="value">
                                        <h1 class=" count4">
                                            0
                                        </h1>
                                        <p>Total Profit</p>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <!--state overview end-->
                        
                    </section>
                    
            </section>
            
            <!--main content end-->

            <!-- Right Slidebar start -->

            <!-- Right Slidebar end -->

            <!--footer start-->

            <!--footer end-->
            <jsp:include page="script.jsp"></jsp:include>
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

        <script>
            //owl carousel

            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    navigation: true,
                    slideSpeed: 300,
                    paginationSpeed: 400,
                    singleItem: true,
                    autoPlay: true

                });
            });

            //custom select box

            $(function () {
                $('select.styled').customSelect();
            });
        </script>


    </body>
</html>
