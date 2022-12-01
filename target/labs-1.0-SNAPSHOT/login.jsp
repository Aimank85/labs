<%-- 
    Document   : login
    Created on : 29-Nov-2022, 12:58:02 PM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/index.js"></script>
        <title>Login Page</title>
        <link rel="stylesheet" href="css/styles.css"/>
    </head>
    <body onload="startTime()">

        <%
            String error = (String) session.getAttribute("error");
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
                <ul class="menu" style="width: 350px;"> 
                    <li><a href="index.jsp">home</a> </li>
                    <li><a href="register.jsp">register</a></li>
                    <li><a href="strings.jsp">strings</a></li>
                </ul>
            </nav>

            <div class="signup">
                <form method="POST" action="login-action.jsp">
                    <table class="input-table">
                        <caption class="caption">Login <span class="succes-message"><%= (error != null) ? error : ""%></span></caption>
                        <tr><td class="label">Email: </td><td><input class="input-text" type="text" name="email"  /></td></tr>
                        <tr><td class="label">Password: </td><td><input class="input-text" type="password" name="password" /></td></tr>
                        <tr>
                            <td> </td>
                            <td class="form-actions">
                                <a class="button" href="index.jsp">Cancel</a>
                                <input class="button" type="submit" value="Login" />
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="clock" class="footer"></div>

        </div>
    </body>
</html>
