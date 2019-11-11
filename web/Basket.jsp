<%-- 
    Document   : Basket
    Created on : 06-Nov-2019, 09:41:00
    Author     : casperhasnsen
--%>

<%@page import="Models.Cart"%>
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
            Cart cart = (Cart) request.getSession().getAttribute("basket");
            List<Item> items = cart.getItems();
        %>

        <%
            for (Item item : items) {
        %>

        <form method="post" action="RemoveFromBasket">
            <td><%=item.getItemName()%></td>
            <td><%=item.getItemPrice()%></td>
            <button type="submit">Remove item</button>
            <input type="hidden" value="<%=item.getId()%>" name="id"/>
            <br>
        </form>

        <%
            }
        %>
        
        <form method="get" action="CatalogueController">
            <button type="submit">Go to Catalogue</button>
        </form>
        <form method="get" action="ConfirmationController">
            <button type="submit">Confirm basket</button>
        </form>
    </body>
</html>
