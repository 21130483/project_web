<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/managerBills.css">


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

            <li class="button-muc-luc">
                <a href="quanlythanhvien.html">
                    <div class="a">
                        Quản lý thành viên
                    </div>
                </a>
            </li>

            <li class="button-muc-luc" style="background-color: #007bff;">
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

    <div class="quan-ly">
        <div class="quan-ly-san-pham">
            <div class="title">
                <p>Quản lý hóa đơn</p>
            </div>

            <div class="danh-muc-san-pham">
                <div class="ten-cot">
                    <input type="text" placeholder="Id hóa đơn">
                    <input type="text" placeholder="Id khách hàng">
                    <input type="text" placeholder="Tên khách hàng">
                    <input type="text" placeholder="Tổng giá">
                    <input type="text" placeholder="Trạng thái">
                    <!-- <input type="text" placeholder=""> -->
                    <div class="button">
                        <button>Tìm kiếm</button>
                    </div>
                </div>

                <ul>
                    <li class="box-san-pham">
                        <div class="san-pham">
                            <p>123</p>
                            <p>123</p>
                            <p>Nguyễn Hữu Phước</p>
                            <p>10.000.000</p>
                            <div class="center">
                                <span class="cho-xac-nhan">Chờ xác nhận</span>
                            </div>

                            <!-- <p>11/1/2023</p> -->
                            <div class="box-button">
                                <button>Chi tiết</button>
                            </div>
                        </div>

                    </li>

                    <li class="box-san-pham">
                        <div class="san-pham">
                            <p>123</p>
                            <p>123</p>
                            <p>Nguyễn Thanh Lưu</p>
                            <p>10.000.000</p>
                            <div class="center">
                                <span class="dang-giao">Đang giao</span>
                            </div>
                            <!-- <p>11/1/2023</p> -->
                            <div class="box-button">
                                <button>Chi tiết</button>
                            </div>
                        </div>
                    </li>

                    <li class="box-san-pham">
                        <div class="san-pham">
                            <p>123</p>
                            <p>123</p>
                            <p>Hồng Phúc Long</p>
                            <p>10.000.000</p>
                            <div class="center">
                                <span class="hoan-thanh">Hoàn thành</span>
                            </div>
                            <!-- <p>11/1/2023</p> -->
                            <div class="box-button">
                                <button>Chi tiết</button>
                            </div>
                        </div>
                    </li>



                </ul>
            </div>
        </div>
    </div>
</div>
</body>

</html>