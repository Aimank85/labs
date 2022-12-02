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
        <link rel="stylesheet" href="css/styles.css"/>
    </head>
    <body onload="startTime()">
        <%
            String emailError = (String) session.getAttribute("emailError");
            String passError = (String) session.getAttribute("passError");
        %>
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

            <nav class="nav"> 
                <img class="logo" width="150px" src="css/logo.png" >
                <ul class="menu"> 
                    <li><a href="index.jsp">home</a> </li>
                    <li><a href="login.jsp">login</a></li>
                    <li><a href="strings.jsp">strings</a></li>
                </ul>
            </nav>

            <div class="signup">
                <form method="POST" action="welcome.jsp">
                    <table class="input-table">
                        <caption class="caption">Sign Up</caption>
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
        <div id="clock" class="footer"></div>
    </body>
</html>
