<%-- 
    Document   : checkout
    Created on : May 8, 2022, 7:42:16 PM
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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
        <!--header-->
        <jsp:include page="headerShop.jsp"></jsp:include>
        <!-- header end -->
        <!--logo-->
        <jsp:include page="logo_cart.jsp"></jsp:include>

        <!-- Menu Bar -->
        <jsp:include page="menubar.jsp"></jsp:include>
        
        <form action="AccountController" id="form-account">
            <div class="container">
                <div class="row head-account">
                    <div class="col-md-1">
                        STT
                    </div>
                    <div class="col-md-5">
                        Tên sản phẩm
                    </div>
                    <div class="col-md-2">
                        Giá
                    </div>
                    <div class="col-md-2">
                        Số lượng
                    </div>
                    <div class="col-md-2">
                        Tổng
                    </div>
                </div>
                <c:forEach items="${list}" var='o'>
                    <div class="row table-account">
                        <div class="col-md-1">
                            <div class="stt-account">
                                1
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="img-account">
                                <img src="${o.image}" alt="">
                                <strong><a href="DetailController?${o.pid}">${o.pname}</a></strong>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="gia-account">
                                ${o.giamconChu}
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="qty-account">
                                <input type="text" value="${o.amount}" name="amount" readonly>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="tong-account">
                                ${o.tongPChu}
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="row total-account">
                    <div class="col-md-2">
                        Tổng cộng:
                    </div>
                    <div class="col-md-2">
                        <input type="text" value="${totalne}đ" class="res-total" name="res-total" readonly>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row ttkh">
                    <div class="col-md-6">
                        <div class="phan1">
                            <div>
                                <strong>1. Khách hàng khai báo thông tin</strong>
                            </div>
                            <div>
                                <label for="tk">Tài khoản: *</label>
                                <input type="text" id="tk" name="tk">
                                <span class="form-message">asdhajkdhajshdjaskdhasjkdhasjkdhasjdhasjkdhasdjk</span>
                            </div>
                            <div>
                                <label for="mk">Mật khẩu: *</label>
                                <input type="password" id="mk" name="mk">
                                <span class="form-message">ok</span>
                            </div>
                            <div>
                                <label for="ht">Họ tên: *</label>
                                <input type="text" id="ht" name="ht">
                                <span class="form-message">ok</span>
                            </div>
                            <div>
                                <label for="dt">Điện thoại: *</label>
                                <input type="text" id="dt" name="dt">
                                <span class="form-message">ok</span>
                            </div>
                            <div>
                                <label for="dc">Địa chỉ: *</label>
                                <input type="text" id="dc" name="dc">
                                <span class="form-message">ok</span>
                            </div>
                            <div>
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email">
                                <span class="form-message">ok</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="phan23">
                            <div class="phan2">
                                <div>
                                    <strong>2. Ghi chú cho đơn hàng</strong>
                                </div>
                                <div>
                                    <textarea name="ghichu" id="ghichu" cols="30" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="phan3">
                                <strong>3. Phương thức thanh toán</strong>
                                <div>1</div>
                                <div>1</div>
                                <div>1</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row chotdon">
                    <button type="submit">Chốt đơn</button>
                </div>
            </div>
        </form>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
