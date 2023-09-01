<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quên Mật Khẩu</title>
<style>
body{
    background-image: url(../views/image/pikachu.jpg);
  
}
.dangnhap{
  background-color: white;
  opacity: 0.9;
    border-radius: 20px;
    position: relative;
    width: 400px;
    height: 320px;
    border: 1px solid white;
    left: 35%;
    top: 200px;
    color: black;
}
.dangnhaptrong{
    position: absolute;
    top:100px;
    left :80px;
}
.nhap{
    width: 250px;
    height: 25px;
    outline: none;
}
.dn{
    
    background: orangered;
    border: none;
    border-radius: 10px;
    width: 250px;
    height: 25px;
    box-shadow: inset 0 0 20px white;
}
.dn:focus{
    box-shadow: inset 0 0 5px blue;
    outline: none;
}
.quen{
    position: absolute;
    left: 90px;
    bottom: 7%;
    text-decoration: none;
}
.trangchu{
    position: absolute;
    left: 1%;
    bottom: 0px;
    text-decoration: none;
}
.trangchu:hover{
    color: red    ;
}
.quen:hover{
    color: red    ;
}
.dk{
    position: absolute;
    right: 70px;
    bottom: 7%;
    text-decoration: none;
}
.dk:hover{
    color: red;
}
</style>
</head>
<body>
<c:url var="url" value="/account"/>
  <form action="${url}/Quen-mat-khau" class="dangnhap" method="POST">
        <h1 style="text-align: center;">Quên Mật Khẩu</h1>
          <center>    <h3 style="color:red;"><mark>${message}</mark></h3><br></center> 
        <br>
        <div class="dangnhaptrong">
        <input class="nhap" type="text" name="id" placeholder="Username">
        <br><br>
        <input class="nhap" type="text" name="email" placeholder="Email">

        <br><br><br>
       <button type="submit" class="dn"><b>Gửi</b></button>
    </div>

    <a class="quen" href="${url}/Dang-nhap"><h4>Đăng Nhập</h4></a>
    <a class="dk" href="${url}/Dang-ky"><h4>Đăng Ký</h4></a>
    <br>
    <a class="trangchu" href="${url}/Trang-chu"><h4><< Trang chủ</h4></a>
    </form>
</body>
</html>