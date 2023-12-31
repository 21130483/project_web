<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="../css/login.css">
  <title>Register</title>
</head>
<body>
<div class = "section">
  <div class="form-container">
    <div class="form">
      <h2 class="form-title"><span>Đăng ký</span></h2>
    </div>
    <div class="form-group">
      <input type="user-name" name="full-name" class="form-style" placeholder="Họ và tên" id="fullname" autocomplete="off">
      <i class="input-icon fa-regular fa-user"></i>
    </div>
    <div class="form-group">
      <input type="email" name="regemail" class="form-style" placeholder="Email" id="regemail" autocomplete="off">
      <i class="input-icon fa-regular fa-envelope"></i>
    </div>
    <div class="form-group">
      <input type="password" name="regpass" class="form-style" placeholder="Mật khẩu" id="regpass" autocomplete="off">
      <i class="input-icon fa-solid fa-unlock-keyhole"></i>
    </div>
    <div class="form-group">
      <input type="password" name="regpass" class="form-style" placeholder="Nhập lại mật khẩu" id="regpass" autocomplete="off">
      <i class="input-icon fa-solid fa-unlock-keyhole"></i>
    </div>
    <button class="btn">ĐĂNG KÝ</button>
    <div class="login-link">
      <p> Bạn đã có tài khoản?
        <a href="login.jsp" class="signin">Đăng nhập</a></p>
      <div class = "form-icon">
        <button class="fb-btn">
          <a href="#" class = "icon">
            <img src="../image/login/fb.png">Đăng nhập bằng Facebook</a></button>
        <button class="google-btn">
          <a href="#" class = "icon">
            <img src="../image/login/google.png">Đăng nhập bằng Google</a>
        </button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
