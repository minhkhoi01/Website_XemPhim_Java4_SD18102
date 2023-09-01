<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="card">
<div class="card-body" style="background-color: #000022;">
		<h1 style="text-align: center; color: #f3f3f3;">${videos.title}</h1>
		<div class="row">
			<div class="col-sm-8">
				<h2 style="color: #f3f3f3; font-size: 25px;">Anime</h2>
				<br>

				<div class="phim">
					<iframe width="950" height="600"
						src="https://www.youtube.com/embed/${videos.id}?autoplay=1"
						title="${videos.title}" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe>

				</div>
				<div class="body">
					<h2 style="color: white;">${videos.title}</h2>
					Lượt xem
					<h2 style="color: white;">${videos.views}</h2>
					<h3 style="color: white;">Phim Full HD</h3>
				</div>
				<a href="LikeVideo?id=${videos.id}" type="button"
					class="btn btn-primary">Like</a>
			<a href="ShareVideo?id=${videos.id}"> <button class="btn btn-danger" >Share</button></a>
					
					<%--  <a
					href="ShareVideo?id=${videos.id}" type="button"
					class="btn btn-danger" data-toggle="modal"
					data-target="#exampleModal"> Share </a>

				<!-- Modal -->
				

				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Chia sẽ
									video đển bạn bè</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
											<c:url var="url" value="/account"/>
							<div class="modal-body">
								<form action="ShareVideo" class="dangnhap" method="POST">
								<center>    <h3 style="color:red;"><mark>${message}</mark></h3><br></center> 
									<label for="">Mời nhập địa chỉ Email?</label> <br>
									     <input type="hidden" name="id" value="${videoId}"/>
									 <input
										class="form-control" type="email" name="email" value="${videoId}" placeholder="Nhập email">
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-danger">SEND</button>
							</div>
						</div>
					</div>
				</div> --%>

				<h3 style="color: aqua;">Bình luận</h3>

				<div class="cmt">

					<div class="d-flex justify-content-center row">
						<div class="d-flex flex-column col-md-12">
							<div
								class="d-flex flex-row align-items-center text-left comment-top p-2 bg-white border-bottom px-4">
								<div class="profile-image">
									<img class="rounded-circle" src="../views/image/logokakashi.png"
										width="70">
								</div>
								<div
									class="d-flex flex-column-reverse flex-grow-0 align-items-center votings ml-1">
									<i class="fa fa-sort-up fa-2x hit-voting"></i><span>127</span><i
										class="fa fa-sort-down fa-2x hit-voting"></i>
								</div>
								<div class="d-flex flex-column ml-5">
									<div class="d-flex flex-row post-title">
										<h5>NGUYỄN MINH KHÔI</h5>
										<span class="ml-2">(khoinguyen)</span>
									</div>
									<div
										class="d-flex flex-row align-items-center align-content-center post-title">
										<span class="bdge mr-1">video</span><span
											class="mr-2 comments">13 Bình luận&nbsp;</span><span
											class="mr-2 dot"></span><span>6 giờ trước</span>
									</div>
								</div>
							</div>
							<div class="coment-bottom bg-white p-2 px-4">
								<div class="d-flex flex-row add-comment-section mt-4 mb-4">
									<img class="img-fluid img-responsive rounded-circle mr-2"
										src="../views/image/minhkhoi.jpg" width="38"><input type="text"
										class="form-control mr-3" placeholder="Bình luận tại đây">
									<button class="btn btn-primary" type="button">Comment</button>
								</div>
								<div class="commented-section mt-2">
									<div class="d-flex flex-row align-items-center commented-user">
										<h5 class="mr-2">Nguyễn Quốc Huy</h5>
										<span class="dot mb-1"></span><span class="mb-1 ml-2">4
											giờ trước</span>
									</div>
									<div class="comment-text-sm">
										<span>Bộ phim rất hay xây dựng nhân vật phù hợp , bộ
											phim mang nhiều đến cảm xúc của người xem. Chính thức tôi là
											fan của thanh gươm diệt quỷ.</span>
									</div>
									<div class="reply-section">
										<div class="d-flex flex-row align-items-center voting-icons">
											<i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i
												class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span
												class="ml-2">10</span><span class="dot ml-2"></span>
											<h6 class="ml-2 mt-1">Reply</h6>
										</div>
									</div>
								</div>
								<div class="commented-section mt-2">
									<div class="d-flex flex-row align-items-center commented-user">
										<h5 class="mr-2">Nguyễn Trường Giang</h5>
										<span class="dot mb-1"></span><span class="mb-1 ml-2">5
											giờ trướco</span>
									</div>
									<div class="comment-text-sm">
										<span>Tôi đã khóc khi xem bộ phim khi tình cảnh em trai
											tanjro biến thành quỷ quản là hành trình cho anh em </span>
									</div>
									<div class="reply-section">
										<div class="d-flex flex-row align-items-center voting-icons">
											<i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i
												class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span
												class="ml-2">15</span><span class="dot ml-2"></span>
											<h6 class="ml-2 mt-1">Reply</h6>
										</div>
									</div>
								</div>
								<div class="commented-section mt-2">
									<div class="d-flex flex-row align-items-center commented-user">
										<h5 class="mr-2">Nguyễn Nhựt Đông</h5>
										<span class="dot mb-1"></span><span class="mb-1 ml-2">10
											giờ trước</span>
									</div>
									<div class="comment-text-sm">
										<span>Hình ảnh đồ họa của bộ phim quá sắc nét rát phù
											hợp bộ phim có cốt truyện rất hay từ bắt đầu đến kết thúc.
											Nhân vật sắc nét ngoài ra vẫn có vui nhộn tấu hài gây thú vị
											mang tiếng cười đến người xem . Tôi chấm điểm cho bộ phim này
											10 điểm mong admin sẽ ra những tập phim sớm hơn</span>
									</div>
									<div class="reply-section">
										<div class="d-flex flex-row align-items-center voting-icons">
											<i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i
												class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span
												class="ml-2">25</span><span class="dot ml-2"></span>
											<h6 class="ml-2 mt-1">Reply</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<%-- Chỉ lấy 5 video liên quan --%>
			<div class="col-sm-2">
                    <h2 style="color: #f3f3f3; font-size: 25px;">Tập phim></h2> <br>
                    <div id="test">

                        <c:forEach var="item" items="${videoss}" begin="1" end="15">
                            <div class="video">
                                <p align="justify">
                                    <a href="#"> <a href="WathVideo?action=watch&id=${item.id}">
                                            <center>
                                                <img style="width: 70%;"
                                                    src="../views/image/${ empty item.poster? '../views/image/anime.jpg': item.poster}"
                                                    class="card-img-top" alt="...">
                                    </a>
                                    </a> &ensp;
                                <h5 style="color: #f3f3f3;">${item.title}</h5>
                                </p>
                            </div>
                        </c:forEach>
                        
                    </div>
                </div>
		</div>

	</div>

</div>

<main style="background-color: #000022;">
	<h1 style="color: #f3f3f3;">
		<u>>Nội Dung phim</u>
	</h1>
	<div class="row">

		<p>${videos.description}</p>

	</div>

</main>
</div>