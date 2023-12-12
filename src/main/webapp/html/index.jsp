<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nhà Thuốc</title>

    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</head>

<body>

<div class="page">
    <jsp:include page="header.jsp"></jsp:include>

    <div class="noi-dung">
        <div class="first-home">
            <div class="container">
                <div id="carouselExampleInterval" class="carousel slide chuyen-anh" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="5000">
                            <!--            <img src="img/ảnh.png" class="d-block w-100" alt="...">-->
                            <a href="">
                                <div class="box">
                                    <!-- <span>1302 x 300</span> -->
                                    <img src="../image/index/thiet-bi-yte.jpg" alt="">
                                </div>

                            </a>
                        </div>
                        <div class="carousel-item" data-bs-interval="5000">
                            <!--            <img src="img/ảnh.png" class="d-block w-100" alt="...">-->
                            <a href="">
                                <div class="box">
                                    <!-- <span>1302 x 300</span> -->
                                    <img src="../image/index/thiet-bi-yte.jpg" alt="">
                                </div>
                            </a>
                        </div>
                        <div class="carousel-item" data-bs-interval="5000">
                            <!--            <img src="img/ảnh.png" class="d-block w-100" alt="...">-->
                            <a href="">
                                <div class="box">
                                    <!-- <span>1302 x 300</span> -->
                                    <img src="../image/index/thiet-bi-yte.jpg" alt="">
                                </div>
                            </a>
                        </div>

                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>

                <div class="thanh-dich-vu">
                    <div class="dv-suc-khoe">
                        <a href="" class="box">
                            <div class="circle">
                                <i class="fa-solid fa-stethoscope"></i>
                            </div>
                            <span>dịch vụ sức khỏe</span>
                        </a>
                    </div>

                    <div class="lich-su-mua">
                        <a href="" class="box">
                            <div class="circle">
                                <i class="fa-solid fa-heart"></i>
                            </div>
                            <span>Sản phẩm yêu thích</span>
                        </a>

                    </div>

                    <div class="ma-giam-gia">
                        <a href="" class="box">
                            <div class="circle">
                                <i class="fa-solid fa-ticket"></i>
                            </div>
                            <span>Mã giảm giá</span>
                        </a>
                    </div>

                    <div class="tu-van-truc-tuyen">
                        <a href="" class="box">
                            <div class="circle">
                                <i class="fa-solid fa-headset"></i>
                            </div>
                            <span>Tư vấn trực tuyến</span>
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <div class="second-home">
            <div class="container">
                <div class="danh-muc-san-pham">
                    <span>Danh mục sản phẩm</span>
                </div>

                <div class="cac-category">
                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Khẩu trang</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Nhiệt kế</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Máy đo đường huyết</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Băng y tế</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Nước xịt khuẩn</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Bông y tế</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Dụng cụ vệ sinh mũi</span>
                        </a>
                    </div>

                    <div class="box">
                        <a href="assets/html/cacsanpham.html" class="button">
                            <div class="circle">

                            </div>
                            <span>Máy massage</span>
                        </a>
                    </div>
                </div>

            </div>
        </div>

        <div class="top-san-pham-tin-dung">
            <div class="container">
                <div class="title-top-sp-td">
                    <span>Top sản phẩm tin dùng</span>
                    <a href="" class="xem-them">Xem thêm</a>
                </div>

                <div class="cac-san-pham">
                    <ul>
                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </div>

        <div class="khau-trang-chinh-hang-dat-tc top-san-pham-tin-dung">
            <div class="container">
                <div class="title-top-sp-td">
                    <span>Khẩu trang chính hãng đạt tiêu chuẩn</span>
                    <a href="" class="xem-them">Xem thêm</a>
                </div>

                <div class="cac-san-pham">
                    <ul>
                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </div>

        <div class="dung-cu-so-cuu top-san-pham-tin-dung">
            <div class="container">
                <div class="title-top-sp-td">
                    <span>Dụng cụ sơ cứu</span>
                    <a href="" class="xem-them">Xem thêm</a>
                </div>

                <div class="cac-san-pham">
                    <ul>
                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>

                        <li class="san-pham">
                            <a href="assets/html/product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../image/index/máy%20massage.png" alt="">
                                </div>

                                <div class="noi-dung-san-pham">
                                    <div class="khoang-trong"></div>

                                    <div class="ten-san-pham">
                                        Gel bảo vệ da chiết xuất hoàng cầm Baifem K (15g)
                                    </div>

                                    <div class="khoang-trong"></div>

                                    <div class="gia-san-pham">
                                        10.000 đ/Hộp
                                    </div>

                                    <button class="them-san-pham">
                                        Thêm vào giỏ hàng
                                    </button>

                                </div>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</div>


</body>

</html>