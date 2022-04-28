<%-- 
    Document   : manager
    Created on : Apr 28, 2022, 10:34:31 PM
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
                                <li><a href="#"><i class="fa fa-user"></i>Login</a></li>
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

        <div class="btn-add-cate">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="select-cate">
                            <label for="hienthi-cate">Category:</label>
                            <select id="hienthi-cate">
                                <option value="volvo"><a href="#">Lenovo</a></option>
                                <option value="saab"><a href="#">ram</a></option>
                                <option value="opel"><a href="#">Mac</a></option>
                                <option value="audi"><a href="#">Dell</a></option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="btn-bam">
                            <button class="bam">Add Product</button>
                            <button class="bam1">Add Category</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <form action="AddCategory" class="themcate hide5">
            <div class="container">
                <div class="cateID">
                    <div class="x3"><i class="fas fa-times"></i></div>
                    <div>
                        <label for="macate">Mã Category</label>
                        <input type="text" name="macate" id="macate" placeholder="Mã Category">
                        <span class="form-message">OK</span>
                    </div>
                    <div>
                        <label for="macate">Tên Category</label>
                        <input type="text" name="tencate" id="tencate" placeholder="Mã Category">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="isCate">Loại</label>
                        <select id="isCate" name="isCate">
                            <option value="1">Laptop</option>
                            <option value="0">Phụ kiện</option>
                        </select>
                    </div>
                    <div>
                        <button type="submit">Thêm</button>
                    </div>
                </div>
            </div>
        </form>

        <form action="AddController" class="form-them-sua hide1">
            <div class="container">
                <div class="them-sua">
                    <div>
                        <label for="chon-cateID" class="gg1">Category:</label>
                        <select class="chon-cateID" name="chon-cateID">
                            <option value="1">Laptop</option>
                            <option value="0">Phụ kiện</option>
                        </select>
                    </div>
                    <div class="gg3">
                        <select class="chon-cate" name="chon-cate">
                            <option value="1">Volvo</option>
                            <option value="2">Saab</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                    </div>
                    <div>
                        <label for="code">Mã sản phẩm:</label>
                        <input type="text" name="code" id="code" placeholder="Mã sản phẩm">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="photo">Chọn ảnh:</label>
                        <input type="file" id="photo" name="photo" placeholder="Enter Image">
                    </div>
                    <div>
                        <label for="tensp">Tên sản phẩm:</label>
                        <input type="text" id="tensp" name="sanp" placeholder="Tên sản phẩm">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="gia">Giá (VND):</label>
                        <input type="text" id="gia" name="gia" placeholder="Giá">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="slc">Số lượng:</label>
                        <input type="text" id="slc" name="slc" placeholder="Số lượng">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="tittle1">Mô tả:</label>
                        <input type="text" id="tittle1" name="tittle1" placeholder="Mô tả">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="description1">Chi tiết:</label>
                        <textarea name="des" id="description1" cols="30" rows="10" placeholder="Chi tiết"></textarea>
                    </div>
                    <div class="info-laptop">
                        <div>
                            <label for="tenmay">Tên máy:</label>
                            <input type="text" id="tenmay" name="tenmay" placeholder="Tên máy">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="ocung">Ổ cứng:</label>
                            <input type="text" id="ocung" name="ocung" placeholder="Ổ cứng">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="cpu">CPU:</label>
                            <input type="text" id="cpu" name="cpu" placeholder="CPU">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="ram">RAM:</label>
                            <input type="text" id="ram" name="ram" placeholder="RAM">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="card">Card:</label>
                            <input type="text" id="card" name="card" placeholder="Card">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="manhinh">Màn hình:</label>
                            <input type="text" id="manhinh" name="manhinh" placeholder="Màn hình">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="Trọng lượng">Trọng lượng:</label>
                            <input type="text" id="trongluong" name="trongluong" placeholder="Trọng lượng">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="hdh">Hệ điều hành:</label>
                            <input type="text" id="trongluong" name="trongluong" placeholder="Hệ điều hành">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div class="info-phukien hide4">
                        <div>
                            <label for="xuatxu">Xuất xứ:</label>
                            <input type="text" id="xuatxu" name="xuatxu" placeholder="Xuất xứ">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="tenpk">Tên sản phẩm:</label>
                            <input type="text" id="tenpk" name="tenpk" placeholder="Nhập">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="loai">Loại:</label>
                            <input type="text" id="loai" name="loai" placeholder="Loại">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div>
                        <label for="luachon-discount" class="gg">Giảm giá:</label>
                        <select name="luachon-discount" class="luachon-discount">
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                        <div class="dis hide">
                            <label for="text-discount">Giảm (%):</label>
                            <input type="text" name="giatri-discout" id="text-discount" placeholder="Giảm">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div class="btn-them-sua">
                        <button class="b-them">Thêm</button>
                    </div>
                </div>
                <div class="x"><i class="fas fa-times"></i></div>
            </div>
        </form>

        <form action="EditController" class="form-them-sua1 hide2">
            <div class="container">
                <div class="them-sua1">
                    <div>
                        <label for="chon-cateID1" class="gg1">Category:</label>
                        <select class="chon-cateID1" name="chon-cateID1">
                            <option value="1">Laptop</option>
                            <option value="0">Phụ kiện</option>
                        </select>
                    </div>
                    <div class="gg3">
                        <select class="chon-cate" name="chon-cate">
                            <option value="1">Volvo</option>
                            <option value="2">Saab</option>
                            <option value="3">Opel</option>
                            <option value="4">Audi</option>
                        </select>
                    </div>
                    <div>
                        <label for="code">Mã sản phẩm:</label>
                        <input type="text" name="code" id="code" placeholder="Mã sản phẩm">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="photo">Chọn ảnh:</label>
                        <input type="file" id="photo" name="photo" placeholder="Enter Image">
                    </div>
                    <div>
                        <label for="tensp">Tên sản phẩm:</label>
                        <input type="text" id="tensp" name="sanp" placeholder="Tên sản phẩm">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="gia">Giá (VND):</label>
                        <input type="text" id="gia" name="gia" placeholder="Giá">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="slc">Số lượng:</label>
                        <input type="text" id="slc" name="slc" placeholder="Số lượng">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="tittle1">Mô tả:</label>
                        <input type="text" id="tittle1" name="tittle1" placeholder="Mô tả">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="description1">Chi tiết:</label>
                        <textarea name="des" id="description1" cols="30" rows="10" placeholder="Chi tiết"></textarea>
                    </div>
                    <div class="info-laptop1">
                        <div>
                            <label for="tenmay">Tên máy:</label>
                            <input type="text" id="tenmay" name="tenmay" placeholder="Tên máy">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="ocung">Ổ cứng:</label>
                            <input type="text" id="ocung" name="ocung" placeholder="Ổ cứng">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="cpu">CPU:</label>
                            <input type="text" id="cpu" name="cpu" placeholder="CPU">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="ram">RAM:</label>
                            <input type="text" id="ram" name="ram" placeholder="RAM">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="card">Card:</label>
                            <input type="text" id="card" name="card" placeholder="Card">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="manhinh">Màn hình:</label>
                            <input type="text" id="manhinh" name="manhinh" placeholder="Màn hình">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="Trọng lượng">Trọng lượng:</label>
                            <input type="text" id="trongluong" name="trongluong" placeholder="Trọng lượng">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="hdh">Hệ điều hành:</label>
                            <input type="text" id="trongluong" name="trongluong" placeholder="Hệ điều hành">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div class="info-phukien1 hide4">
                        <div>
                            <label for="xuatxu">Xuất xứ:</label>
                            <input type="text" id="xuatxu" name="xuatxu" placeholder="Xuất xứ">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="tenpk">Tên sản phẩm:</label>
                            <input type="text" id="tenpk" name="tenpk" placeholder="Nhập">
                            <span class="form-message"></span>
                        </div>
                        <div>
                            <label for="loai">Loại:</label>
                            <input type="text" id="loai" name="loai" placeholder="Loại">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div>
                        <label for="luachon-discount1" class="gg">Giảm giá:</label>
                        <select name="luachon-discount" class="luachon-discount1">
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                        <div class="dis1 hide">
                            <label for="text-discount">Giảm (%):</label>
                            <input type="text" name="giatri-discout" id="text-discount" placeholder="Giảm">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div class="btn-them-sua">
                        <button class="b-sua">Sửa</button>
                    </div>
                </div>
                <div class="x1"><i class="fas fa-times"></i></div>
            </div>
        </form>

        <div class="quanly">
            <div class="container">
                <div class="table1">
                    <div class="head1">
                        <div>STT</div>
                        <div>Ảnh sản phẩm</div>
                        <div>Tên sản phẩm</div>
                        <div>Giá tiền</div>
                        <div>Số lượng</div>
                    </div>
                    <div class="about1">
                        <div>1</div>
                        <div>
                            <img src="images/demo.webp" alt="">
                        </div>
                        <div>
                            Tên sản phẩm
                        </div>
                        <div>
                            Giá
                        </div>
                        <div>
                            Số lượng
                        </div>
                        <div>
                            <span class="ed">Edit</span>
                        </div>
                        <div>
                            <a href="#">Delete</a>
                        </div>
                    </div>
                    <div class="about1">
                        <div>1</div>
                        <div>
                            <img src="images/demo.webp" alt="">
                        </div>
                        <div>
                            Tên sản phẩm
                        </div>
                        <div>
                            Giá
                        </div>
                        <div>
                            Số lượng
                        </div>
                        <div>
                            <span class="ed">Edit</span>
                        </div>
                        <div>
                            <a href="#">Delete</a>
                        </div>
                    </div>
                    <div class="about1">
                        <div>1</div>
                        <div>
                            <img src="images/demo.webp" alt="">
                        </div>
                        <div>
                            Tên sản phẩm
                        </div>
                        <div>
                            Giá
                        </div>
                        <div>
                            Số lượng
                        </div>
                        <div>
                            <span class="ed">Edit</span>
                        </div>
                        <div>
                            <a href="#">Delete</a>
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

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="js/app.js"></script>
    </body>
    <script>
        var them = document.querySelector(".bam")
        var form = document.querySelector(".form-them-sua")
        var thoat = document.querySelector(".x")
        function toggleModal1(){
            form.classList.toggle("hide1")
        }
        them.addEventListener('click', toggleModal1)
        thoat.addEventListener('click', toggleModal1)
        var cate = document.querySelector(".chon-cateID")
        var infolap = document.querySelector(".info-laptop")
        var infopk = document.querySelector(".info-phukien")
        function fun1(){
            if(cate.value == "1"){
                infolap.classList.remove("hide3")
                infopk.classList.add("hide4")
            }
            if(cate.value == "0"){
                infopk.classList.remove("hide4")
                infolap.classList.add("hide3")
            }
        }
        cate.addEventListener('click', fun1)
    </script>
    <!-- Edit product -->
    <script>
        var sua = document.querySelectorAll(".ed")
        var form1 = document.querySelector(".form-them-sua1")
        var thoat1 = document.querySelector(".x1")
        function toggleModal2(){
            form1.classList.toggle("hide2")
        }
        sua.forEach(i =>{
            i.addEventListener("click", toggleModal2)
        })
        thoat1.addEventListener('click', toggleModal2)
        var cate1 = document.querySelector(".chon-cateID1")
        var infolap1 = document.querySelector(".info-laptop1")
        var infopk1 = document.querySelector(".info-phukien1")
        function fun1(){
            if(cate1.value == "1"){
                infolap1.classList.remove("hide3")
                infopk1.classList.add("hide4")
            }
            if(cate1.value == "0"){
                infopk1.classList.remove("hide4")
                infolap1.classList.add("hide3")
            }
        }
        cate1.addEventListener('click', fun1)
    </script>
    <!-- discount -->
    <script>
        var yes = document.querySelector(".luachon-discount");
        var text = document.querySelector(".dis");
        function myFun(){
            if(yes.value == "1"){
                text.classList.remove('hide')
            }
            else{
                text.classList.add("hide")
            }
        }
        yes.addEventListener('click', myFun)
    </script>
    <script>
        var yes = document.querySelector(".luachon-discount1");
        var dis1 = document.querySelector(".dis1");
        function myFun(){
            if(yes.value == "1"){
                dis1.classList.remove('hide')
            }
            else{
                dis1.classList.add("hide")
            }
        }
        yes.addEventListener('click', myFun)
    </script>
    <!-- add category -->
    <script>
        var bam1 = document.querySelector(".bam1")
        var themcate = document.querySelector(".themcate")
        var x3 = document.querySelector(".x3");
        bam1.addEventListener('click', function(){
            themcate.classList.toggle("hide5")
        })
        x3.addEventListener('click', function(){
            themcate.classList.toggle("hide5")
        })
    </script>
</html>
