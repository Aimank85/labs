<%@page import="com.rest.client.UserServiceClient"%>
<%@page import="javax.xml.transform.stream.StreamResult"%>
<%@page import="com.model.dao.XmlTransformer"%>
<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style5.css"/>
        <script type="text/javascript" src="js/index.js"></script>

        <title>Fetch User</title>
    </head>
    <body onload="startTime()">
        <%
            int ID = Integer.parseInt(request.getParameter("fetch-user"));
            String xslPath = application.getRealPath("/xsl/users.xsl");
            String xmlPath = UserServiceClient.fetchUser(ID);
            XmlTransformer transformer = new XmlTransformer();

            if (xmlPath.equals("Invalid API request")) {
                session.setAttribute("fetch-message", "User not found");
                response.sendRedirect("admin.jsp");
            } else {
        %>
        <div class="wrapper">
            <div class="menu-list">
                <div class="index-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="150px" src="css/Cubik.png" >
                    </div>
                    <div class="signup">
                        <form method="POST" action="#">
                            <table class="input-table" style="a{text-decoration: none};">
                                <%                                        
                                        transformer.transform(xslPath, xmlPath, new StreamResult(out));
                                    }
                                %>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="index-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a class="button" href="admin.jsp">Accounts</a></li>
                        <li class="top-li i-menu-li"><a class="button" href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="clock" class="footer"></div>
        </div>
    </body>
</html>