
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="linkBootstrap.jsp"></jsp:include>
        </head>
        <body>

            <h1 style="color: green">Show Brand</h1>
            <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <tr>
                    <th>Name</th>
                    <th>Img</th>
                    <th>Dis</th>
                    
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            <c:forEach items="${list}" var="b">


                <tr>
                    <td>${b.brandName}</td>
                    <td>${b.brandImage}</td>                                
                    <td>${b.brandDescription}</td>                                

                </tr>


            </c:forEach>
        </table>   


        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
