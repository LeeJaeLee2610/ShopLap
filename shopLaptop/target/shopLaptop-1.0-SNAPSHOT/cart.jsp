<%-- 
    Document   : cart
    Created on : Apr 28, 2022, 10:15:27 PM
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

        <div class="cart">
            <div class="container">
                <div class="table">
                    <div class="head">
                        <div>STT</div>
                        <div>Tên sản phẩm</div>
                        <div>Giá</div>
                        <div>Số lượng</div>
                        <div>Tổng</div>
                        <div>Xóa</div>
                    </div>
                    <div class="about">
                        <div class="tt">1</div>
                        <div class="ten">
                            <div><img src="images/demo.webp" alt=""></div>
                            <div><a href="#"><p>[Mới 100%] Asus ROG Strix G15 G513IH-HN015W (Ryzen 7-4800H, 8GB, 512GB, GTX 1650, 15.6'' FHD 144Hz)</p></a></div>
                        </div>
                        <div class="gia">22490000</div>
                        <div class="sl">
                            <span><a href="#">-</a></span>
                            <p>100</p>
                            <span><a href="#">+</a></span>
                        </div>
                        <div>
                            <h5>0 VND</h5>
                        </div>
                        <div>
                            <a href="#"><img src="images/icon_cart_del.png" alt=""></a>
                        </div>
                    </div>
                    <div class="about">
                        <div class="tt">1</div>
                        <div class="ten">
                            <div><img src="images/demo.webp" alt=""></div>
                            <div><a href="#"><p>[Mới 100%] Asus ROG Strix G15 G513IH-HN015W (Ryzen 7-4800H, 8GB, 512GB, GTX 1650, 15.6'' FHD 144Hz)</p></a></div>
                        </div>
                        <div>22.490.000đ</div>
                        <div class="sl">
                            <span><a href="#">-</a></span>
                            <p>100</p>
                            <span><a href="#">+</a></span>
                        </div>
                        <div>
                            <h5>0 VND</h5>
                        </div>
                        <div>
                            <a href="#"><img src="images/icon_cart_del.png" alt=""></a>
                        </div>
                    </div>
                    <div class="about">
                        <div class="tt">1</div>
                        <div class="ten">
                            <div><img src="images/demo.webp" alt=""></div>
                            <div><a href="#"><p>[Mới 100%] Asus ROG Strix G15 G513IH-HN015W (Ryzen 7-4800H, 8GB, 512GB, GTX 1650, 15.6'' FHD 144Hz)</p></a></div>
                        </div>
                        <div>22.490.000đ</div>
                        <div class="sl">
                            <span><a href="#">-</a></span>
                            <p>100</p>
                            <span><a href="#">+</a></span>
                        </div>
                        <div>
                            <h5>0 VND</h5>
                        </div>
                        <div>
                            <a href="#"><img src="images/icon_cart_del.png" alt=""></a>
                        </div>
                    </div>
                    <div class="total">
                        <div><strong>Tổng cộng: </strong>1000000000 VND</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="sangphai">
                <button class="tieptuc"><a href="#">Tiếp tục mua hàng</a></button>
                <button class="muahang">Tiến hành mua hàng</button>
            </div>
        </div>

        <form action="" id="form">
            <div class="thongtinkhachhang hide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="phan1">
                                <h5>1. Khách hàng khai báo thông tin</h5>
                                <div>
                                    <strong>Thông tin người mua</strong>
                                    <p>Những phần đánh dấu (*) là bắt buộc</p>
                                    <div>
                                        <label for="taikhoan">Tài khoản*</label>
                                        <input type="text" id="taikhoan" name="username" placeholder="Tài khoản"><br>
                                        <span class="form-message">Họ tên không được để trống</span>
                                    </div>
                                    <div>
                                        <label for="matkhau">Mật khẩu*</label>
                                        <input type="password"id="matkhau" name="password" placeholder="Mật khẩu"><br>
                                        <span class="form-message">Sai</span>
                                    </div>
                                    <div>
                                        <label for="hoten">Họ tên*</label>
                                        <input type="text" id="hoten" name="hoten" placeholder="Họ tên"><br>
                                        <span class="form-message">Sai</span>
                                    </div>
                                    <div>
                                        <label for="phone">Điện thoại*</label>
                                        <input type="text" id="phone" name="phone" placeholder="Điện thoại"><br>
                                        <span class="form-message">Sai</span>
                                    </div> 
                                    <div>
                                        <label for="diachi">Địa chỉ*</label>
                                        <input type="text" id="diachi" name="diachi" placeholder="Địa chỉ"><br>
                                        <span class="form-message">Sai</span>
                                    </div>
                                    <div>
                                        <label for="email">Email</label>
                                        <input type="email" id="email" name="email" placeholder="Email"><br>
                                        <span class="form-message">Sai</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="phan2">
                                <h5>2. Ghi chú cho đơn hàng</h5><br>
                                <textarea name="ghichu" id="ghichu" rows="10" placeholder="Ghi chú"></textarea>
                            </div>
                            <div class="phan3">
                                <button><a href="#">Chốt đơn</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

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
                                    <h4><a href="#">Tên sản phẩm</a></h4>
                                    <p>Giá</p>
                                </div>
                                <button class="btnP"><a href="#">Add to cart</a></button>
                            </div>
                        </div>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="images/demo.webp" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="#">Tên sản phẩm</a></h4>
                                    <p>Giá</p>
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
