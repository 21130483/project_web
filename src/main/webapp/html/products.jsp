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

    <link rel="stylesheet" href="../css/products.css">
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
        <div class="bang-sap-xep">
            <div class="container">
                <div class="sap-xep-theo">
                    Sắp xếp theo
                </div>

                <div class="che-do">
                    <div class="lien-quan">
                        <button>Liên quan</button>
                    </div>

                    <div class="moi-nhat">
                        <button>Mới nhất</button>
                    </div>

                    <div class="ban-chay">
                        <button>Bán chạy</button>
                    </div>
                </div>

                <div class="gia">
                    <button class="button-gia">
                        <span>Giá</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </button>
                </div>

                <div class="khoang-gia">
                    <div class="title">
                        Khoảng giá
                    </div>


                    <div class="from">
                        <input type="number">
                    </div>

                    <div class="between">
                        <i class="fa-solid fa-minus"></i>
                    </div>

                    <div class="to">
                        <input type="number">
                    </div>

                    <div class="ap-dung">
                        <button>Áp dụng</button>
                    </div>
                </div>


            </div>
        </div>

        <div class="danh-sach-san-pham">
            <div class="container">
                <div class="cac-san-pham">
                    <ul>

                        <li class="san-pham">
                            <a href="product.html" class="link-san-pham">
                                <div class="img-san-pham">
                                    <!-- 248 x 248 -->
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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
                                    <img src="../img/product/máy massage.png" alt="">
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


                <div class="so-trang-san-pham">
                    <ul>
                        <li>
                            <button><i class="fa-solid fa-angle-left"></i></button>
                            </i>
                        </li>

                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">...</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>

                        <li>
                            <button><i class="fa-solid fa-angle-right"></i></button>
                            </i>
                        </li>
                    </ul>
                </div>


            </div>

        </div>

    </div>





    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>