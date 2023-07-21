<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="poly.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="card">
    <!--    menu  -->
    <%@include file="layout/nav.jsp" %>
      <!--  /menu -->
          <div class="card-header" style="background-color: #000022;">
      
            <h1 style="font-size: 70px; text-align: center; color: pink;"> <img src="images/hkhkh.png" width="150px"
                height="120px" alt=""> AnimeGalaxy </h1>
              
            <hr style="background-color: azure; font-weight: bold;">
      
          </div>
        <div class="card-body" style="background-color: #000022;">
            <h1 style="text-align: center; color: #f3f3f3;">THANH GƯƠM DIỆT QUỶ - GIA NHẬP SÁT QUỶ ĐOÀN </h1>
            <div class="row">
                <div class="col-sm-8">
                    <h2 style="color: #f3f3f3; font-size: 25px;">Anime</h2> <br>
                   
                    <div class="phim">
                        <iframe width="950" height="600" src="https://www.youtube.com/embed/LkrO7a6i3mc" frameborder="0"
                            allowfullscreen></iframe>

                    </div>
                    <div class="body">
                        <h2 style="color: white;">Thanh gươm diệt quỷ tập 1 </h2>
                        <h3 style="color: white;">Full HD thời lượng 24 phút</h3>
                    </div>
                    <button class="btn btn-primary">Like</button>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
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
                    </div>

                    <h3 style="color: aqua;">Bình luận</h3>

                    <div class="cmt">
                        
                        <div class="d-flex justify-content-center row">
                            <div class="d-flex flex-column col-md-12">
                                <div class="d-flex flex-row align-items-center text-left comment-top p-2 bg-white border-bottom px-4">
                                    <div class="profile-image"><img class="rounded-circle" src="images/logokakashi.png" width="70"></div>
                                    <div class="d-flex flex-column-reverse flex-grow-0 align-items-center votings ml-1"><i class="fa fa-sort-up fa-2x hit-voting"></i><span>127</span><i class="fa fa-sort-down fa-2x hit-voting"></i></div>
                                    <div class="d-flex flex-column ml-5">
                                        <div class="d-flex flex-row post-title">
                                            <h5>NGUYỄN MINH KHÔI</h5><span class="ml-2">(khoinguyen)</span></div>
                                        <div class="d-flex flex-row align-items-center align-content-center post-title"><span class="bdge mr-1">video</span><span class="mr-2 comments">13 Bình luận&nbsp;</span><span class="mr-2 dot"></span><span>6 giờ trước</span></div>
                                    </div>
                                </div>
                                <div class="coment-bottom bg-white p-2 px-4">
                                    <div class="d-flex flex-row add-comment-section mt-4 mb-4"><img class="img-fluid img-responsive rounded-circle mr-2" src="images/minhkhoi.jpg" width="38"><input type="text" class="form-control mr-3" placeholder="Bình luận tại đây"><button class="btn btn-primary" type="button">Comment</button></div>
                                    <div
                                        class="commented-section mt-2">
                                        <div class="d-flex flex-row align-items-center commented-user">
                                            <h5 class="mr-2">Nguyễn Quốc Huy</h5><span class="dot mb-1"></span><span class="mb-1 ml-2">4 giờ trước</span></div>
                                        <div class="comment-text-sm"><span>Bộ phim rất hay xây dựng nhân vật phù  hợp , bộ phim mang nhiều đến cảm xúc của người xem. Chính thức tôi là fan của thanh gươm diệt quỷ.</span></div>
                                        <div
                                            class="reply-section">
                                            <div class="d-flex flex-row align-items-center voting-icons"><i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span class="ml-2">10</span><span class="dot ml-2"></span>
                                                <h6 class="ml-2 mt-1">Reply</h6>
                                            </div>
                                </div>
                            </div>
                            <div class="commented-section mt-2">
                                <div class="d-flex flex-row align-items-center commented-user">
                                    <h5 class="mr-2">Nguyễn Trường Giang</h5><span class="dot mb-1"></span><span class="mb-1 ml-2">5 giờ trướco</span></div>
                                <div class="comment-text-sm"><span>Tôi đã khóc khi xem bộ phim khi tình cảnh em trai tanjro biến thành quỷ quản là hành trình cho anh em </span></div>
                                <div class="reply-section">
                                    <div class="d-flex flex-row align-items-center voting-icons"><i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span class="ml-2">15</span><span class="dot ml-2"></span>
                                        <h6 class="ml-2 mt-1">Reply</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="commented-section mt-2">
                                <div class="d-flex flex-row align-items-center commented-user">
                                    <h5 class="mr-2">Nguyễn Nhựt Đông</h5><span class="dot mb-1"></span><span class="mb-1 ml-2">10 giờ trước</span></div>
                                <div class="comment-text-sm"><span>Hình ảnh đồ họa của bộ phim quá sắc nét rát phù hợp bộ phim có cốt truyện rất hay từ bắt đầu đến kết thúc. Nhân vật sắc nét ngoài ra vẫn có vui nhộn tấu hài gây thú vị mang tiếng cười đến người xem . Tôi chấm điểm cho bộ phim này 10 điểm mong admin sẽ ra những tập phim sớm hơn</span></div>
                                <div
                                    class="reply-section">
                                    <div class="d-flex flex-row align-items-center voting-icons"><i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span class="ml-2">25</span><span class="dot ml-2"></span>
                                        <h6 class="ml-2 mt-1">Reply</h6>
                                    </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>

                </div>
                <div class="col-sm-2">
                    <h2 style="color: #f3f3f3; font-size: 25px;">Tập phim></h2> <br>
                    <div id="test">

                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 1 -THANH GUƯƠM DIỆT QUỶ </span>
                        <hr>
                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 2 THANH GUƯƠM DIỆT QUỶ </span>
                        <hr>
                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 3 - THANH GUƯƠM DIỆT QUỶ</span>
                        <hr>
                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 4 - THANH GUƯƠM DIỆT QUỶ </span>
                        <hr>
                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 5 - THANH GUƯƠM DIỆT QUỶ </span>
                        <hr>
                        <img src="images/kimoytsu.jpg" alt=""> <span style="color: #f3f3f3;">Tập 6 -THANH GUƯƠM DIỆT QUỶ</span>
                        <hr>
                    </div>
                </div>
            </div>

        </div>
        
    </div>
    
    <main style="background-color: #000022;">
        <h1 style="color: #f3f3f3;"> <u>>Liên quan khác</u></h1>
        <div class="row">


            <figure class="snip0025">
                <img class="image" src="images//pikachu.jpg" alt="sample45" />
                <div>
                    <h2>Đại chiến Robot</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>

                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/hoat.jpg" alt="sample45" />
                <div>
                    <h2>Thập đại anh hùng</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/tap2.jpg" alt="sample45" />
                <div>
                    <h2>Học viện anh hùng</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/deku.jpg" alt="sample45" />
                <div>
                    <h2>Biệt đội thép</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/chuthuat.jpg" alt="sample45" />
                <div>
                    <h2>Biệt đội thép</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/onepiece.jpg" alt="sample45" />
                <div>
                    <h2>Biệt đội thép</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/luffy.jpg" alt="sample45" />
                <div>
                    <h2>Biệt đội thép</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>
            <figure class="snip0025">
                <img class="image" src="images/hocduong2.jpg" alt="sample45" />
                <div>
                    <h2>Biệt đội thép</h2>
                    <i class="ion-ios-play-outline"></i>
                    <div class="curl"></div>
                    <a href="#"></a>
                </div>
            </figure>

           

        </div>
        

    </main>


    </div>
 <!--    footer -->
    <%@include file="layout/footer.jsp" %>
   <!--  /footer -->
 <style>
        @import url(https://fonts.googleapis.com/css?family=Raleway:400,200,300,800);
        @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);

       
        
    </style>
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
</body>
</html>