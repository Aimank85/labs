<%-- 
    Document   : strings
    Created on : 30-Nov-2022, 11:51:57 AM
    Author     : 236333
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Strings</title>
        <script type="text/javascript" src="js/index.js"></script>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <nav class="nav string-nav">
            <ul class="menu strings-menu">
                <li><a href="index.jsp">home</a> </li>
            </ul>



           <form class="strings-input" action="strings.jsp">
                <div class="input-group">
                    <input id="string" type="text" name="string" class="form-control strings-input" placeholder="String" autofocus>                        
                </div>
            </form>
        </nav>
        
        <div class="container-fluid vowels-table">
            <div class="row">
                <div class="col-xl-12">
                    <jsp:include page="vowels.jsp" flush="true"/>
                </div>
            </div>
        </div>
    </body>
</html>