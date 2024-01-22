<%@ page import="model.Product" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="../css/product.css">
    <title>Chi Tiết Sản Phẩm</title>
</head>
<body>
<div class="page">
    <jsp:include page="header.jsp"></jsp:include>

    <%
        Product product = (Product) request.getAttribute("productDetail");
    %>

    <div class="product-container">
        <div class="product-info">
            <div class="col-9">
                <div class="left-slide">
                    <div class="product-left">
                        <div class="product-left-big-images">
                            <img id="bigImage" src="../image/product/<%=product.getProductID()%>/0.webp" alt="">
                        </div>
                        <div class="product-left-small-images" onclick="changeBigImage(event)">
                            <%--                            <img src="../image/product/may-tao-oxi1.jpg" alt="">--%>
                            <%--                            <img src="../image/product/may-tao-oxi2.jpg" alt="">--%>
                            <%--                            <img src="../image/product/may-tao-oxi3.jpg" alt="">--%>
                            <%--                            <img src="../image/product/may-oxi.jpg" alt="">--%>
                            <%--                            <img src="../image/product/may-tao-oxi3.jpg" alt="">--%>

                            <%

                                int numberImg = (int) request.getAttribute("numberImg");
                                System.out.println(numberImg);
                                for (int i = 0; i < numberImg; i++) {
                            %>

                            <img src="../image/product/<%=product.getProductID()%>/<%=i%>.webp" alt="">
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div class="product-details">
                        <%--                        <h1 class="product-title">Máy tạo oxy xách tay 5 lít Dynmed POC5</h1>--%>
                        <h1 class="product-title"><%=product.getName()%>
                        </h1>
                        <div class="product-description">
                            <span class="title">Mã sản phẩm:</span>
                            <span class="info">
                                        <span title="Mã sản phẩm">A2324</span>
                                    </span>
                        </div>
                        <div class="product-description">
                            <span class="title">Thương hiệu:</span>
                            <span class="info">
                                        <span title="Thương hiệu">Dynmed</span>
                                    </span>
                        </div>
                        <div class="product-description">
                            <span class="title">Sản xuất:</span>
                            <span class="info">
                                        <span title="Sản xuất">Trung Quốc</span>
                                    </span>
                        </div>
                        <div class="product-description">
                            <span class="title">Bảo hành:</span>
                            <span class="info">
                                        <span title="Đơn vị tính">24 tháng</span>
                                    </span>
                        </div>
                        <div class="product-description">
                            <span class="title">Mô tả ngắn: </span>
                            <span class="info-des">
                                        <span title="Mô tả ngắn">Máy tạo oxy xách tay 5L Dynmed POC5 cung cấp oxy ổn định mỗi phút theo sự thay đổi liên tục của nhịp thở.</span>
                                    </span>
                        </div>

                        <div class="product-price-box">
                            <div class="row gx-0">
                                <div class="col-4">
                                    <h2 class="text-primary-green">25.500.000đ</h2>
                                    <span class="saving">Tiết kiệm: <span class="text-red">4.500.000đ (giảm 15%)</span></span>
                                </div>
                                <div class="col-4">
                                    <span class="origin-price">30.000.000đ</span>
                                </div>
                            </div>
                        </div>

                        <div class="quantity mt-3">
                            <span class="description fw-bold">Số lượng: </span>
                            <div class="quantity-form">
                                <button class="btn minus-btn" onclick="decreaseQuantity()">-</button>
                                <input class="input-quanlity" type="text" value="1" id="quantity">
                                <button class="btn plus-btn" onclick="increaseQuantity()">+</button>
                            </div>
                        </div>
                        <button class="add-to-cart-btn  mt-3">
                            <div class="col-2">
                                <i class="fas fa-shopping-cart cart-icon"></i>
                            </div>
                            <div class="col-10">
                                <span class="fw-bold">Thêm vào giỏ hàng</span><br>
                            </div>
                        </button>

                        <div class="sale-box">
                            <div class="sale-title bg-primary-green">
                                <i class="fa-solid fa-gift" style="font-size: 25px;"></i> Khuyến mãi đặc biệt !!!
                            </div>
                        </div>
                        <div class="sale-detail border-s-r-5">
                            <div class="d-flex align-items-center">
                                <i class="fa-solid fa-check text-primary-green p-2 fs-2"></i>
                                <span>Áp dụng Phiếu quà tặng/ Mã giảm giá theo ngành hàng.</span>
                            </div>
                            <div class="d-flex align-items-center">
                                <i class="fa-solid fa-check text-primary-green p-2 fs-2"></i>
                                <span>Giảm giá 25% khi mua từ 2 sản phẩm trở lên có giá trị hóa đơn 7.000.000₫.</span>
                            </div>
                            <div class="d-flex align-items-center">
                                <i class="fa-solid fa-gifts text-primary-green p-1 fs-2"></i>
                                <span>Tặng ngay 1 voucher có trị giá từ 150.000₫ trên Shopee, Lazada, Tiki khi thanh toán hóa đơn từ 1.300.000₫ qua VNPay, ZaloPay.</span>
                            </div>
                        </div>
                    </div>

                    <div class="product-contents mt4">
                        <button id="show-info-btn" class="btn-info">THÔNG TIN SẢN PHẨM</button>
                        <button id="show-spec-btn" class="btn-spec">THÔNG SỐ KỸ THUẬT</button>
                        <button id="show-manual-btn" class="btn-manual">HƯỚNG DẪN SỬ DỤNG</button>
                        <button id="show-warranty-policy-btn" class="btn-warranty">CHÍNH SÁCH BẢO HÀNH</button>
                        <div class="description-info">
                            <h2>Giới thiệu máy tạo oxy xách tay 5 lít Dynmed POC5</h2>
                            <p>
                                <strong>Máy tạo oxy xách tay 5L Dynmed POC5</strong>
                                cung cấp oxy ổn định mỗi phút theo sự thay đổi liên tục của nhịp thở,
                                mang đến hiệu quả trị liệu tối ưu đối với bệnh nhân mắc các bệnh về đường hô hấp, người
                                lớn tuổi và
                                những người được chỉ định cần tiếp nhận oxy bổ sung.
                            </p>
                            <p class="images-info">
                                <img src="../image/product/may-oxi.jpg" alt="">
                            </p>
                            <p class="name-images-info">Máy tạo oxy xách tay 5 lít Dynmed POC5</p>
                            <p>Người dùng có thể tùy chỉnh <strong>3 chế độ</strong> sử dụng gồm chế độ xung, chế độ tần
                                số không đổi
                                và chế độ cao nguyên dùng được ở cả độ cao đến 6000m.
                                Với nồng độ oxy tinh khiết luôn đạt 93% ± 3% và lưu lượng dòng chảy lên đến 5L/phút,
                                người dùng có thể an tâm trị liệu hiệu quả khi sử dụng
                                <strong> máy tạo oxy xách tay Dynmed POC5.</strong>
                            </p>
                            <p class="images-info">
                                <img src="../image/product/thong-tin-may-oxi.jpg" alt="">
                            </p>
                            <p>
                                <strong>Máy tạo oxy 5 lít Dynmed POC5 </strong>
                                còn được thiết kế với các tính năng an toàn nâng cao,
                                phát báo động khi phát hiện lỗi trong quá trình sử dụng, đảm bảo an toàn cho người dùng.
                                Màn hình cảm ứng 3,5 inch hiển thị thông số rõ nét, dễ dàng tùy chỉnh và theo dõi.
                            </p>
                        </div>

                        <div class="relative-product">
                            <div class="group_title mt-5">
                                <div class="title-relative">
                                    <a class="title-name" href=" ">Sản phẩm liên quan</a>
                                </div>
                                <div class="button-control">
                                    <div class="btn-green btn-small disabled">
                                        <i class="fa-solid fa-chevron-left fa-chevron"></i>
                                    </div>
                                    <div class="btn-green btn-small">
                                        <i class="fa-solid fa-chevron-right fa-chevron"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="card-deck d-flex mr-child-20">
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 15%</span>
                                    <img class="card-img-top" src="../image/product/may-tao-oxi1.jpg" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                Máy Tạo Oxy Dynmed POC5
                                            </a>
                                        </h3>
                                        <div class="card-text">
                                            <div class="price-box">
                                                25.500.000đ
                                                <span class="price-compare">
                                                        30.000.000đ
                                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 15%</span>
                                    <img class="card-img-top" src="../image/product/may-tao-oxi1.jpg" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                Máy Tạo Oxy Dynmed POC5
                                            </a>
                                        </h3>
                                        <div class="card-text">
                                            <div class="price-box">
                                                25.500.000đ
                                                <span class="price-compare">
                                                        30.000.000đ
                                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 15%</span>
                                    <img class="card-img-top" src="../image/product/may-tao-oxi1.jpg" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                Máy Tạo Oxy Dynmed POC5
                                            </a>
                                        </h3>
                                        <div class="card-text">
                                            <div class="price-box">
                                                25.500.000đ
                                                <span class="price-compare">
                                                        30.000.000đ
                                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card radius-green">
                                    <span class="span-sale">Giảm 15%</span>
                                    <img class="card-img-top" src="../image/product/may-tao-oxi1.jpg" alt="">
                                    <div class="card-body">
                                        <h3 class="card-title">
                                            <a href="">
                                                Máy Tạo Oxy Dynmed POC5
                                            </a>
                                        </h3>
                                        <div class="card-text">
                                            <div class="price-box">
                                                25.500.000đ
                                                <span class="price-compare">
                                                        30.000.000đ
                                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="right-slide">
                    <div class="box-t">
                        <h4 class="title-text">Chính sách cửa hàng</h4>
                        <div class="d-flex align-items-center mt-3">
                            <img src="../image/product/freeship.png" width="40" height="40" alt="Hình ảnh"
                                 class="blue-filter">
                            <div class="text-group">
                                <h6>Miễn phí vận chuyển</h6>
                                <span>Trong nội thành Hồ Chí Minh.</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <img src="../image/product/freeship.png" width="40" height="40" alt="Hình ảnh"
                                 class="blue-filter">
                            <div class="text-group">
                                <h6>Miễn phí vận chuyển</h6>
                                <span>Trên toàn quốc cho đơn hàng từ 1.500.000₫.</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="fa-solid fa-repeat"></i>
                            <div class="text-group">
                                <h6>Miễn phí đổi trả</h6>
                                <span>Cho sản phẩm có lỗi khi vận chuyển.</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="fa-solid fa-repeat"></i>
                            <div class="text-group">
                                <h6>Miễn phí đổi trả</h6>
                                <span>Sản phẩm có lỗi từ nhà sản xuất theo quy định trong chính sách bảo hành.</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <i class="fa-solid fa-phone"></i>
                            <div class="text-group">
                                <h6>Liên hệ hỗ trợ, tư vấn</h6>
                                <span>0238.312.523 - 0248.636.917</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

</div>

<script>
    function changeBigImage(event) {
        if (event.target.tagName === 'IMG') {
            var bigImage = document.getElementById('bigImage');
            bigImage.src = event.target.src;
        }
    }

    // Lấy danh sách các small images
    var smallImages = document.querySelectorAll('.product-left-small-images img');
    var bigImage = document.querySelector('.product-left-big-images img');
    var currentImageIndex = 0;

    // Hàm chuyển hình ảnh
    function changeImage() {
        bigImage.src = smallImages[currentImageIndex].src;
        currentImageIndex = (currentImageIndex + 1) % smallImages.length;
    }

    // Tự động chuyển hình ảnh sau một khoảng thời gian
    var imageInterval = setInterval(changeImage, 3000); // Thay đổi hình sau mỗi 3 giây

    // Hàm giảm số lượng
    function decreaseQuantity() {
        var quantityInput = document.getElementById("quantity");
        var currentQuantity = parseInt(quantityInput.value);
        if (currentQuantity > 1) {
            quantityInput.value = currentQuantity - 1;
        }
    }

    // Hàm tăng số lượng
    function increaseQuantity() {
        var quantityInput = document.getElementById("quantity");
        var currentQuantity = parseInt(quantityInput.value);
        quantityInput.value = currentQuantity + 1;
    }
</script>

</body>
</html>