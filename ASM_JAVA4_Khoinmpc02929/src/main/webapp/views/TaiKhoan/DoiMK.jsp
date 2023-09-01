<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đổi Mật Khẩu</title>
<style>
body{
    background-image: url(../views/image/chuthuat.jpg);
}
.dangnhap{
  background-color: white;
  opacity: 0.9;
    border-radius: 20px;
    position: relative;
    width: 400px;
    height: 400px;
    border: 1px solid white;
  left: 35%;
    top: 150px;
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
.dk{
    
    background: orangered;
    border: none;
    border-radius: 10px;
    width: 250px;
    height: 25px;
    box-shadow: inset 0 0 20px white;
}
.dk:focus{
    box-shadow: inset 0 0 5px blue;
    outline: none;
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
.dn{
    position: absolute;
    right: 38%;
    bottom: 7%;
    text-decoration: none;
}
.dn:hover{
    color: red;
}
</style>
</head>
<body>
<c:url var="url" value="/account" />
    <form aaction="${url}/Cap-nhat-tai-khoan" class="dangnhap" method="POST">
        <h1 style="text-align: center;">ĐỔI MẬT KHẨU</h1>
         <center>    <h3 style="color:red;"><mark>${message}</mark></h3><br></center> 
        <div class="dangnhaptrong">
   <input class="nhap" name="id" value="${user.id}" placeholder="Username?" readonly><br><br>
 <input class="nhap" name="password1" type="password"  placeholder="Password?" ><br><br>
      <input class="nhap" name="admin" type="hidden" value="${user.admin}">
      <input class="nhap" name="fullname" type="hidden" value="${user.fullname}">
      <input class="nhap" name="email" type="hidden" value="${user.email}">
  <input class="nhap" name="password" type="password"  placeholder="New Password?" ><br><br>
        <input class="nhap" type="password" name="password2" placeholder="New Confirm Password?">
        <br>
        <br>
       <button type="submit" class="dk"><b>Thay Đổi</b></button>
    </div>


    <a class="dn" href="${url}/Dang-nhap"><h4>Đăng Nhập</h4></a>
    <a class="trangchu" href="${url}/Trang-chu"><h4><< Trang chủ</h4></a>
    </form>
</body>
</html>