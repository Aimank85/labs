<%-- 
    Document   : delete
    Created on : Dec 8, 2022, 10:33:55 AM
    Author     : 236351
--%>

<%@page import="com.model.dao.UserDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
        <link rel="stylesheet" href="css/style1.css"/>
    </head>
    <body>
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>

        <%
            User user = (User) session.getAttribute("user");
            Users users = userDAO.getUsers();

            userDAO.delete(users, user);
            session.invalidate();
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
                <img class="logo" width="100px" height="45px"src="css/logo.png" >
                <ul class="menu">
                    <li><a href="index.jsp">home</a> </li>
                </ul>
            </nav>

            <h2 class="termination">Your account has been deleted successfully!</h2>
        </div>
    </body>
</html>
