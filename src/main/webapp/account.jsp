<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <link rel="stylesheet" href="css/styles.css"/>
        <script type="text/javascript" src="js/index.js"></script>
    </head>
    <body onload="startTime()">
        <%!
            User user;
        %>
        <%
            String submitted = request.getParameter("submitted");

            if (submitted != null && submitted.equals("submitted")) {
                int ID = Integer.parseInt(request.getParameter("ID"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String dob = request.getParameter("dob");
                user = (User) session.getAttribute("user");
                user.update(ID, name, email, password, dob);
                session.setAttribute("user", user);
            } else {
                user = (User) session.getAttribute("user");
            }
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
                <img class="logo" width="150px" src="css/logo.png" >
            </nav>
            
            <div class="signup">
                <form method="POST" action="account.jsp">
                    <table class="input-table">
                        <caption class="caption">Account <br> <span class="succes-message"><%= (submitted != null) ? "Updated is Successful" : ""%></span></caption>
                        <tr><td>ID: </td><td><input type="text" name="ID" value="${user.ID}" readonly="true" /></td></tr>
                        <tr><td>Name: </td><td><input type="text" name="name" value="${user.name}" /></td></tr>
                        <tr><td>Email: </td><td><input type="text" name="email" value="${user.email}" readonly="true"/></td></tr>
                        <tr><td>Password: </td><td><input type="password" name="password" value="${user.password}" /></td></tr>
                        <tr><td>DOB: </td><td><input type="date" name="dob" value="<%= user.getDOB()%>"/></td></tr>
                        <tr><input type="hidden" name="submitted" value="submitted"></tr>
                        <tr>
                            <td> </td>
                            <td class="form-actions">
                                <a class="button" href="main.jsp">Main</a>
                                <input class="button" type="submit" value="Update" />
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div id="clock" class="footer"></div>
    </body>
</html>