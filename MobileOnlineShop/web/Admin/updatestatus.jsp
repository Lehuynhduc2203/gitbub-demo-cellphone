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
                                <h3 style="font-family: sans-serif">Orders</h3>
                                Orders / <u style="font-family: sans-serif">Edit Status</u>
                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <h3 style="font-family: cursive;color: #003eff">Edit Order Status</h3>
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
                                    <form action="AdminUpdateStatusServlet" method="post">
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                            <tr>
                                                <td>ID</td>
                                                <td><input type="text"  name="id" value="${st.orderID}" readonly="true"/></td>
                                            </tr>    
                                            <tr>
                                                <td>Customer Email</td>
                                                <td><input type="text" name="email" value="${st.customerEmail.email}" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td>Total</td>
                                                <td><input type="text" name="total" value="${st.subTotal}" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td>Status <b>*</b></td>
                                                <td>
                                                    <select id="category" name="status" >
                                                        <c:forEach items="${status}" var="item">
                                                            
                                                                <option value="${item}" <c:if test="${item == st.orderState}">selected=""</c:if>>${item}</option>
                                                            
                                                        </c:forEach>
                                                        
                                                    </select>
                                                </td>
                                        
                                                
                                                <input type="hidden" name="shipname" value="${st.shipName}" />
                                                <input type="hidden" name="orderdate" value="${st.orderDate}" />
                                                <input type="hidden" name="shipaddress" value="${st.shipAddress}" />
                                                <input type="hidden" name="shipphone" value="${st.shipPhone}" />
                                                <input type="hidden" name="shipnote" value="${st.shipNote}" />
                                                <input type="hidden" name="expected" value="${st.expected}" />
                                         
                                            </tr>
                                            
                                            
                                            </thead>
                                        </table>
                                                <input  type="submit" value="Update" class="btn btn-primary"/>
                                        <a class="btn btn-info" href="vieworderServlet?id=${st.orderID}">Detail</a>
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
            <jsp:include page="scriptimage.jsp"></jsp:include>
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

    
</body>
</html>
