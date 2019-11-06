<%-- 
    Document   : Admin
    Created on : 06-Nov-2019, 09:33:54
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
      <h1>Admin page</h1>
        <jsp:useBean id="user" scope="session" class="Models.User" />
       
        
        <div class="box">
    
   <p class="center">Username <span><jsp:getProperty property="userName" name="user"/></span> </p>  
    
    </div>
    </div>
        
  
    </body>
</html>
