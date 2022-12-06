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
        <script type="text/javascript" src="js/index.js"></script>
        <title>Home page</title>
        <script src="https://kit.fontawesome.com/8095c6edcb.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/styles.css"/>
    </head>
    <body onload="startTime()">



        <div class="area" >
            <ul class="circles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <div class="index-img"> 
                <img class="index-logo" width="400px" src="css/logo.png" >
            </div>

            <!--<div class="wrapper">-->
            <div class="icon-menu">

                <div class="icons">
                    <div class="icons-div-1 icons-div">
                        <!-- Home -->
                        <a href="index.jsp" class="icons-link""><i class="fa-solid fa-house-chimney fa-2xl"></i><p style="margin-left: 5px"> Home </p></a>

                        <!-- Register -->
                        <a href="register.jsp" class="icons-link" "><i style="margin-left: 15px" class="fa-solid fa-right-to-bracket fa-2xl"></i> <p style="margin-left: -5px" >Register</p> </a>

                    </div>
                    <div class="icons-div-2 icons-div">

                        <!-- account -->
                        <a href="login.jsp" class="icons-link""><i style="margin-left: 10px" class="fa-solid fa-user fa-2xl"></i><p>Login</p></a>

                        <!-- String -->
                        <a href="strings.jsp" class="icons-link""><i style="margin-left: 10px" class="fa-solid fa-book fa-2xl"></i><p style="margin-left: -5px" >Strings</p></a>
                    </div>
                </div>
            </div>
            <!--</div>-->
        </div >

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
        <div id="clock" class="footer"></div>
    </body>

</html>
