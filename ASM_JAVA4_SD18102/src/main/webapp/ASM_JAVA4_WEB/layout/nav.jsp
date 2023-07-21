<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- nav - menu của asm  -->
 <div class="card-nav"> 
      <nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark" style="background-color: #000000;">
        <a class="navbar-brand"><span style="color: pink;">AnimeGalaxy</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
              <a class="nav-link" href="../ASM_JAVA4_WEB/index.jsp">Trang chủ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../ASM_JAVA4_WEB/like.jsp">Thích</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                Tài khoản
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="Account/login.jsp">Đăng nhập</a>
                <a class="dropdown-item" href="Account/quenMK.jsp">Quên mật khẩu</a>
                <a class="dropdown-item" href="Account/singup.jsp">Đăng ký </a>
                <a class="dropdown-item" href="#">Đăng xuất</a>
                <a class="dropdown-item" href="Account/doiPass.jsp">Đổi mật khẩu</a>
                <a class="dropdown-item" href="Account/taikhoan.jsp">Tài khoản</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
               Ngôn ngữ
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="/Account/login.html">Tiếng việt</a>
                <a class="dropdown-item" href="/Account//quenMK.html">Tiếng anh</a>
               
              </div>
            </li>
           
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Tìm kiếm tên phim">
            <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Tìm kiếm</button>
          </form>
        </div>
      </nav>
    </div>
</body>
</html>