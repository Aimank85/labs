<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <%
            String s = request.getParameter("string");
        %>
        <%!
            private int frequency(String s) {
                return (int) s.chars().filter(c -> "aiueoAIOUE".contains("" + (char) c)).count();
            }

            private int spaces(String s) {
                return (int) s.strip().chars().filter(c -> c == ' ').count();
            }

            private String compressed(String s) {
                return s.replaceAll(" ", "");
            }
        %>
        <table class="table table-bordered table-striped vowels-table">
            <thead class="table-dark"><th>Compressed String</th><th>Vowels</th><th>Spaces</th></thead>
        <tr>
            <td><%= compressed(s)%></td>                            
            <td><%= frequency(s)%></td>
            <td><%= spaces(s)%></td>



        </tr>     
    </table>
</body>
</html>