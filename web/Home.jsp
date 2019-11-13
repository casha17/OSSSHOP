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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
        <!-- Bulma Version 0.8.x-->
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.8.0/css/bulma.min.css" />
        <link rel="stylesheet" type="text/css" href="./login.css">
        <title>Home Page</title>
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
        <jsp:useBean id="user" scope="session" class="Models.User" />
        <section class="hero is-success is-fullheight">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <div class="column is-4 is-offset-4">
                        <h3 class="title has-text-black">Welcome <span><jsp:getProperty property="userName" name="user"/></span> to Online Sportswear Shopping System</h3>
                        <hr class="login-hr">
                <div class="box">
                    <form action="CatalogueController" method="get">
                            <button type="submit" class="button is-block is-info is-large is-fullwidth">Go to Catalogue <i class="fa fa-list" aria-hidden="true"></i></button>
                    </form>
                </div>
                <div class="box">
                    <form action="CartController" method="get">
                            <button type="submit" class="button is-block is-info is-large is-fullwidth">Go to Basket <i class="fa fa-shopping-basket" aria-hidden="true"></i></button>
                    </form>
                </div>
                    </div>
            </div>
        </div>
    </section>
    </body>
</html>
