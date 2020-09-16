<%-- 
    Document   : loginpage
    Created on : Jun 16, 2020, 10:38:44 PM
    Author     : MXGC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="./assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" href="./css/owl.carousel.css" type="text/css">

    <!--right slidebar-->
    <link href="./css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/style-responsive.css" rel="stylesheet" />
    </head>
     <body class="login-body">

    <div class="container">

        <form class="form-signin" action="LoginAdminServlet" method="post">
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <i style="font-family: sans-serif">User Name *:</i>
            <input type="text" name="email" class="form-control" placeholder="Email " autofocus >
            <i style="font-family: sans-serif">Password *:</i>
            <input type="password" name="pass" class="form-control" placeholder="Password " >
            <h4 style="color: red; text-align: center;font-family: cursive">${error}</h4>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label>
            
            <button class="btn  btn-login btn-block" type="submit">Sign in</button>
            

        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Forgot Password ?</h4>
                      </div>
                      <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                      </div>
                      <div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                          <button class="btn btn-success" type="button" name="Login">Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>
        

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="./js/jquery.js"></script>
    <script src="./js/bootstrap.min.js"></script>


  </body>

</html>
