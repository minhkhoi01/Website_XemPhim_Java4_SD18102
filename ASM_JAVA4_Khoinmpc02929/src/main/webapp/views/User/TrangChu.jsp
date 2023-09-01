<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

 <fmt:setBundle basename="home"/>
        
 <center>      <h5 >${thongbao1}</h5><br><center>
          <div class="col-12" style="background-color:#000022;">
            <div class="container">
            <div class="row p-2">
             <div class="row">
          <div class="col-lg-1">
          </div>
    <div class="card-header container" style="background-color: #000022;">
        <div class="row">
          <div class="col-lg-1">

          </div>
         <div class="col-lg-10">
            <figure class="snip0016">
              <img src="../views/image/kimoytsu.jpg" alt="sample43" />
              <figcaption>
                <h1>Thanh Gươm Diệt Qủy</h1>
                <p style="font-size: 24px;">Chứng kiến quê hương bị tàn phá, chàng thanh niên Eren Yeager quyết tâm
                  chiến đấu với bọn Titan Khổng lồ đang đe dọa hủy diệt loài người. <br>
                  Để tiêu diệt bọn titan khuổng lồ eren đã gia nhậpQuân đoàn chống người khổng lồ.Eren bắt đầu khóa tập
                  huấn cùng Quân đoàn Huấn luyện. <br>
                  Khi chiến đấu với bọn chúng eren vô tình bị một con titan nuốt vào bụng khi vào hoàn cảnh và ý chí
                  kiên cường khiến cậu bộc phát khả năng thành titan tiến công <br>
                  sau khi hóa thành titan tiến công thì cậu đá chiến đấu với các titan xâm lược khác.
                  Diễn viên chính:Kaji Yuki,Ishikawa Yui,Inoue Marina</p>
                <a href="#"></a>
              </figcaption>
            </figure>
            <!-- <img class="image1" src="images/titan.jpg" alt="image1" height="1000px" width="1000px"> -->
          </div>

          <div class="col-lg-1">

          </div>

        </div>
        <h1 style="color: #f3f3f3;">Thanh Gươm Diệt Qủy</h1> <br>
        <h1 style="color: #f3f3f3;">THỜI LƯỢNG: 24 PHÚT FULL HD </h1> <br>
        <h1 style="color: #f3f3f3;">Phụ đề lồng tiếng</h1>
<!-- 
        <li><a href="noidung.html"><button class="button">XEM PHIM</button> </a></li> -->

      
        <div class="container">

          <div class="formDanhMuc  mt-5 text-center ">
  
              <div class="row mt-3">
              
               
                <div class="form-floating cow col-lg-3 ">

                  <img src="../views/image/tạp1.jpg" alt="">
                </div>
                <div class="/ASM_JAVA4_SD18102/ASM_JAVA4_WEB/form-floating cow col-lg-3 ">

                  <img src="../views/image/tap5.jpg" alt="">
                </div>
                <div class="/ASM_JAVA4_SD18102/ASM_JAVA4_WEB/form-floating cow col-lg-3 ">

                  <img src="../views/image/tap3.jpg" alt="">
                </div>
                <div class="/ASM_JAVA4_SD18102/ASM_JAVA4_WEB/form-floating cow col-lg-3 ">

                  <img src="../views/image/tap4.jpg" alt="">
                </div>
              </div>
            </div>
  
  
      </div>
      </div>
  <!-- <hr style="background-color: #bbbbbb;"> -->
  
 
  <br>
  <br>
        <div class="row">
          <c:forEach var="item" items="${videos}">
           <div class="s1">
            <figure class="snip1205">
              <img src="../views/image/${ empty item.poster ? 'anime.jpg' : item.poster }" alt="sample42"  />
              <i class="ion-ios-play-outline"></i>
              <a href="WathVideo?action=watch&id=${item.id}"></a>
            </figure>
            <p>Lượt xem:${item.views}</p>
            <div class="card-title" style="bottom: 5px;">${item.title}</div>
            <p>trọn bộ full HD 24/24 tập <i class="share-social-outline"></i></ion-icon> </p>
            <i><a href="ShareVideo?id=${item.id}" type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
              Share
          </a>
  
          <!-- Modal -->
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">SEND VIDEO TO YOUR FRIEND</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                      </div>
                      <div class="modal-body">
                      <c:url var="url" value="/account"/>
                        <center>    <h3 style="color:red;"><mark>${message}</mark></h3><br></center> 
                        <form action="ShareVideo" class="dangnhap" method="POST">
        <label for="">Email của bạn bè?</label> <br>
        <input type="hidden" name="id" value="${videoId}" />
        <input class="nhap" type="text" name="email" placeholder="Email">
    </form>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-danger">SEND</button>
                      </div>
                  </div>
              </div>
          </div></a></i>
            <i><a href="LikeVideo?page=1&id=${item.id}"><button class="btn" style="background-color:aqua;">Like</button></a></i>
  
          </div>
