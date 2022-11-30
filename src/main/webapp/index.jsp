<%-- 
    Document   : index
    Created on : 23-Nov-2022, 3:47:09 PM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/index.js"></script>
        <title>Home page</title>
    </head>
    <body onload="startTime()">
        <nav class="nav"> 
            <ul class="menu"> 
                <li><a href="register.jsp">register</a> </li>
                <li><a href="login.jsp">login</a></li>
                <li><a href="strings.jsp">strings</a></li>
                <li><i class="fa-sharp fa-solid fa-user-plus"></i></li>
            </ul>
        </nav>
        
        
        <div id="clock" class="footer"></div>
    </body>
    
</html>
