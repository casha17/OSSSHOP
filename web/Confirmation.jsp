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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"> -->
        <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
        <!-- Bulma Version 0.8.x-->
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.8.0/css/bulma.min.css" />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
		integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="./admin.css">
        <title>Confirmation Page</title>
    </head>
    <body>
        <section class="hero is-fullheight">
        <div class="hero-body">
            <div class="container has-text-centered">
                <h3 class="title has-text-black">Order Details</h3>
                        <hr class="login-hr">
                    <div class="column is-4 is-offset-4">
                        <div class="box">
                        <div class="card-table">
                            <div class="content">
                                
                                        

                                        <form method="post" action="AddToBasket">
                                            <table><tbody>
                                                    <tr style="font-weight: bold;"><td>Item Name</td><td>Item Price</td></tr>
                                                     <%

                                                        Cart items = (Cart) request.getSession().getAttribute("basket");
                                                    %>

                                                    <%
                                                        for (Item item : items.getItems()) {
                                                      %>
                                            <tr>
                                            <td><%=item.getItemName()%></td>
                                            <td><%=item.getItemPrice()%></td>
                                            </tr>
                                            <%
                                            }
                                            %>
                                            </tbody></table>
                                            <br>
                                        </form>



                                        
                    </div>
                    </div>
                        </div>
                    <div class="box has-text-left">
                        <h2 class="title">Your details</h2>
                            <form method="post" action="ConfirmationController">
                             <div class="field">
                             <label class="label">Name</label>
                             <input type="text" name="name" class="input is-small" />
                             </div>
                             <div class="field">
                                 <label class="label">Address</label>
                            <input type="text>" name="address" class="input is-small" />
                             </div>
                             <div class="field">
                            <label class="label">Telephone</label>
                            <input type="text>" name="telephone" class="input is-small" />
                             </div>
                             <div class="control">
                            <button type="submit" class="button is-link is-fullwidth has-text-weight-medium is-medium">Confirm Order</button>
                             </div>
                            </form>
                    </div>
                    </div>
                </div>
            </div>
    </section>
    </body>
</html>
