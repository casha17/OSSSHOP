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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"> -->
        <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
        <!-- Bulma Version 0.8.x-->
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.8.0/css/bulma.min.css" />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
		integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="./admin.css">
        <title>Catalogue Page</title>
    </head>
    <body>
        <!-- START NAV -->
	<nav class="navbar">
		<div class="container">
			<div class="navbar-brand">
                            <p class="navbar-item">OSSSHOP</p>
			</div>
			<div id="navbarMenu" class="navbar-menu">
				<div class="navbar-end">
					<a class="navbar-item" href="./index.html">Logout</a>
				</div>
			</div>
		</div>
	</nav>
	<!-- END NAV --> 
    <section class="hero is-fullheight">
        <div class="hero-body">
            <div class="container has-text-centered">
                <h3 class="title has-text-black">Products Catalogue</h3>
                        <hr class="login-hr">
                        <p class="subtitle has-text-black">Add product to basket</p>
                    <div class="column">
                        <div class="card-table">
                            <div class="content">
                                 <%

                                    List<Item> items = (List) request.getAttribute("items");
                                %>

                                <%
                                    for (Item item : items) {
                                %>

                                <form method="post" action="AddToBasket">
                                    <table class="table is-fullwidth is-striped">
                                        <tbody><tr>
                                    <td width="5%"><i class="fa fa-usd"></i></td>
                                    <td width="20%"><%=item.getItemPrice()%></td>
                                    <td><%=item.getItemName()%></td>
                                    <td class="level-right"><button type="submit" class="button is-small is-info">Add to basket</button></td>
                                    <input type="hidden" value="<%=item.getId()%>" name="id"/>
                                        </tr></tbody>
                                    </table>
                                </form>



                                <%
                                    }
                                %>
                                <br>
        <form method="get" action="CartController">
            <button type="submit" class="button is-medium is-info">Go to Basket</button>
        </form>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
    </section>   
    </body>
</html>
