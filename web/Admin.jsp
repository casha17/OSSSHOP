<%-- 
    Document   : Admin
    Created on : 06-Nov-2019, 09:33:54
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
      <h1>Admin page</h1>
        <jsp:useBean id="user" scope="session" class="Models.User" />
         <jsp:useBean id="message" scope="session" class="Models.Message" />
        
        <div class="box">
    
   <p class="center">Username <span><jsp:getProperty property="userName" name="user"/></span> </p>  
    
    </div>
    
   
   <form method="post" action="AddItemController">
       <p>Name of item</p>
       <input type="text" name="itemName"/>
       <p>Price of item</p>
       <input type="text" name="itemPrice"/>
       
       <button type="submit">Add Item</button>
   </form>
   
   <%
       List<Item> items = (List) request.getAttribute("items");
     
       for (Item item : items ) {
           %>
           <table>
               <thead>
               <th>
                   <p>Item name</p>
               </th>
               <th>
                   Price
               </th>
               <th>
                   Delete
               </th>
               </thead>
               <form method="post" action="DeleteItemController">
               <tbody>
               <td>
           <p><%= item.getItemName()%></p>
           </td>
           <td>
           <p><%= item.getItemPrice()%></p>
           </td>
           <td>
               <button>Delete</button>
           </td>
           </tbody>
           <input type="hidden" value="<%= item.getId()%>" name="id"/>
           </form>
           
           </table>
       <%
       }
   %>
   
   
       

    
        
        
  
    </body>
</html>
