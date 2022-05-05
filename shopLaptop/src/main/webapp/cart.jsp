<%-- 
    Document   : cart
    Created on : Apr 28, 2022, 10:15:27 PM
    Author     : LeeJaeLee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <form action="QuantityController">
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
                    <c:forEach items="${listCart}" var="o">
                        <div class="about">
                            <div class="tt">1</div>
                            <div class="ten">
                                <div><img src="${o.image}" alt=""></div>
                                <div><a href="DetailController?pid=${o.pid}"><p>${o.pname}</p></a></div>
                            </div>
                            <div class="gia">${o.giamconChu}đ</div>
                            <div class="sl">
                                <span class="tru">-</span>
                                <input type="text" value="1" class="quantity" name="quantity">
                                <span class="cong">+</span>
                            </div>
                            <div>
                                <input type="text" value="${o.giamconChu}" class="tong" name="tong" readonly>
                            </div>
                            <div>
                                <a href="RemoveController?pid=${o.pid}"><img src="images/icon_cart_del.png" alt=""></a>
                            </div>
                        </div>
                    </c:forEach>
                        <div class="total">
                            <div><strong>Tổng cộng: </strong><input type="text" value="100.000.000.000" class="sum_all" name="sum_all" readonly>VND</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="sangphai">
                    <button type="button" class="tieptuc"><a href="ProductController?index=1">Tiếp tục mua hàng</a></button>
                    <button type="submit" class="muahang">Tiến hành mua hàng</button>
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
    <script>
        const sl = document.querySelectorAll(".sl");
        
        sl.forEach((node) => {
            const itemCount = node.querySelector(".quantity");
            const add = node.querySelector(".cong");
            const remove = node.querySelector(".tru");

            add.addEventListener("click", () => {
                itemCount.value = parseInt(itemCount.value) + 1;
            });

            remove.addEventListener("click", () => {
                if(parseInt(itemCount.value) > 0){
                    itemCount.value = parseInt(itemCount.value) - 1;
                }
            });
        });
    </script>
</html>
