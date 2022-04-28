<%-- 
    Document   : headerShop
    Created on : Apr 28, 2022, 9:49:01 PM
    Author     : LeeJaeLee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="user-menu">
                            <ul>
                                <li><a href="#"><i class="fa-solid fa-laptop"></i>Home</a></li>
                                <li><a href="#"><i class="fa fa-user"></i>Account</a></li>
                                <li><a href="#"><i class="fa fa-user"></i>Product Manager</a></li>
                                <li><a href="login.jsp"><i class="fa fa-user"></i>Login</a></li>
                                <li><a href="#"><i class="fa fa-user"></i>Logout</a></li>
                                <li><a href="#"><i class="fa fa-user"></i>Checkout</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <form action="" class="search">
                            <input type="text" placeholder="Search..." name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                          </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
