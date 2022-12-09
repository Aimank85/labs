<%-- 
    Document   : index
    Created on : 23-Nov-2022, 3:47:09 PM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style1.css"/>
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

                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="register.jsp">Register</a> </li>
                        <li class="i-menu-li"><a href="login.jsp">Login</a></li>
                        <li class="i-menu-li"><a href="strings.jsp">Strings</a></li>
                    </ul>
                </div>



            </div>
        </div>
        <div id="clock" class="footer"></div>
    </div>


    <!--        <div class="wrapper">
                            <nav class="nav"> 
                                <ul class="menu"> 
                                    <li><a href="register.jsp">register</a> </li>
                                    <li><a href="login.jsp">login</a></li>
                                    <li><a href="strings.jsp">strings</a></li>
                                </ul>
                            </nav> 
    
                
            </div>
    -->

</body>

</html>
