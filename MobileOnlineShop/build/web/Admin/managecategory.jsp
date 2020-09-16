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
                                <h3 style="font-family: sans-serif">Categories</h3>
                                Categories / <u style="font-family: sans-serif">View</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <div class="btn-group">
                                            <button id="" class="btn green">
                                                <a href="../Admin/insertcategory.jsp">Add New <i class="fa fa-plus"></i></a>
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
                                        <div class="btn-group pull-right">
                                            <form action="searchbyname?action=category" method="post" style="margin-right: 20px">
                                                Search category name: &nbsp;&nbsp;&nbsp;
                                                <label>

                                                    <input type="text" name="namesearch" class="form-control">

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
                                                    <th>Category ID</th>
                                                    <th>Category Name</th>
                                                    <th>img</th>                             
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach items="${list}" var="c">
                                                <tr>
                                                    <td>${c.categoriesID}</td>
                                                    <td>${c.categoryName}</td>

                                                    <td><img src="image/category/${c.categoryImage}" height="50px" width="70px"/> </td>                            
                                                    <td><a class="btn btn-primary" href="UpdatecategoryServlet?id=${c.categoriesID}">Edit</a></td>
                                                    <td><a class="btn btn-danger" href="deleteCategoryServlet?id=${c.categoriesID}">Delete</a></td>
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
