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

    <link rel="stylesheet" href="../css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
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
        <div class="container">
            <div class="san-pham-mua-va-bang-gia">
                <div class="san-pham-mua">
                    <div class="chon-all-cost-quantity-unit">
                        <div class="chon-all">
                            <div class="input-text">
                                <div class="box-input">
                                    <input type="checkbox" class="input">
                                </div>

                                <div style="display: flex; align-items: center; font-size: 20px;">Chọn tất cả</div>
                            </div>
                        </div>

                        <div class="cost">
                            Giá thành
                        </div>

                        <div class="quantity">
                            Số lượng
                        </div>

                        <div class="unit">
                            Đơn vị
                        </div>

                        <div class="khoang-trong">

                        </div>

                    </div>

                    <ul class="cac-san-pham-muon-mua">
                        <li class="san-pham-muon-mua">
                            <div class="input-img-ten-san-pham">
                                <div class="box-input">
                                    <input type="checkbox" class="input">
                                </div>

                                <div class="img-san-pham">

                                </div>

                                <div class="ten-san-pham">
                                    <a href="">Bột Diếp Cá nguyên chất Datino bổ sung chất dinh dưỡng có lợi cho sức khỏe từ diếp cá (15
                                        gói x 3g)</a>
                                </div>
                            </div>

                            <div class="cost">
                                <p class="sale">925.000đ</p>
                                <p class="origin">1.200.000đ</p>
                            </div>

                            <div class="quantity">
                                <div class="down-up-quantity">
                                    <button class="down"><i class="fa-solid fa-minus"></i></button>

                                    <input type="text" class="quantity" value="1">

                                    <button class="up"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>

                            <div class="unit">
                                Hộp
                            </div>

                            <div class="delete">
                                <button><i class="fa-solid fa-trash-can"></i></button>
                            </div>

                        </li>

                        <li class="san-pham-muon-mua">
                            <div class="input-img-ten-san-pham">
                                <div class="box-input">
                                    <input type="checkbox" class="input">
                                </div>

                                <div class="img-san-pham">

                                </div>

                                <div class="ten-san-pham">
                                    <a href="">Bột Diếp Cá nguyên chất Datino bổ sung chất dinh dưỡng có lợi cho sức khỏe từ diếp cá (15
                                        gói x 3g)</a>
                                </div>
                            </div>

                            <div class="cost">
                                <p class="sale">925.000đ</p>
                                <p class="origin">1.200.000đ</p>
                            </div>

                            <div class="quantity">
                                <div class="down-up-quantity">
                                    <button class="down"><i class="fa-solid fa-minus"></i></button>

                                    <input type="text" class="quantity" value="1">

                                    <button class="up"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>

                            <div class="unit">
                                Hộp
                            </div>

                            <div class="delete">
                                <button><i class="fa-solid fa-trash-can"></i></button>
                            </div>

                        </li>

                        <li class="san-pham-muon-mua">
                            <div class="input-img-ten-san-pham">
                                <div class="box-input">
                                    <input type="checkbox" class="input">
                                </div>

                                <div class="img-san-pham">

                                </div>

                                <div class="ten-san-pham">
                                    <a href="">Bột Diếp Cá nguyên chất Datino bổ sung chất dinh dưỡng có lợi cho sức khỏe từ diếp cá (15
                                        gói x 3g)</a>
                                </div>
                            </div>

                            <div class="cost">
                                <p class="sale">925.000đ</p>
                                <p class="origin">1.200.000đ</p>
                            </div>

                            <div class="quantity">
                                <div class="down-up-quantity">
                                    <button class="down"><i class="fa-solid fa-minus"></i></button>

                                    <input type="text" class="quantity" value="1">

                                    <button class="up"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>

                            <div class="unit">
                                Hộp
                            </div>

                            <div class="delete">
                                <button><i class="fa-solid fa-trash-can"></i></button>
                            </div>

                        </li>

                        <li class="san-pham-muon-mua">
                            <div class="input-img-ten-san-pham">
                                <div class="box-input">
                                    <input type="checkbox" class="input">
                                </div>

                                <div class="img-san-pham">

                                </div>

                                <div class="ten-san-pham">
                                    <a href="">Bột Diếp Cá nguyên chất Datino bổ sung chất dinh dưỡng có lợi cho sức khỏe từ diếp cá (15
                                        gói x 3g)</a>
                                </div>
                            </div>

                            <div class="cost">
                                <p class="sale">925.000đ</p>
                                <p class="origin">1.200.000đ</p>
                            </div>

                            <div class="quantity">
                                <div class="down-up-quantity">
                                    <button class="down"><i class="fa-solid fa-minus"></i></button>

                                    <input type="text" class="quantity" value="1">

                                    <button class="up"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>

                            <div class="unit">
                                Hộp
                            </div>

                            <div class="delete">
                                <button><i class="fa-solid fa-trash-can"></i></button>
                            </div>

                        </li>










                    </ul>
                </div>

                <div class="bang-gia">
                    <div class="title">
                        <p>Tổng tiền</p>
                        <p>3.257.000đ</p>
                    </div>

                    <div class="title">
                        <p>Giảm giá trực tiếp</p>
                        <p>46.000đ</p>
                    </div>

                    <div class="title">
                        <p>Giảm giá voucher</p>
                        <p>0đ</p>
                    </div>

                    <div class="title">
                        <p>Tiết kiệm được</p>
                        <p>46.000đ</p>
                    </div>

                    <div class="tam-tinh">
                        <p class="title">Tạm tính</p>
                        <p class="cost">3.211.000đ</p>
                    </div>

                    <button class="mua-hang">Mua hàng</button>

                    <div class="dieu-khoan">
                        Bằng việc tiến hành đặt mua hàng, bạn đồng ý với
                        <a href="">Điều khoản dịch vụ</a>
                        ,
                        <a href=""> Chính sách thu thập và xử lý dữ liệu cá nhân</a>
                        của Nhà thuốc FPT Long Châu
                    </div>
                </div>
            </div>
        </div>

    </div>




    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>