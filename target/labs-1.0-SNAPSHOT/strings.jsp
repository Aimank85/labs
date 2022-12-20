<%-- 
    Document   : strings
    Created on : 30-Nov-2022, 11:51:57 AM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <title>Strings</title>
    </head>
    <body onload="startTime()">

        <div class="wrapper">
            <div class="strings-menu-list">
                <div class="index-left-menu">
                    <nav class="nav string-nav">
                        <div class="strings-left-menu">
                            <!--<div class="img">-->
                            <img class="logo" width="200px" height="" src="css/Cubik.png" >
                            <!--</div>-->
                            <ul class="menu strings-menu">
                                <li><a href="index.jsp" >home</a> </li>
                            </ul>
                        </div>

                        <div>
                            <form class="strings-input" action="strings.jsp">
                                <div class="input-group">
                                    <input id="string" type="text" name="string" class="form-control strings-input" placeholder="String" autofocus>                        
                                </div>
                            </form>
                        </div>
                    </nav>

                </div>
                <br>
                <br>
                
                <div class="strings-right-menu">
                    <div class="container-fluid vowels-table" ">
<!--                        <div class="row">
                            <div class="col-xl-12">-->
                                <jsp:include page="vowels.jsp" flush="true"/>
<!--                            </div>
                        </div>-->
                    </div>
                </div>
            </div>
            <div id="clock" class="footer"></div>
        </div>
    </body>
</html>
