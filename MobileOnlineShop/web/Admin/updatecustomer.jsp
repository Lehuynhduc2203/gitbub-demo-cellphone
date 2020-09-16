<%-- 
    Document   : insertbrand
    Created on : Jun 16, 2020, 11:38:58 PM
    Author     : MXGC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                <h3 style="font-family: sans-serif">Customers</h3>
                                Customers / <u style="font-family: sans-serif">Update</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <h3 style="font-family: cursive;color: #003eff">Update Customers</h3>
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#">Print</a></li>
                                                <li><a href="#">Save as PDF</a></li>
                                                <li><a href="#">Export to Excel</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="space15"></div>
                                    <form action="AdminUpdateCustomerServlet?email=${custom.email}" method="post">
                                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                        <thead>
                                            <tr>
                                                <td>Email</td>
                                                <td><input type="email" name="email" value="${custom.email}" disabled="true"/></td>
                                            </tr>

                                            <tr>
                                                <td>First Name</td>
                                                <td><input type="text" name="fname" value="${custom.firstName}"/></td>
                                            </tr>
                                            <tr>
                                                <td>Last Name</td>
                                                <td><input type="text" name="lname" value="${custom.lastName}"/></td>
                                            </tr>
                                            <tr>
                                                <td>Gender</td>
                                                <td><input type="text" name="gender" value="${custom.gender}"/></td> </tr>


                                            <tr>
                                                <td>Phone</td>
                                                <td><input type="text" name="phone" value="${custom.phone}"/></td>
                                            </tr>
                                            <tr>
                                                <td>Address</td>
                                                <td><input type="text" name="address" value="${custom.address}"/></td>
                                            </tr>

                                        </thead>
                                    </table>
                                    <input type="submit" value="Update" />
                                    <input type="reset" value="Reset" />
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
            <jsp:include page="script.jsp"></jsp:include>
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

        </section>
    </form>
</body>
</html>