</c:forEach>
</div>
</div>
          </div>
           <div class="row">

          <div class="container">

            <h4 style="color: aqua;">Các bộ Anime khác</h4>

            <div id="mycarousel" class="carousel slide" data-ride="carousel">
    
              <!--Cho hiện thị chỉ số nếu muốn-->
              <ol class="carousel-indicators">
                <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                <li data-target="#mycarousel" data-slide-to="1" class=""></li>
                <li data-target="#mycarousel" data-slide-to="2" class=""></li>
                <li data-target="#mycarousel" data-slide-to="3" class=""></li>
              </ol>
              <!--Hết tạo chỉ số-->
    
              <!--Các slide bên trong carousel-inner-->
              <div class="carousel-inner">
    
                <!--Slide 1 thiết lập hiện thị đầu tiên .active-->
                <div class="carousel-item active">
                  <img class="d-block w-100" src="../views/image/titan1.jpg">
                  <!--Cho thêm hiện thị thông tin-->
                  <div class="carousel-caption d-none d-md-block">
                    <h5 style="font-size: 60px; text-align: left; color:blueviolet; font-weight: bold;">ĐẠI CHIẾN TITAN
                      <br>
                       Quyết chiến</h5>
    
                    <p style="text-align: left;">
                      <button class="button">XEM PHIM</button>
                    </p>
                  </div>
                </div>
    
                <!--Slide 2-->
                <div class="carousel-item">
                  <img class="d-block w-100" src="../views/image/pikachu.jpg">
    
                  <div class="carousel-caption d-none d-md-block">
                    <h5 style="font-size: 60px; text-align: left; color: #ffffff; font-weight: bold;">Cuộc chiến robot<br>
                      Trận chiến cuối cùng full HD </h5>
    
                    <p style="text-align: left;">
                      <button class="button">XEM PHIM</button>
                    </p>
                  </div>
                </div>
                <!--Slide 3-->
                <div class="carousel-item">
                  <img class="d-block w-100" src="../views/image/onepiece.jpg">
    
                  <div class="carousel-caption d-none d-md-block">
                    <h5 style="font-size: 60px; text-align: left; color: #ffffff; font-weight: bold;">Vua Hải Tặc bản anime
                      <br>
                      trọn bộ 235 tập </h5>
    
                    <p style="text-align: left;">
                      <button class="button">XEM PHIM</button>
                    </p>
                  </div>
                </div>   
                <!-- slide 4 -->
                <div class="carousel-item">
                  <img class="d-block w-100" src="../views/image/chuthuat.jpg">
    
                  <div class="carousel-caption d-none d-md-block">
                    <h5 style="font-size: 60px; text-align: left; color: #ffffff; font-weight: bold;">Chú thuật sư <br>
                      Hồi chiến</h5>
    
                    <p style="text-align: left;">
                      <button class="button">XEM PHIM</button>
                    </p>
                  </div>
                </div>
              </div>    
              <!--Cho thêm khiển chuyển slide trước, sau nếu muốn-->
              <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev"> <span
                  class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
              <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next"> <span
                  class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
              <!--Hết tạo điều khiển chuyển Slide-->    
            </div>    
            <div id="mycarousel" class="carousel slide" data-ride="carousel">
    
              <!--Cho hiện thị chỉ số nếu muốn-->
              <ol class="carousel-indicators">
                <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                <li data-target="#mycarousel" data-slide-to="1" class=""></li>
                <li data-target="#mycarousel" data-slide-to="2" class=""></li>
                <li data-target="#mycarousel" data-slide-to="3" class=""></li>
              </ol>
              <!--Hết tạo chỉ số-->
    
              <!--Các slide bên trong carousel-inner-->    
            </div>           
          </div>
        </div> 
   <div class="container" style="width: 250px; height: 50px;">
  <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
    <div class="btn-group mr-2" role="group" aria-label="First group">
      <c:if test="${trang == 1}">
        <button type="button" class="btn btn-secondary" disabled> < </button>
      </c:if>
      <c:if test="${trang > 1}">
        <button type="button" class="btn btn-secondary" onclick="window.location.href='Trang-Chu?Page=${trang - 1}'"> < </button>
      </c:if>

      <c:forEach varStatus="i" begin="1" end="${maxpage}">
        <button type="button" class="btn btn-secondary ${trang == i.index ? 'active' : ''}" onclick="window.location.href='Trang-Chu?Page=${i.index}'">${i.index}</button>
      </c:forEach>

      <c:if test="${trang == maxpage}">
        <button type="button" class="btn btn-secondary" disabled> > </button>
      </c:if>
      <c:if test="${trang < maxpage}">
        <button type="button" class="btn btn-secondary" onclick="window.location.href='Trang-Chu?Page=${trang + 1}'"> > </button>
      </c:if>
    </div>
  </div>
</div>

         

  