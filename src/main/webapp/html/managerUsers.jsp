<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/managerUsers.css">
</head>
<body>
<div class="noi-dung">
    <div class="muc-luc">
        <div class="title">
            <p>Quản lý</p>
        </div>
        <ul>
            <li class="button-muc-luc">
                <a href="quanlysanpham.html">
                    <div class="a" >
                        Quản lý sản phẩm
                    </div>
                </a>
            </li>

            <li class="button-muc-luc" style="background-color: #007bff;">
                <a href="quanlythanhvien.html">
                    <div class="a">
                        Quản lý thành viên
                    </div>
                </a>
            </li>

            <li class="button-muc-luc">
                <a href="quanlyhoadon.html">
                    <div class="a">
                        Quản lý hóa đơn
                    </div>
                </a>
            </li>

            <li class="button-muc-luc">
                <a href="quanlyvoucher.html">
                    <div class="a">
                        Quản lý phiếu giảm giá
                    </div>
                </a>
            </li>

            <li class="button-muc-luc" style="margin-top: 50px;">
                <a href="../../index.html">
                    <div class="a">
                        Quay về trang chủ
                    </div>
                </a>
            </li>
        </ul>
    </div>

    <div class="quan-ly-thanh-vien">
        <div class="title">
            <p>Quản lý thành viên</p>
        </div>

        <div  class="danh-sach-block">
            <a href="">
                <div class="a">
                    Danh sách Block
                </div>
            </a>
        </div>

        <div class="danh-muc-thanh-vien">
            <div class="ten-cot">
                <input type="text" placeholder="Id thành viên">
                <input type="text" placeholder="Email">
                <input type="text" placeholder="Họ và tên">
                <input type="text" placeholder="Số điện thoại">
                <input type="text" placeholder="Chức vụ">

                <!-- <p>Id thành viên</p>
                <p>Email</p>
                <p>Số điện thoại</p>
                <p>Chức vụ</p> -->
                <div class="button">
                    <button>Tìm kiếm</button>
                </div>
            </div>

            <ul>
                <li class="box-thanh-vien">
                    <div class="thanh-vien">
                        <p>123</p>
                        <p>abc@gmail.com</p>
                        <p>Nguyễn Hữu Phước</p>
                        <p>0123456789</p>
                        <p>ABC</p>
                        <div class="sua-block">
                            <button class="sua">Sửa</button>
                            <button class="block">Block</button>
                        </div>
                    </div>

                </li>

                <li class="box-thanh-vien">
                    <div class="thanh-vien">
                        <p>123</p>
                        <p>abc@gmail.com</p>
                        <p>Nguyễn Hữu Phước</p>
                        <p>0123456789</p>
                        <p>ABC</p>
                        <div class="sua-block">
                            <button class="sua">Sửa</button>
                            <button class="block">Block</button>
                        </div>
                    </div>

                </li>



            </ul>



        </div>
    </div>
</div>
</body>
</html>