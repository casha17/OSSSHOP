<%-- 
    Document   : Basket
    Created on : 06-Nov-2019, 09:41:00
    Author     : casperhasnsen
--%>

<%@page import="Models.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Basket</h2>
        
        <%

            List<Item> items = (List) request.getSession().getAttribute("basket");
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
    </body>
</html>
