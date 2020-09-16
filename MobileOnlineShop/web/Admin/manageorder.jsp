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
                                <h3 style="font-family: sans-serif">Orders</h3>
                                Orders / <u style="font-family: sans-serif">View</u>
                            </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  
                              </div>
                              
                          </div>
                          <div class="btn-group pull-right">
                                            <form action="searchbyname?action=status" method="post" style="margin-right: 20px;" >
                                                <h5>Status: &nbsp;&nbsp;&nbsp;
                                                <label>
                                                    <select id="category" name="namesearch" >
                                                        
                                                        <option value="All" selected="">All</option>
                                                            <option value="Shipping">Shipping</option>
                                                            <option value="Processing">Processing</option>
                                                            <option value="Completed">Completed</option>
                                                        
                                                        
                                                    </select>
                                                </label>
                                                    
                                            <button type="submit" style="height:25px;width:40px"><i class="fa fa-search" ></i></button>
                                            </h5>
                                            </form>
                                        </div>
                          
                          <form action="dssdfsdf" method="post">
                          <table class="table table-striped table-hover table-bordered">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <th>Customer Email</th>
                                  <th>Full Name</th>
                                  
                                  <th>Ship Address</th>
                                  <th>Order Date</th>
                                  <th>Expected Date</th>
                                  <th>Total</th>
                                  <th>Phone</th>
                                  <th>Status</th>
                                  <th>Edit</th>
                                 
                              </tr>
                              </thead>
                              
                              <tbody>
                              <c:forEach items="${list}" var="a">
                              <tr>
                                  <td>${a.orderID}</td>
                                  <td>${a.customerEmail.email}</td>
                                  <td>${a.customerEmail.firstName} ${a.customerEmail.lastName} </td>
                                  
                                  <td>${a.shipAddress}</td>    
                                  <td>${a.orderDate}</td>
                                  <td>${a.expected}</td>
                                  <td>${a.subTotal}</td>
                                  <td>${a.shipPhone}</td>
                                  <td>${a.orderState}</td>
                                 
                                  
                                  <td>
                                      <div>
                                      <a class="btn btn-primary" href="vieworderServlet?id=${a.orderID}">Detail</a> 
                                      <a class="btn btn-info" href="UpdateStatusOrderServlet?id=${a.orderID}">Change Status</a>
                                      </div>
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
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>


  
    </body>
</html>
