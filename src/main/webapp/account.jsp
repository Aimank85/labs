<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <link rel="stylesheet" href="css/style1.css"/>
        <script type="text/javascript" src="js/index.js"></script>
    </head>
    <body onload="startTime()">
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>
        <%
            String submitted = request.getParameter("submitted");

            Users users = userDAO.getUsers();
            User user = (User) session.getAttribute("user");

            // Retrieving data from XML
            int ID = user.getID();
            String name = user.getName();
            String email = user.getEmail();
            String password = user.getPassword();
            String dob = user.getDOB();

            if (submitted != null && submitted.equals("submitted")) {
                users = userDAO.getUsers();

                user = (User) session.getAttribute("user");

                // Retrieving data from session
                name = request.getParameter("name");
                email = request.getParameter("email");
                password = request.getParameter("password");
                dob = request.getParameter("dob");
                user.update(ID, name, email, password, dob);

                userDAO.update(users, user);

                session.setAttribute("user", user);

            } else {
                users = userDAO.getUsers();
                ID = user.getID();
                name = user.getName();
                email = user.getEmail();
                password = user.getPassword();
                dob = user.getDOB();
            }
        %>
        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="150px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="account.jsp">
                            <table class="input-table">
                                <caption class="caption">Account <br> <span class="succes-message"><%= (submitted != null) ? "Updated is Successful" : ""%></span></caption>
                                <tr><td>ID: </td><td><input type="text" name="ID" value="<%= ID%>" readonly="true" /></td></tr>
                                <tr><td>Name: </td><td><input type="text" name="name" value="<%= name%>" /></td></tr>
                                <tr><td>Email: </td><td><input type="text" name="email" value="<%= email%>" readonly="true"/></td></tr>
                                <tr><td>Password: </td><td><input type="password" name="password" value="<%= password%>" /></td></tr>
                                <tr><td>DOB: </td><td><input type="date" name="dob" value="<%= dob%>"/></td></tr>
                                <tr><input type="hidden" name="submitted" value="submitted"></tr>
                                <tr>
                                    <td> </td>
                                    <td class="form-actions">
                                        <a class="button" href="main.jsp">Main</a>
                                        <input class="button" type="submit" value="Update" />
                                        <a class="button" href="delete.jsp">Delete</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <!--<li class="top-li i-menu-li"><a href="main.jsp">Main</a> </li>-->
                        <!--<li class="i-menu-li"><a href="login.jsp">Login</a></li>-->
                        <!--<li class="i-menu-li"><a href="delete.jsp">Delete</a></li>-->
<!--                        <input class="button" type="submit" value="Update" />
                        <a class="button" href="main.jsp">Main</a>
                                        
                                        <a class="button" href="delete.jsp">Delete</a>-->
                    </ul>
                </div>



            </div>

            <div id="clock" class="footer"></div>
        </div>

        <!--            <nav class="nav"> 
                        <img class="logo" width="100px" height="45px" src="css/logo.png" >
                    </nav>
        
                    <div class="signup">
                        <form method="POST" action="account.jsp">
                            <table class="input-table">
                                <caption class="caption">Account <br> <span class="succes-message"><%= (submitted != null) ? "Updated is Successful" : ""%></span></caption>
                                <tr><td>ID: </td><td><input type="text" name="ID" value="<%= ID%>" readonly="true" /></td></tr>
                                <tr><td>Name: </td><td><input type="text" name="name" value="<%= name%>" /></td></tr>
                                <tr><td>Email: </td><td><input type="text" name="email" value="<%= email%>" readonly="true"/></td></tr>
                                <tr><td>Password: </td><td><input type="password" name="password" value="<%= password%>" /></td></tr>
                                <tr><td>DOB: </td><td><input type="date" name="dob" value="<%= dob%>"/></td></tr>
                                <tr><input type="hidden" name="submitted" value="submitted"></tr>
                                <tr>
                                    <td> </td>
                                    <td class="form-actions">
                                        <a class="button" href="main.jsp">Main</a>
                                        <input class="button" type="submit" value="Update" />
                                        <a class="button" href="delete.jsp">Delete</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                
                <div id="clock" class="footer"></div>-->
    </body>
</html>