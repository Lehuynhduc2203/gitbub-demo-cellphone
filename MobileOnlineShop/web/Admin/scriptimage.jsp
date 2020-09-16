<%-- 
    Document   : scriptimage
    Created on : Jun 27, 2020, 11:04:13 AM
    Author     : MXGC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--
        <input type="file" name="image" accept="image/brands/*"  onchange="showMyImage(this)" />
        <img id="thumbnil" style="width:15%; margin-top:10px;"  src="" alt="image"/>
                                                   
        -->

        <script>
            function showMyImage(fileInput) {
                var files = fileInput.files;
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    var imageType = /image.*/;
                    if (!file.type.match(imageType)) {
                        continue;
                    }
                    var img = document.getElementById("thumbnil");
                    img.file = file;
                    var reader = new FileReader();
                    reader.onload = (function (aImg) {
                        return function (e) {
                            aImg.src = e.target.result;
                        };
                    })(img);
                    reader.readAsDataURL(file);
                }
            }
        </script>
    </body>
</html>
