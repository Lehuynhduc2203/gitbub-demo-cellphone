<%-- 
    Document   : header
    Created on : Jun 15, 2020, 11:44:28 AM
    Author     : MXGC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <jsp:include page="linkBootstrap.jsp"></jsp:include>
        </head>
        <body>

            <section id="container">
                <header class="header white-bg">
                    <!--logo start-->
                    <a href="../Admin/index.jsp" class="logo">Mobile<span>Shop</span></a>
                    <!--logo end-->
                    <div class="nav notify-row" id="top_menu">
                        
                        <!--  notification end -->
                    </div>
                    <div class="top-nav ">
                        <!--search & user info start-->
                        <ul class="nav pull-right top-menu">
                            <!-- user login dropdown start-->
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <img alt="" src="image/avatar1_small.jpg">
                                    <span class="username">Hello ${sessionScope.adminLogin.fullName}</span>
                                    <b class="caret"></b>
                                </a>
                                    <ul class="dropdown-menu extended logout">
                          <div class="log-arrow-up"></div>
                          <li><a href="../homepage.jsp"><i class="fa fa-home"></i>Home page</a></li>
                          <li><a href="../Admin/viewprofile.jsp"><i class=" fa fa-suitcase"></i>Profile</a></li>
                            
                          <li><a href="AdminLogoutServlet"><i class="fa fa-key"></i> Log Out</a></li>
                      </ul>
                            </li>
                            <!-- user login dropdown end -->
                        </ul>
                        <!--search & user info end-->
                    </div>
                </header>
                <!--header end-->
                <!--sidebar start-->
                <aside>
                    <div id="sidebar" class="nav-collapse ">
                        <!-- sidebar menu start-->
                        <ul class="sidebar-menu" id="nav-accordion">
                            <li>
                                <a class="active" href="index.jsp">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <li class="sub-menu" >
                                <a  href="AdminShowCustomerServlet">
                                    <i class="fa fa-laptop"></i>
                                    <span>Manage Customer</span>
                                </a>
                    </li>
                            <li class="sub-menu">
                                <a href="AdminShowBrandServlet">
                                    <i class="fa fa-laptop"></i>
                                    <span>Manage Brand</span>
                                </a>
                    </li>
                            <li class="sub-menu">
                                <a  href="AdminShowCategoryServlet">
                                    <i class="fa fa-laptop"></i>
                                    <span>Manage Category</span>
                                </a>
                    </li>
                            <li class="sub-menu">
                                <a href="AdminShowProductServlet">
                                    <i class="fa fa-laptop"></i>
                                    <span>Manage Product</span>
                                </a>
                    </li>

                    
                            <li class="sub-menu">
                                <a href="AdminShowOrderServlet">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>Manage Order</span>
                                </a>
                    </li>
                   
                    
                    <!--multi level menu end-->
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <jsp:include page="script.jsp"></jsp:include>
        </section>
    </body>
</html>