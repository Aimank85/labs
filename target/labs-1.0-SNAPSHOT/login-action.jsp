<%-- 
    Document   : login-action
    Created on : 29-Nov-2022, 1:33:23 PM
    Author     : 236333
--%>

<%@page import="com.model.User"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
        <link rel="stylesheet" href="css/styles.css"/>
    </head>
    <body onload="startTime()">
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Users users = (Users) session.getAttribute("users");
            User user = users.user(email, password);
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
                <img class="logo" width="100px" height="45px" src="css/logo.png" >
                <ul class="menu"> 
                    <li><a href="index.jsp" style="margin-left: -100px;">Home</a> </li>
                </ul>
            </nav>
            
            <% if (user != null) {%>
            <div class="inner-wrapper">
            <table class="table">
                <tr><td><h2>User Information</h2></td></tr>
                <tr><td>Email: </td><td> <%= email%></td></tr>
                <tr><td>Password: </td><td> <%= password%></td></tr>
            </table>
            </div>
            <%} else {%>
                <p class="login-action-error-message">User does not exist</p>
            <%
                session.setAttribute("error", "User not found");
                response.sendRedirect("login.jsp");
            }
            %>
        </div>
    </body>
</html>
