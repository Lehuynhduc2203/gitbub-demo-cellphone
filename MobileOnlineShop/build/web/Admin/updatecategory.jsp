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
                                <h3 style="font-family: sans-serif">Categories</h3>
                                Categories / <u style="font-family: sans-serif">Update</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <h3 style="font-family: cursive;color: #003eff">Update Categories</h3>
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
                                    <form action="AdminUpdateCategoryServlet?id=${cate.categoriesID}" method="post">
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                            <tr>
                                                <td>Category ID</td>
                                                <td><input  type="text"  name="id" value="${cate.categoriesID}" disabled="true"/></td>
                                            </tr>    
                                            <tr>
                                                <td>Category Name <b>*</b></td>
                                                <td><input type="text" name="name" value="${cate.categoryName}" required="true"/></td>
                                            </tr>
                                            <tr>
                                                <td>Category Image <b>*</b></td>
                                                <td>
                                                    
                                                    <input type="file" name="image" value="image/category/${cate.categoryImage}"
                                                           accept="image/category/*"  onchange="showMyImage(this)" required="true"/>
                                                <img id="thumbnil" style="width:15%; margin-top:10px;"  src="image/category/${cate.categoryImage}" alt="image"/>
                                                </td>
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
        </section>
            <jsp:include page="scriptimage.jsp"></jsp:include>
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

    
</body>
</html>
