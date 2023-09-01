<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng Nhập</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: url('../views/image/kimoytsu.jpg');
    }
    .dangnhap {
        background-color: white;
        opacity: 0.9;
        border-radius: 20px;
        position: relative;
        width: 400px;
        height: 320px;
        border: 1px solid white;
        margin: 170px auto;
        padding: 20px;
        color: black;
    }
    .quen, .dk {
        text-decoration: none;
        color: white;
    }
    .quen:hover, .dk:hover {
        color: red;
    }
</style>
</head>
<body>

<c:url var="url" value="/account" />
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="${url}/Dang-nhap" class="dangnhap" method="POST">
                <h1 style="text-align: center;">ĐĂNG NHẬP</h1>
                <h3 style="color:red;text-align: center;"><mark>${message}</mark></h3><br>
                <div class="form-group">
                    <input class="form-control" name="username" placeholder="Tên tài khoản" required="required">
                </div>
                <div class="form-group">
                    <input class="form-control" name="password" type="password" placeholder="Mật khẩu" required="required">
                </div>
                <br>
                <button type="submit" class="btn btn-success btn-block"><b>Đăng Nhập</b></button>
            </form>
            <div class="text-center mt-3">
                <a class="quen" href="${url}/Quen-mat-khau"><h4>Quên Mật Khẩu</h4></a>
                <a class="dk" href="${url}/Dang-ky"><h4>Đăng Ký</h4></a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
