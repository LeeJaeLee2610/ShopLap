<%-- 
    Document   : phukien_product
    Created on : Apr 23, 2022, 1:42:13 PM
    Author     : LeeJaeLee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
    </head>
    <body>
        <!--header-->
        <jsp:include page="headerShop.jsp"></jsp:include>
        <!-- header end -->
        <!--logo-->
        <jsp:include page="logo_cart.jsp"></jsp:include>

        <!-- Menu Bar -->
        <jsp:include page="menubar.jsp"></jsp:include>

        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="category">
                            <h3>Hãng sản xuất</h3>
                            <h5><a href="#">Lenovo</a></h5>
                            <h5><a href="#">Macbook</a></h5>
                            <h5><a href="#">Dell</a></h5>
                            <h5><a href="#">Acer</a></h5>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image">
                                        <img src="images/demo.webp" alt="">
                                    </div>
                                    <div class="info">
                                        <h4><a href="#">Ten san pham</a></h4>
                                        <p>Gia san pham</p>
                                    </div>
                                    <button class="btn"><a href="#">Add to cart</a></button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image">
                                        <img src="images/demo.webp" alt="">
                                    </div>
                                    <div class="info">
                                        <h4><a href="#">Ten san pham</a></h4>
                                        <p>Gia san pham</p>
                                    </div>
                                    <button class="btn"><a href="#">Add to cart</a></button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image">
                                        <img src="images/demo.webp" alt="">
                                    </div>
                                    <div class="info">
                                        <h4><a href="#">Ten san pham</a></h4>
                                        <p>Gia san pham</p>
                                    </div>
                                    <button class="btn"><a href="#">Add to cart</a></button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image">
                                        <img src="images/demo.webp" alt="">
                                    </div>
                                    <div class="info">
                                        <h4><a href="#">Ten san pham</a></h4>
                                        <p>Gia san pham</p>
                                    </div>
                                    <button class="btn"><a href="#">Add to cart</a></button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product">
                                    <div class="image">
                                        <img src="images/demo.webp" alt="">
                                    </div>
                                    <div class="info">
                                        <h4><a href="#">Ten san pham</a></h4>
                                        <p>Gia san pham</p>
                                    </div>
                                    <button class="btn"><a href="#">Add to cart</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page">
            <div class="container">
                <div class="row">
                    <div class="pagination">
                        <a href="#">&laquo;</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">&raquo;</a>
                      </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
