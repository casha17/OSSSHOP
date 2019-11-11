<%-- 
    Document   : Confirmation
    Created on : 11-Nov-2019, 13:18:22
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
        <h1>Order details</h1>
         <%

            Cart items = (Cart) request.getSession().getAttribute("basket");
        %>

        <%
            for (Item item : items.getItems()) {
        %>

        <form method="post" action="AddToBasket">
            <td><%=item.getItemName()%></td>
            <td><%=item.getItemPrice()%></td>
            
            
            <br>
        </form>



        <%
            }
        %>
        
        
        <h2>Input you details</h2>
        <form method="post" action="ConfirmationController"
        <p>Name</p>
        <input type="text>" name="name" />
        <p>Address</p>
        <input type="text>" name="address" />
        <p>Telephone</p>
        <input type="text>" name="yelephone" />
        <button type="submit" >Confirm Order</button>
    </body>
</html>
