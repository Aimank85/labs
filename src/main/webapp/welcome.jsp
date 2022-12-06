<%-- 
    Document   : welcome
    Created on : 29-Nov-2022, 2:25:12 PM
    Author     : 236333
--%>

<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/index.js"></script>
        <link rel="stylesheet" href="css/styles.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <title>Welcome</title>
    </head>
    <body onload="startTime()">
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");

            String emailRegEx = "([a-zA-Z]+)[._-]([a-zA-Z]+)@example.com";
            String passRegEx = "[A-Z][a-z]{5,15}\\d{1,3}";

            session.setAttribute("emailError", email.matches(emailRegEx) ? "" : "Incorrect email format");
            session.setAttribute("passError", password.matches(passRegEx) ? "" : "Incorrect password format");

            if (!email.matches(emailRegEx) || (!password.matches(passRegEx))) {
                response.sendRedirect("register.jsp");
            } else {
                User user = new User(name, email, password, dob);
                Users users = new Users();
                users.add(user);

                session.setAttribute("user", user);
                session.setAttribute("users", users);
            }
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
                    <li><a href="main.jsp">Main</a> </li>
                    <li><a href="logout.jsp">logout</a></li>
                </ul>
            </nav>

            <div class="inner-wrapper">
                <table class="table">
                    <tr><td><h2>User Information</h2></td></tr>
                    <tr><td>Name: </td><td> <%= name%></td></tr>
                    <tr><td>Email: </td><td> <%= email%></td></tr>
                    <tr><td>Password: </td><td> <%= password%></td></tr>
                    <tr><td>D.O.B.: </td><td> <%= dob%></td></tr>
                </table>
            </div>
            <div id="clock" class="footer"></div>
        </div>
    </body>
</html>
