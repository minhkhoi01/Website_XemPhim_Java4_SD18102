<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${page.title}</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<!-- <link href="../views/file.css" rel="stylesheet"> -->
<link href="../views/poly.css" rel="stylesheet">

</head>

<body>
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
              <a class="nav-link" href="Trang-Chu">Trang chủ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Favorites">Thích</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                Tài khoản
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="../account/Dang-nhap">Đăng nhập</a>
                <a class="dropdown-item" href="../account/Quen-mat-khau">Quên mật khẩu</a>
                <a class="dropdown-item" href="../account/Dang-ky">Đăng ký </a>
                <a class="dropdown-item" href="../account/Dang-nhap">Đăng xuất</a>
                <a class="dropdown-item" href="../account/Doi-mat-khau">Đổi mật khẩu</a>
                <a class="dropdown-item" href="../account/Cap-nhat-tai-khoan">Tài khoản</a>
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
<%-- <fmt:setLocale value="${sessionScope.lang}" scope="request"/>
<fmt:setBundle basename="global" scope="request"/> --%>
<div class="card-body" style="background-color: #000022;">
<div class="card-header" style="background-color: #000022;">

      <h1 style="font-size: 70px; text-align: center; color: pink;"> <img src="../views/image/hkhkh.png" width="150px"
          height="120px" alt=""> AnimeGalaxy </h1>
        <h2  style="font-size: 50px; text-align: center; color: pink;">THẾ GIỚI ANIME - ANIMEGALAXY<br> CHÚC CÁC BẠN XEM PHIM VUI VẺ</h2>
    
     
 
    </div>
    <div class="card-header container" style="background-color: #000022;">
        
      </div>
  <!-- <hr style="background-color: #bbbbbb;"> -->
  
     
<jsp:include page="${page.content}"/>
  </div>
<footer class="footer-07">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-12 text-center">
          <h2 class="footer-heading"><a href="#" class="logo" style="color: #a3de83;">AnimeGalaxy</a></h2>
          <p class="menu">
            <a href="#">Home</a>
            <a href="#">Agent</a>
            <a href="#">About</a>
            <a href="#">Listing</a>
            <a href="#">Blog</a>
            <a href="#">Contact</a>
          </p>
          <ul class="ftco-footer-social">
         <img src="../views/image/hangphim.jpg" style="height: 30px;" alt="">
          <img src="../views/image/hangphim (2).jpg" style="height: 30px; width: 140px;" alt="">
           <img src="../views/image/hangphim (4).jpg" style="height: 30px;" alt="">          
          </ul>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col-md-12 text-center">
          <p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright &copy;<script>document.write(new Date().getFullYear());</script> Khoinmpc02929 | Assignment java 4 wbesite phim animegalaxy <i class="ion-ios-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
        </div>
      </div>
    </div>
  </footer>  

  <style>
    @import url(https://fonts.googleapis.com/css?family=Raleway:400,200,300,800);
    @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
  </style>
</body>
</html>