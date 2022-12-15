<%-- 
    Document   : welcome
    Created on : 29-Nov-2022, 2:25:12 PM
    Author     : 236333
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <title>Welcome</title>
    </head>
    <body onload="startTime()">
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>
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
                Users users = userDAO.getUsers();

                User userXML = users.user(user.getEmail());

//                session.setAttribute("error", (userXML == null) ? "" : "User already exists");
                if (userXML != null) {
                    session.setAttribute("error", "User already exists");
                    response.sendRedirect("register.jsp");
                } else {
                    users.add(user);
                    userDAO.save(users, filename);
                    session.setAttribute("user", user);
                }
            }
        %>

        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="150px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="welcome.jsp">
                            <table class="input-table">
                            <!--<table class="table">-->
                                <tr><td><h2>Information</h2></td></tr>
                                <tr><td>Name: </td><td> <%= name%></td></tr>
                                <tr><td>Email: </td><td> <%= email%></td></tr>
                                <tr><td>Password: </td><td> <%= password%></td></tr>
                                <tr><td>D.O.B.: </td><td> <%= dob%></td></tr>
                            </table>

                        </form>
                    </div>
                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 

                        <li class="top-li i-menu-li"><a href="main.jsp">Main</a> </li>
                        <li class="i-menu-li"><a href="logout.jsp">logout</a></li>

                    </ul>
                </div>



            </div>

            <div id="clock" class="footer"></div>
        </div>


       

    </body>
</html>
