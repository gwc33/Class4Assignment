<%-- 
    Document   : response
    Created on : Aug 25, 2014, 9:49:46 PM
    Author     : gcorcoran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Area is:</h1>
        <%
            Object obj = request.getAttribute("area");
            if(obj==null){
                out.println("Object was null");
            } else {
                out.println(obj.toString());
            }
        %>
    </body>
</html>
