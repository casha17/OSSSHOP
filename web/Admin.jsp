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
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.8.0/css/bulma.min.css" />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
		integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="./admin.css">
        <title>Admin Page</title>
    </head>
  <body>
      <!-- START NAV -->
	<nav class="navbar">
		<div class="container">
			<div class="navbar-brand">
                            <p class="navbar-item">OSSSHOP Admin Page</p>
			</div>
			<div id="navbarMenu" class="navbar-menu">
				<div class="navbar-end">
					<a class="navbar-item" href="./index.html">Logout</a>
				</div>
			</div>
		</div>
	</nav>
	<!-- END NAV -->    
        <jsp:useBean id="user" scope="session" class="Models.User" />
         <jsp:useBean id="message" scope="session" class="Models.Message" />
   <section class="hero is-fullheight">
		<div class="hero-body">
			<div class="container has-text-centered">
				<div class="columns is-8 is-variable ">
					<div class="column is-one-third has-text-left">
                                            <div class="box">
                                            <h2 class="title">Product details</h2>
                                            <form method="post" action="AddItemController">
						<div class="field">
							<label class="label">Item Name</label>
							<div class="control">
								<input class="input is-medium" type="text" name="itemName">
							</div>
						</div>
						<div class="field">
							<label class="label">Item Price</label>
							<div class="control">
								<input class="input is-medium" type="text" name="itemPrice">
							</div>
						</div>
						<div class="control">
							<button type="submit" class="button is-link is-fullwidth has-text-weight-medium is-medium">Add Item</button>
						</div>
                                            </form>
                                            </div>
                                            </div>
                                        <div class="column is-two-thirds has-text-left">
                                 <div class="card-table">
                                <div class="content">
                                    <%
                                        List<Item> items = (List) request.getAttribute("items");

                                        for (Item item : items ) {
                                            %>
                                            <form method="post" action="DeleteItemController">
                                            <table class="table is-fullwidth is-striped">
                                                <tbody>
                                                    <tr>
                                                     <td width="5%"><i class="fa fa-usd"></i></td>
                                                     <td width="20%">
                                                     <%= item.getItemPrice()%>
                                                     </td>
                                                     <td>
                                                     <%= item.getItemName()%>
                                                     </td>
                                                     <td class="level-right">
                                                         <button class="button is-small is-danger">Delete</button>
                                                     </td>
                                                    </tr>

                                            </tbody>                                          

                                            </table>
                                                     <input type="hidden" value="<%= item.getId()%>" name="id"/>
                                            </form>
                                        <%
                                        }
                                    %>
                                </div>
                            </div>
                                </div>
			</div>
			</div>
		</div>
	</section>
    </body>
</html>
