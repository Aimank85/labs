<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body >
        <%
            String s = request.getParameter("string");
        %>
        <%!
            char vowels[] = {'a', 'i', 'e', 'o', 'u'};

            private int frequency(String s, char ch) {
                return (int) s.chars().filter(c -> c == ch).count();
            }

            private int spaces(String s) {
                return (int) s.strip().chars().filter(c -> c == ' ').count();
            }

            private String compressed(String s) {
                return s.replaceAll(" ", "");
            }
        %>

        <div class="vowels-wrapper">
            <table class="table table-bordered table-striped vowels-table" style="margin-top: 50px;">
                <thead class="vowel-table"><th>String</th><th>Compressed</th><th>Spaces</th></thead>
                <tr>

                    <td style="color: white;"><%= s%></td>                            
                    <td style="color: white;"><%= compressed(s)%></td>
                    <td style="color: white;"><%= spaces(s)%></td>
                </tr>     

            </table>

            <table class="table table-bordered table-striped vowels-table">
                <thead class="vowel-table"><th>Vowels</th><th>Frequency</th></thead>
                <tr>
                    <% for (int i = 0; i < 5; i++) {%>

                    <td style="color: white;"><%= vowels[i]%></td>                            
                    <td style="color: white;"><%= frequency(s, vowels[i])%></td>

                </tr>     
                <% }%>
            </table>
        </div>
    </body>
</html>