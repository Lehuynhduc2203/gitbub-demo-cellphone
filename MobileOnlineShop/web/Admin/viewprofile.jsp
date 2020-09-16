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
                                <h3 style="font-family: sans-serif">Profile</h3>
                                Profile 
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">


                                    <form action="AdminUpdateProfileServlet?email=${sessionScope.adminLogin.email}"  method="POST">
                                        <table class="col-sm-6 col-md-6" style="top: 10px;">
                                            <tr>
                                                <td>
                                                    Email : 
                                                </td>
                                                <td>
                                                    <input  type="text"  name="email" value="${sessionScope.adminLogin.email}" disabled="true"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Full Name *:
                                            </td>
                                            <td>
                                                <input  type="text"  name="fullname" value="${sessionScope.adminLogin.fullName}" />
                                            </td>
                                            <td> <input  type="hidden"  name="pass" value="${sessionScope.adminLogin.password}" /></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input class="btn btn-primary" type="submit" value="Update" />
                                                <p style="color: red;">${OKname}</p>
                                            </td>
                                        </tr>
                             
                                    </table>
                                </form>
                                    <form action="AdminChangePassword"  method="POST">
                                    <table  class="col-lg-6 col-md-6 col-sm-6">
                                        <h4 style="text-align: center;">Change Password</h4>
                                        <tr>
                                                <td>
                                                    Old Password<span>*</span>
                                                </td>
                                                <td>
                                                    <input type="password" name="oldpass" >
                                                <p style="color: red;">${oldpasserro}</p>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                New Password<span>*</span>
                                            </td>
                                            <td>
                                                <input type="password" name="newpass" >
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Confirm Password<span>*</span></td>
                                            <td>
                                               <input type="password" name="cfpass" class="street-first" >
                                                <p style="color: red;">${cfpasserro}</p> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input class="btn btn-primary" type="submit" value="Update" />
                                                <p style="color: red;">${OK}</p>
                                            </td>
                                        </tr>
                                    
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
