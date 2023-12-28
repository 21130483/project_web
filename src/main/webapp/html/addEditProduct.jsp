<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/addEditProduct.css">
</head>
<body>
<div class="noi-dung">
    <div class="them-sua-san-pham">
        <div class="thong-tin-san-pham">
            <p>Thông tin sản phẩm</p>
        </div>

        <div class="dien-thong-tin">
            <div class="box">
                Id sản phẩm
                <input type="text">
                Tên sản phẩm
                <input type="text">
                Nhà sản xuất
                <input type="text">
                Xuất sứ
                <input type="text">
            </div>


            <div class="box">
                Loại sản phẩm
                <input type="text">
                Giá bán
                <input type="text">
                Số lượng
                <input type="text">
                Giảm giá
                <input type="text" placeholder="1% - 100%">
            </div>


        </div>

        <div class="hinh-anh">
            Hình ảnh
            <input type="text">
        </div>

        <div class="chi-tiet">
            Chi tiết
            <textarea></textarea>
        </div>

        <div class="button-them-huy">
            <a href="quanlysanpham.html">
                <div class="them">
                    Thêm sản phẩm
                </div>
            </a>

            <a href="quanlysanpham.html">
                <div class="huy">
                    Hủy
                </div>
            </a>
            <!-- <button class="them">Thêm sản phẩm</button>
            <button class="huy">Hủy</button> -->
        </div>
    </div>
</div>
</body>
</html>