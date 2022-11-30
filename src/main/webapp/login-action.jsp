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
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <% 
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Users users = (Users) session.getAttribute("users");
            User user = users.user(email, password); 
        %>
        
        <% if(user != null){ %>
            <table class="table">
                <caption>User Information</caption>
                <tr><td>Email: </td><td> <%= email %></td></tr>
                <tr><td>Password: </td><td> <%= password %></td></tr>
            </table>
        <%}else {%>
            <p>User does not exist</p>
        <%}%>
    </body>
</html>
