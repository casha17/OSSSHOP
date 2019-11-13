<%-- 
    Document   : Complete
    Created on : 11-Nov-2019, 13:27:16
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
        <title>Order Complete Page Page</title>
    </head>
    <body>
     <section class="hero is-success is-fullheight">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <div class="column is-4 is-offset-4">
                        <h3 class="title has-text-black">Your order is already completed</h3>
                        <hr class="login-hr">
                        <p class="subtitle has-text-black">Click button below to make new order</p>
                <div class="box">
                    <form action="OrderCompleteController" method="get">
                            <button type="submit" class="button is-block is-info is-large is-fullwidth">New Order <i class="fa fa-shopping-basket" aria-hidden="true"></i></button>
                    </form>
                </div>
                    </div>
            </div>
        </div>
    </section>
    </body>
</html>
