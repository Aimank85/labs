<%-- 
    Document   : welcome
    Created on : 29-Nov-2022, 2:25:12 PM
    Author     : 236333
--%>

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
    <body >
        <% 
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            
            String emailRegEx = "([a-zA-Z]+)[._-]([a-zA-Z]+)@example.com";
            String passRegEx = "[A-Z][a-z]{5,15}\\d{1,3}";
//            if(!email.matches(emailRegEx)){               
//                session.setAttribute("emailError", "Incorrect email format");
//                response.sendRedirect("register.jsp");                
//            }else if(!password.matches(passRegEx)){
//                session.setAttribute("passError", "Incorrect password format");
//                response.sendRedirect("register.jsp");                       
//            }else{
                User user = new User(name, email, password, dob);
                Users users = new Users();
                users.add(user);

                session.setAttribute("user", user);
                session.setAttribute("users", users);
//            }
        %>
        <table class="table">
            <caption>User Information</caption>
            <tr><td>Name: </td><td> <%= name %></td></tr>
            <tr><td>Email: </td><td> <%= email %></td></tr>
            <tr><td>Password: </td><td> <%= password %></td></tr>
            <tr><td>D.O.B.: </td><td> <%= dob %></td></tr>
        </table>
        <div id="clock" class="footer"></div>
    </body>
</html>
