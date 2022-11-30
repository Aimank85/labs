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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>  
        <link rel="stylesheet" href="css/style.css"/>
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
            
            session.setAttribute("user", user);
        %>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <div class="navbar-header navbar-left">
                    <a class="navbar-brand" href="#">Welcome </a>                      
                    <a style="text-decoration: none; color: orange; font-size: 16px;" href="account.jsp">Account</a>
                </div>
                <div class="navbar-header navbar-left">                                        
                    <a style="text-decoration: none; color: orange; font-size: 16px;" href="logout.jsp">Logout</a>               
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2">
                    <table class="table table-bordered table-striped w-auto">
                        <% if(user != null){ %>
                        <table class="table">
                            <caption>User Information</caption>
                            <tr><td>Name: </td><td> <%= name%></td></tr>
                            <tr><td>Email: </td><td> <%= email%></td></tr>
                            <tr><td>Password: </td><td> <%= password%></td></tr>
                            <tr><td>D.O.B.: </td><td> <%= dob%></td></tr>
                        </table>
                        <%}else{%>
                        <p>User does not exist</p>
                        <%}%>
                </div>
            </div>            
        </div>
        <div id="clock" class="footer"></div>
    </body>
</html>