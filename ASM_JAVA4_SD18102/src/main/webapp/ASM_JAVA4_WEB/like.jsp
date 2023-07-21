<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="stylesheet" href="poly.css">
  <link rel="stylesheet" href="https://ionic.io/ionicons">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Like</title>
</head>

<body>

  <div class="card">
    <%@include file="layout/nav.jsp" %>
    <div class="card-header" style="background-color: #000022;">

      <h1 style="font-size: 70px; text-align: center; color: pink;"> <img src="images/hkhkh.png" width="150px"
          height="120px" alt=""> AnimeGalaxy </h1>
        
      <hr style="background-color: azure; font-weight: bold;">

    </div>
    <div class="card-body" style="background-color: #000022;">
      <h1 style="color: white;">Anime yêu thích <img src="images/icons8_Heart_40px.png" alt=""></h1>
      <select
      style="font-size: 30px; background-color: #000022; color: white;">
      <option value="Anime">Sắp xếp <i class="bi bi-arrow-down-up"></i></option>
      <option value="Hành động">Tăng dần</option>
      <option value="Phiêu lưu">Giảm dần</option>
     
    </select>
      <div class="row">
        <div class="s1">
          <figure class="snip1205">
            <img src="images/titan.jpg" alt="sample42" />
            <i class="ion-ios-play-outline"></i>
            <a href="noidung.html"></a>
          </figure>
          <div>Lượt xem:3233 | Like: 3000</div>
          <div class="card-title" style="bottom: 5px;">Attack On Titan SS1</div>
          <p>trọn bộ full HD 24/24 tập <i class="share-social-outline"></i></ion-icon> </p>
          <i><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
            Share
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Chia sẽ video đển bạn bè</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <label for="">Mời nhập địa chỉ Email?</label> <br>
                            <input class="form-control" type="email" name="">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-danger">SEND</button>
                    </div>
                </div>
            </div>
        </div></a></i>
          <i><a href=""><button class="btn" style="background-color:aqua;">Unlike</button></a></i>

        </div>

     
      </div>

    </div>
  <%@include file="layout/footer.jsp" %>
  </div>
  </div>
  <style>
    @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);

    
  </style>
  <script src="">
    /* Demo purposes only */
    $(".hover").mouseleave(
      function () {
        $(this).removeClass("hover");
      }
    );
  </script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>