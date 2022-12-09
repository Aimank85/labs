<%-- 
    Document   : login-action
    Created on : 29-Nov-2022, 1:33:23 PM
    Author     : 236333
--%>

<%@page import="com.model.dao.UserDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
        <link rel="stylesheet" href="css/style1.css"/>
    </head>
    <body onload="startTime()">
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>
        <%
            Users users = userDAO.getUsers();
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Search Method
            User user = users.user(email, password);

            if (user != null) {
                session.setAttribute("user", user);
                response.sendRedirect("main.jsp");
            } else {
                session.setAttribute("error", "User not found");
                response.sendRedirect("login.jsp");
            }
        %>

        
            <nav class="nav"> 
                <img class="logo" width="100px" height="45px" src="css/logo.png" >
                <ul class="menu"> 
                    <li><a href="index.jsp" style="margin-left: -100px;">Home</a> </li>
                </ul>
            </nav>

       
    </body>
</html>
