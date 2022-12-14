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
        <title>Admin Login</title>
        <link rel="stylesheet" href="css/style1.css"/>
    </head>
    <body onload="startTime()">

        <%
            String error = (String) session.getAttribute("error");
        %>

        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="admin-login-action.jsp">
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
                </div> 
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="index.jsp">Home</a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="clock" class="footer"></div>
    </body>
</html>
