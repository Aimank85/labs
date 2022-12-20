<%-- 
    Document   : index
    Created on : 23-Nov-2022, 3:47:09 PM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <title>Home page</title>
        <script src="https://kit.fontawesome.com/8095c6edcb.js" crossorigin="anonymous"></script>
    </head>
    <body onload="startTime()">
        <!--        <div class="index-img"> 
                    <img class="index-logo" width="400px" src="css/logo.png" >
                </div>-->

        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="index-logo" width="150px" src="css/Cubik.png" >
                    </div>
                    <div class= "tagline">
                        <h2>
                            Smart Tech Solutions
                        </h2> 
                    </div>
                    <div class="social-media">
                        <a href="index.jsp" class="social-media-icon"><i class="fa-brands fa-facebook-f fa-2xl"></i></a>
                        <a href="index.jsp" class="social-media-icon"><i class="fa-brands fa-instagram fa-2xl"></i></a>
                        <a href="index.jsp" class="social-media-icon"><i class="fa-brands fa-twitter fa-2xl"></i></a>
                    </div>

                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="register.jsp">Register</a> </li>
                        <li class="i-menu-li"><a href="login.jsp">Login</a></li>
                        <li class="i-menu-li"><a href="strings.jsp">Strings</a></li>
                        <li class="i-menu-li"><a href="admin-login.jsp">Admin</a></li>
                    </ul>
                </div>

            </div>
            <div id="clock" class="footer"></div>
        </div>
    </body>

</html>
