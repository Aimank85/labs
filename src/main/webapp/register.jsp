<%-- 
    Document   : register
    Created on : 24-Nov-2022, 11:14:05 AM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/index.js"></script>
        <title>Sign up</title>
        <script src="https://kit.fontawesome.com/8095c6edcb.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style1.css"/>
    </head>
    <body onload="startTime()">
        <%
            String error = (String) session.getAttribute("error");
            String emailError = (String) session.getAttribute("emailError");
            String passError = (String) session.getAttribute("passError");
        %>


        <!--        <nav class="nav"> 
                    <img class="logo" width="100px" height="45px" src="css/Cubik.png" >
                    <ul class="menu"> 
                        <li><a href="index.jsp">home</a> </li>
                        <li><a href="login.jsp">login</a></li>
                        <li><a href="strings.jsp">strings</a></li>
                    </ul>
                </nav>-->

        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="welcome.jsp">
                            <table class="input-table">
                                <caption class="caption">Sign Up <span class="succes-message"> <%= (error != null) ? error : ""%> </span></caption>
                                <tr><td>Name: </td><td><input class="input-text" type="text" name="name" /></td></tr>
                                <tr><td>Email: </td><td><input class="error-message input-text" type="text" name="email" placeholder="<%= (emailError != null) ? emailError : ""%>" /></td></tr>
                                <tr><td>Password: </td><td><input class="error-message input-text" type="password" name="password" placeholder="<%= (passError != null) ? passError : ""%>" /></td></tr>
                                <tr><td>DOB: </td><td><input class="input-text" type="date" name="dob"/></td></tr>
                                <tr>
                                    <td> </td>
                                    <td class="form-actions">
                                        <a class="button" href="index.jsp">Cancel</a>
                                        <input class="button" type="submit" value="Sign Up" />
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="index.jsp">Home</a> </li>
                        <li class="i-menu-li"><a href="login.jsp">Login</a></li>
                        <li class="i-menu-li"><a href="strings.jsp">Strings</a></li>
                    </ul>
                </div>



            </div>
        </div>



        <div id="clock" class="footer"></div>
    </body>
</html>
