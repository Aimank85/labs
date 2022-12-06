<%--
    Document   : main
    Created on : Nov 30, 2022, 2:44:02 PM
    Author     : 236351
--%>



<%@page import="java.util.List"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="css/styles.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <title>Main</title>
    </head>
    <body onload="startTime()" >
        <%
            User user = (User) session.getAttribute("user");

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");

//            session.setAttribute("user", user);
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
                    <li><a href="account.jsp">account</a> </li>
                    <li><a href="logout.jsp">logout</a></li>
                </ul>
            </nav>
            
            <div class="inner-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4">
                                <% if (user != null) {%>
                                <table class="table">
                                    <tr><td><h2>User Information</h2></td></tr>
                                    <tr><td>Name: </td><td> <%= user.getName()%></td></tr>
                                    <tr><td>Email: </td><td> <%= user.getEmail()%></td></tr>
                                    <tr><td>Password: </td><td> <%= user.getPassword()%></td></tr>
                                    <tr><td>D.O.B.: </td><td> <%= user.getDOB()%></td></tr>
                                </table>
                                <%} else {%>
                                <p>User does not exist</p>
                                <%}%>
                        </div>
                    </div>            
                </div>
                <div id="clock" class="footer"></div>
            </div>
        </div>
    </body>
</html>