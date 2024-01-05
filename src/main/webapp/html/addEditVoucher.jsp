<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/addEditVoucher.css">
</head>
<body>
<div class="noi-dung">
    <div class="them-sua-san-pham">
        <div class="thong-tin-san-pham">
            <p>Thông tin phiếu giảm giá</p>
        </div>

        <div class="dien-thong-tin">
            <div class="box">
                Id phiếu giảm giá
                <input type="text">
                Phiếu giảm giá
                <input type="text">
                Khuyến mãi
                <input type="text">
                Số lượng
                <input type="text">
            </div>


            <div class="box">
                Điều kiện
                <input type="text">
                Dành cho
                <select>
                    <option value="">Sản phẩm</option>
                    <option value="">Phí vận chuyển</option>
                </select>
                Ngày hết hạn
                <input type="date">
            </div>


        </div>

        <div class="hinh-anh">
            Hình ảnh
            <input type="file">
        </div>

        <div class="chi-tiet">
            Chi tiết
            <textarea></textarea>
        </div>

        <div class="button-them-huy">
            <a href="quanlyvoucher.html">
                <div class="them">
                    Thêm phiếu giảm giá
                </div>
            </a>

            <a href="quanlyvoucher.html">
                <div class="huy">
                    Hủy
                </div>
            </a>
        </div>
    </div>
</div>
</body>
</html>