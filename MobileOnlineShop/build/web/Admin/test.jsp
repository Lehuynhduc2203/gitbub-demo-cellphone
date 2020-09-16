<%-- 
    Document   : test
    Created on : Jun 19, 2020, 10:16:53 AM
    Author     : MXGC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <div class="btn-group">
                                            <button id="" class="btn green">
                                                <a href="../Admin/insertbrand.jsp"> Add New <i class="fa fa-plus"></i></a>
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
                                            <form action="searchbyname" method="get">
                                            Search by name:
                                                <label>
                                                    
                                                    <input type="text" name="name" class="form-control">
                                                    
                                                </label>
                                            <input type="submit" value="Search" />
                                            </form>
                                        </div>
                                    </div>
                                    <div class="space15"></div>
                                    
                                    <form action="searchbyname" method="post">
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                                <tr>
                                                    <th>Brand Id</th>
                                                    <th>Brand Name</th>
                                                    <th>Img</th>
                                                    <th>Description</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>

                                                </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach items="${list}" var="b">
                                                <tr>
                                                    <td>${b.brandID}</td>
                                                    <td>${b.brandName}</td>
                                                    <td>   <img src="image/brands/${b.brandImage}" height="50px" width="70px"/> </td>

                                                    <td>${b.brandDescription}</td>                                   
                                                    <td><a class="btn btn-primary" href="UpdatebrandServlet?id=${b.brandID}">Edit</a></td>
                                                    <td><a class="btn btn-danger" href="deleteBrandServlet?id=${b.brandID}">Delete</a></td>
                                                </tr>

                                            </c:forEach>
                                        </tbody>

                                    </table>
                                </form>

                            </div>
                        </div>
        </script>
    </body>
</html>
