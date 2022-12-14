<%@page import="javax.xml.transform.stream.StreamResult"%>
<%@page import="com.model.dao.XmlTransformer"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View</title>
        <link rel="stylesheet" href="css/sytle2.css"/>
    </head>
    <body>
        <%
            session.invalidate();
            request.setAttribute("email", null);
            request.removeAttribute("email");
        %>
        <% String filename = application.getRealPath("/WEB-INF/users.xml");%>
        <% String xslPath = application.getRealPath("/xsl/users.xsl");%>
        <jsp:useBean id="userDAO" class="com.model.dao.UserDAO" scope="application">
            <jsp:setProperty name="userDAO" property="filePath" value="<%=filename%>"/>
        </jsp:useBean>

        <div class="wrapper">
            <div class="menu-list">
                <div class="admin-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>
                    <div class="admin-view" style="width: 100%; display: felx; justify-content: space-around">
                        <div class="admin-view-inner" style="width: 80%; margin: auto;">
                            <%
                                Users users = userDAO.getUsers();
                                XmlTransformer transformer = new XmlTransformer();
                                transformer.transform(xslPath, users, new StreamResult(out));
                            %>
                        </div>

                    </div>
                </div>
                <div class="admin-right-menu">
                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="index.jsp">Home</a> </li>
                        <li class="i-menu-li"><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>

            </div>

        </div>


    </body>
</html>
