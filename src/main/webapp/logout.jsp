<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <title>Logout</title>
    </head>
    <body onload="startTime()">


        <div class="wrapper">
            <div class="menu-list">
                <div class="delete-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>

                    <div class="delete-paragraph">
                        <h2 class="termination">You have been logged out - Thank you!</h2>
                    </div>

                </div>

                <div class="delete-right-menu">
                    <ul class="i-menu">
                        <li class="top-li i-menu-li"><a href="index.jsp">home</a> </li>
                    </ul>
                </div>

            </div>
        </div>


        <!--        <nav class="nav"> 
                    <img class="logo" width="200px" src="css/Cubik.png">
                    <ul class="menu">
                        <li><a href="index.jsp">home</a> </li>
                    </ul>
                </nav>
        
                <h2 class="termination">You have been logged out - Thank you!</h2>-->

    </body>
</html>