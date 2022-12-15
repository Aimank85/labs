<%-- 
    Document   : login-action
    Created on : 29-Nov-2022, 1:33:23 PM
    Author     : 236333
--%>

<%@page import="com.model.dao.AdminDAO"%>
<%@page import="com.model.Admin"%>
<%@page import="com.model.Admins"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body onload="startTime()">
        <% String filename = application.getRealPath("/WEB-INF/admin.xml");%>
        <jsp:useBean id="adminDAO" class="com.model.dao.AdminDAO" scope="application">
            <jsp:setProperty name="adminDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>
        <%
            Admins admins = adminDAO.getAdmins();
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Search Method
            Admin admin = admins.admin(email, password);

            if (admin != null) {
                session.setAttribute("admin", admin);
                response.sendRedirect("admin.jsp");
            } else {
                session.setAttribute("error", "Admin not found");
                response.sendRedirect("admin-login.jsp");
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
