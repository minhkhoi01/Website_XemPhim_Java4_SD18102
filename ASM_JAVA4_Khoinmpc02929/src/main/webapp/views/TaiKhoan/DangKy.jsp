<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng Ký</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-image: url('../views/image/topnen.jpg');
    }

    .dangnhap {
        background-color: white;
        opacity: 0.9;
        border-radius: 20px;
        position: relative;
        width: 400px;
        height: auto;
        border: 1px solid white;
        left: 35%;
        top: 50px;
        color: black;
        padding: 20px;
    }

    .trangchu {
        position: absolute;
        left: 1%;
        bottom: 0px;
        text-decoration: none;
    }

    .trangchu:hover {
        color: red;
    }

    .dn {
        position: absolute;
        right: 38%;
        bottom: 5%;
        text-decoration: none;
    }

    .dn:hover {
        color: red;
    }
</style>
</head>
<body>
<c:url var="url" value="/account" />
    <div class="container">
        <form action="${url}/Dang-ky" class="dangnhap" method="POST">
            <h1 style="text-align: center;">ĐĂNG KÝ</h1>
            <center>
                <h3 style="color: red;"><mark>${message}</mark></h3>
                <br>
            </center>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="id" placeholder="Username?" required="required" value="${username}">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password?" required="required" value="${password}">
            </div>
            <div class="form-group">
                <label for="password2">Confirm Password</label>
                <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirm Password?" required="required" value="${password2}">
            </div>
            <div class="form-group">
                <label for="fullname">Fullname</label>
                <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Fullname?" required="required" value="${fullname}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email?" required="required" value="${email}">
            </div>
            <input type="hidden" name="admin" value="false">
            <button type="submit" class="btn btn-primary btn-block">Đăng Ký</button>
        </form>
    </div>

  
    <a class="trangchu" href="${url}/Trang-chu">
        <h4> Trang chủ</h4>
    </a>
    
     <%--  <a class="dn" href="${url}/Dang-nhap">
        <h4>Đăng Nhập</h4>
    </a> --%>
</body>
</html>