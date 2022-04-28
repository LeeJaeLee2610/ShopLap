<%-- 
    Document   : detail
    Created on : Apr 28, 2022, 10:29:23 PM
    Author     : LeeJaeLee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

        <div class="pname">
            <div class="container">
                <div class="row">
                    <h3>Tên sản phẩm</h3>
                </div>
            </div>
        </div>

        <div class="detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="imageP">
                            <img src="images/demo.webp" alt="">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="tittle-description">
                            <div class="price">
                                <h4>Giá</h4>
                                <p><strong>Bảo hành:</strong> 12 tháng</p>
                                <p><strong>Tình trạng:</strong> Còn hàng</p>
                            </div>
                            <div class="title-des">
                                <div class="tit">Máy tính của hãng Lenovo</div>
                                <div class="des">
                                    <strong>Mô tả chi tiết:</strong>
                                    <p>
                                        Là 1 laptop gaming với cấu hình kinh khủng vcl có khả năng cân nhiều các loại game chiến vcl Mà thế đéo nào lại xuyên qua bên kia dc hay v
                                    </p>
                                </div>
                            </div>
                            <div class="btn-add">
                                <button><a href="#">Mua hàng</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thongso">
                            <div class="hang">
                                <div>CPU</div>
                                <div>Core i5-1135G7 (4 nhân 8 luồng), Turbo 4.2 GHz, 8MB Cache</div>
                            </div>
                            <div class="hang">
                                <div>Card</div>
                                <div>Core i5-1135G7 (4 nhân 8 luồng), Turbo 4.2 GHz, 8MB Cache</div>
                            </div>
                            <div class="hang">
                                <div>CPU</div>
                                <div>Core i5-1135G7 (4 nhân 8 luồng), Turbo 4.2 GHz, 8MB Cache</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp2"><h1>Các sản phẩm khác</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="images/demo.webp" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">Ten san pham</a></h4>
                                    <p>Gia san pham</p>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
            
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
