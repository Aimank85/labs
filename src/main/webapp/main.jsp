<%--
    Document   : main
    Created on : Nov 30, 2022, 2:44:02 PM
    Author     : 236351
--%>

<%@page import="com.model.Users"%>
<%@page import="java.util.List"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <title>Main</title>
    </head>
    <body onload="startTime()" >
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>
        
        <%
            User user = (User) session.getAttribute("user");

            Users users = userDAO.getUsers();
           
            userDAO.update(users, user);
            
            session.setAttribute("user", user);

        %>
    
        
        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="150px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="welcome.jsp">
                            <% if (user != null) {%>
                                <table class="table">
                                    <tr><td><h2>Information</h2></td></tr>
                                    <tr><td>Name: </td><td> <%= user.getName()%></td></tr>
                                    <tr><td>Email: </td><td> <%= user.getEmail()%></td></tr>
                                    <tr><td>Password: </td><td> <%= user.getPassword()%></td></tr>
                                    <tr><td>D.O.B.: </td><td> <%= user.getDOB()%></td></tr>
                                </table>
                                <%} else {%>
                                <p>User does not exist</p>
                                <%}%>

                        </form>
                    </div>
                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        
                        <li class="top-li i-menu-li"><a href="account.jsp">Account</a> </li>
                        <li class="i-menu-li"><a href="logout.jsp">Logout</a></li>

                    </ul>
                </div>



            </div>

            <div id="clock" class="footer"></div>
        </div>
            
<!--            <nav class="nav"> 
                <img class="logo" width="200px" src="css/Cubik.png" >
                <ul class="menu"> 
                    <li><a href="account.jsp">account</a> </li>
                    <li><a href="logout.jsp">logout</a></li>
                </ul>
            </nav>
            
            <div class="inner-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4">
                                
                        </div>
                    </div>            
                </div>
                <div id="clock" class="footer"></div>
            </div>-->
      
    </body>
</html>