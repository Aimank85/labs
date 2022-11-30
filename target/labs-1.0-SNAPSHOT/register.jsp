<%-- 
    Document   : register
    Created on : 24-Nov-2022, 11:14:05 AM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <% 
            String emailError = (String)session.getAttribute("emailError");
            String passError = (String)session.getAttribute("passError");
        %>
        <nav class="nav"> 
            <ul class="menu"> 
                <li><a href="index.jsp">home</a> </li>
                <li><a href="login.jsp">login</a></li>
                <li><a href="strings.jsp">strings</a></li>
            </ul>
        </nav>
        
        <div class="signup">
            <form method="POST" action="welcome.jsp">
                <table class="table">
                    <caption class="caption">Sign Up</caption>
                    <tr><td class="label">Name: </td><td><input class="input-text" type="text" name="name"/></td></tr>
                    <tr><td class="label">Email: </td><td><input class="input-text" type="text" name="email"  /></td></tr>
                    <tr><td class="label">Password: </td><td><input class="input-text" type="password" name="password" /></td></tr>
                    <tr><td class="label">DOB: </td><td><input class="input-text" type="date" name="dob"/></td></tr>
                    <tr>
                        <td> </td>
                        <td class="form-actions">
                            <a class="button" href="index.jsp">Cancel</a>
                            <input class="button" type="submit" value="Sign Up" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
