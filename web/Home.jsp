<%-- 
    Document   : Home
    Created on : 06-Nov-2019, 09:27:38
    Author     : casperhasnsen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="user" scope="session" class="Models.User" />
       
        
        <div class="box">
    
   <p class="center">Username <span><jsp:getProperty property="userName" name="user"/></span> </p>  
    
    </div>
   <form method="get" action="CatalogueController"/>
   <button type="submit">See Catalogue</button>
    </div>
    
    <form method="get" action="CartController">
        <button type="submit">Go to Basket</button>
    </form>
    </body>
</html>
