<%-- 
    Document   : Catalogue
    Created on : 06-Nov-2019, 19:22:56
    Author     : setero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:forEach var = "i" begin = "1" end = "5">
        Item <c:out value = "${i}"/><p>
    </c:forEach>
</body>
</html>
