<%-- 
    Document   : Catalogue
    Created on : 06-Nov-2019, 19:22:56
    Author     : setero
--%>

<%@page import="Models.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



        <%

            List<Item> items = (List) request.getAttribute("items");
        %>

        <%
            for (Item item : items) {
        %>

        <form method="post" action="AddToBasket">
            <td><%=item.getItemName()%></td>
            <td><%=item.getItemPrice()%></td>
            <button type="submit">Add to basket</button>
            <input type="hidden" value="<%=item.getId()%>" name="id"/>
            <br>
        </form>



        <%
            }
        %>

        <form method="get" action="CartController">
            <button type="submit">Go to Basket</button>
        </form>
        
        
    </body>
</html>
