<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cập Nhật Tài Khoản</title>
<style>
body{
    background-image: url(../views/image/onepiece.jpg);
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
    
    background: blue;
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

</style>
</head>
<body>
<c:url var="url" value="/account" />
    <form action="${url}/Cap-nhat-tai-khoan" class="dangnhap" method="POST">
        <h1 style="text-align: center;">CẬP NHẬT TÀI KHOẢN</h1>
   <div class="dangnhaptrong">
        <input class="nhap" name="id" value="${user.id}" placeholder="Username?" readonly><br><br>
 <input class="nhap" name="password" value="${user.password}" type="password"  placeholder="Password" readonly><br><br>
 <input class="nhap" name="fullname" value="${user.fullname}" placeholder="Fullname"><br><br>
 <input class="nhap" name="email" value="${user.email}" placeholder="Email?"><br><br>
<input class="nhap" name="admin" type="hidden" value="${user.admin}"><br>
     <button type="submit" class="dk"><b>Cập Nhật</b></button>
        <br>
        <br>
  
    </div> 
  
    </form>
</body>
</html>