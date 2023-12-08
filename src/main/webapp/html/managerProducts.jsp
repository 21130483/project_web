<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <link rel="stylesheet" href="../css/managerProducts.css">


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
          <div class="a" style="background-color: #007bff;">
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

  <div class="quan-ly">
    <div class="quan-ly-san-pham">
      <div class="title">
        <p>Quản lý sản phẩm</p>
      </div>

      <div class="them-san-pham">
        <a href="themsuasanpham.html">
          <div class="a">
            Thêm sản phẩm
          </div>
        </a>
      </div>

      <div class="danh-muc-san-pham">
        <div class="ten-cot">
          <input type="text" placeholder="Id sản phẩm">
          <input type="text" placeholder="Tên sản phẩm">
          <input type="text" placeholder="Loại sản phẩm">
          <input type="text" placeholder="Nhà sản xuất">
          <input type="text" placeholder="Xuất sứ">
          <!-- <input type="text" placeholder="Ngày cập nhật"> -->

          <div class="button">
            <button>Tìm kiếm</button>
          </div>
        </div>

        <ul>
          <li class="box-san-pham">
            <div class="san-pham">
              <p>123</p>
              <p>Khẩu trang trắng</p>
              <p>Khẩu trang</p>
              <p>ABC</p>
              <p>Việt Nam</p>
              <!-- <p>11/1/2023</p> -->
              <div class="sua-xoa">
                <button class="sua">Sửa</button>
                <button class="xoa">Xóa</button>
              </div>
            </div>

          </li>

          <li class="box-san-pham">
            <div class="san-pham">
              <p>123</p>
              <p>Khẩu trang trắng</p>
              <p>Khẩu trang</p>
              <p>ABC</p>
              <p>Việt Nam</p>
              <!-- <p>11/1/2023</p> -->
              <div class="sua-xoa">
                <button class="sua">Sửa</button>
                <button class="xoa">Xóa</button>
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