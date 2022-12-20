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
        <jsp:include page="header.jsp" flush="true"/>
        <title>Delete</title>
    </head>
    <body>
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>

        <%
            User user = (User) session.getAttribute("user");

//            String email = (String) session.getAttribute("email");
            Users users = userDAO.getUsers();

//            User user = users.user(email);
            userDAO.delete(users, user);
//            session.invalidate();
            String emailView = request.getParameter("email");
        %>

        <div class="wrapper">
            <div class="menu-list">
                <div class="delete-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>        

                    <div class="delete-paragraph">
                        <h2 class="termination">Users account has been deleted successfully!</h2>


                    </div>
                </div>

                <div class="delete-right-menu">
                    <ul class="i-menu">                        
                        <li class="top-li i-menu-li"><a href="admin.jsp">Accounts</a> </li>
                    </ul>
                </div>        

            </div>
        </div>
    </body>
</html>
