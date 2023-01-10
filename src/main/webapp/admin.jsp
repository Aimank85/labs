<%@page import="com.rest.client.UserServiceClient"%>
<%@page import="javax.xml.transform.stream.StreamResult"%>
<%@page import="com.model.dao.XmlTransformer"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <title>Admin View</title>
    </head>
    <body>
        <%
            String fetchMessage = (String) session.getAttribute("fetch-message");
            session.removeAttribute("fetch-message");
        %>

        <%
            session.invalidate();
            request.setAttribute("email", null);
            request.removeAttribute("email");
        %>

        <div class="wrapper">
            <div class="menu-list">
                <div class="admin-left-menu">
                    <div class="index-img"> 
                        <img class="logo" width="200px" src="css/Cubik.png" >
                    </div>
                    <div class="admin-view" style="width: 100%; display: felx; justify-content: space-around">
                        <div class="admin-view-inner" style="width: 80%; margin: auto;">
                            <%
                                String xslPath = application.getRealPath("/xsl/users.xsl");
                                XmlTransformer transformer = new XmlTransformer();
                                transformer.transform(xslPath, UserServiceClient.xmlPath(), new StreamResult(out));
                            %>
                        </div>
                    </div>
                </div>
                <div class="admin-right-menu">

                    <ul class="i-menu"> 
                        <li class="top-li i-menu-li"><a href="index.jsp">Home</a> </li>
                        <li class="i-menu-li"><a href="logout.jsp">Logout</a></li>
                        <div style="margin-top: 100px">
                            <p style="margin-left: 10px; font-size: 1.4em"><%= (fetchMessage != null) ? fetchMessage : ""%></p>
                        </div>

                        <form class="strings-input" action="fetch-user.jsp">
                            <div class="input-group">
                                <input class="search-user" type="text" name="fetch-user" class="form-control strings-input" placeholder="ID" autofocus> 
                            </div>
                        </form>
                    </ul>


                </div>
            </div>
        </div>
    </body>
</html>
