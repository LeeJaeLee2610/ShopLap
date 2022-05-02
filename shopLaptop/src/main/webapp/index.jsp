<%-- 
    Document   : index
    Created on : Apr 17, 2022, 4:58:24 PM
    Author     : LeeJaeLee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LapDongAnh</title>
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

        <div class="container">
            <div class="tmp"><h1>Các sản phẩm mới</h1></div>
        </div>

        <div class="slide-show">
            <div class="container">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="images/h4-slide.png" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Ảnh 1</h5>
                                <p>Ảnh cực đẹp</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/h4-slide4.png" alt="Second slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Ảnh 2</h5>
                                <p>Ảnh cực đẹp</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/h4-slide.png" alt="Third slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Ảnh 3</h5>
                                <p>Ảnh cực đẹp</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="tmp1"><h1>Các nhãn hàng nổi tiếng</h1></div>
        </div>

        <div class="logo-cate">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="lenovo">
                            <img src="images/Lenovo_logo_2015.svg.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="lenovo">
                            <img src="images/1200px-MacBook_logo.svg.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="lenovo">
                            <img src="images/png-clipart-acer-logo-laptop-acer-aspire-computer-logo-lenovo-logo-electronics-text.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="lenovo">
                            <img src="images/AsusTek-black-logo.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp1"><h1>Các sản phẩm mới</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <c:forEach items="${listNewP}" var='o'>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">${o.pname}</a></h4>
                                    <p>Giá: ${o.priceChu}đ</p>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp1"><h1>Bán chạy</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <c:forEach items='${listSellingP}' var='o'>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">${o.pname}</a></h4>
                                    <div class="dacdiem">
                                        <p>Giá: ${o.priceChu}đ</p>
                                        <p>Đã bán: ${o.daban}</p>
                                    </div>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp1"><h1>Số lượng có hạn</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <c:forEach items="${listLimitedP}" var='o'>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">${o.pname}</a></h4>
                                    <div class="dacdiem">
                                        <p>Giá: ${o.priceChu}đ</p>
                                        <p>Còn lại: ${o.slc}</p>
                                    </div>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp1"><h1>Giảm giá</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <c:forEach items="${listDiscountP}" var='o'>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">${o.pname}</a></h4>
                                    <div class="dacdiem">
                                        <p class="gachngang">Giá: ${o.priceChu}đ</p>
                                        <p>Giảm: ${o.discount}%</p>
                                    </div>
                                    <p class="giamcon">Chỉ còn: ${o.giamconChu} VND</p>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                    </c:forEach>
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
        <<script src="js/app.js"></script>
    </body>
</html>
