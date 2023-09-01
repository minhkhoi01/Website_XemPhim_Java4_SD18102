<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

             
             
           
             <center>    <h4 style="color:red;">${message}</h4><br></center> 
<nav>
<div class="container">
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">USER EDITION</a>
    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">USER LIST</a>
  
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" style="background-image: url('../views/image/topnen.jpg');">
  <br>
  <div class="container" >
<left>
    <c:url var="url" value="/admin" />
    <form action="${url}/User" method="POST" class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="id"><h5>Tên đăng nhập</h5></label>
                <input class="form-control" type="text" name="id" value="${user.id}">
            </div>
            <div class="form-group">
                <label for="password"><h5>Mật khẩu</h5></label>
                <input class="form-control" type="password" name="password" value="${user.password}">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="fullname"><h5>Họ và tên</h5></label>
                <input class="form-control" type="text" name="fullname" value="${user.fullname}">
            </div>
            <div class="form-group">
                <label for="email"><h5>Email</h5></label>
                <input class="form-control" type="text" name="email" value="${user.email}">
            </div>
            <input class="form-control" name="admin" type="hidden" value="${user.admin}">
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-3">
            <button class="btn btn-success btn-block" formaction="${url}/Create"><h5>Create</h5></button>
        </div>
        <div class="col-md-3">
            <button class="btn btn-success btn-block" formaction="${url}/Update"><h5>Update</h5></button>
        </div>
        <div class="col-md-3">
            <button class="btn btn-success btn-block" formaction="${url}/Delete"><h5>Delete</h5></button>
        </div>
        <div class="col-md-3">
            <button class="btn btn-success btn-block" formaction="${url}/Reset"><h5>Reset</h5></button>
        </div>
    </div>
</form>

   <br><br>
</div>
  </div>
  <br><br>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" style="background-image: url('../views/image/topnen.jpg');">
 <div class="container">
  <table class="table table-bordered ">
  <thead class="table-dark">
    <tr>
      <th scope="col">Tên đăng nhập</th>
      <th scope="col" hidden>Mật khẩu</th>
      
      <th scope="col">Họ và tên</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="us" items="${users}">
    <tr style="color: white;">
      <td>${us.id}</td>
 <%--      <td>${us.password}</td> --%>
      <td>${us.fullname}</td>
      <td>${us.email}</td>
       <td>${us.admin? 'Admin': 'User'}</td>
  <td>  <a href="${url}/Edit?id=${us.id}" style="color:blue;">Edit</a></td>
    </tr>

</c:forEach>
  </tbody>
</table>
<label><h5>${count} User </h5></label>
          <nav aria-label="Page navigation example">
                      <ul class="pagination justify-content-center">
                  
                  <li class="page-item"><a class="page-link" href="?trang=page1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-bar-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.854 3.646a.5.5 0 0 1 0 .708L8.207 8l3.647 3.646a.5.5 0 0 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 0 1 .708 0zM4.5 1a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 1 0v-13a.5.5 0 0 0-.5-.5z"/>
</svg></a></li>
                  <li class="page-item"><a class="page-link" href="?trang=page2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
</svg></a></li>
                  <li class="page-item"><a class="page-link" href="?trang=page3"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
  <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
</svg></a></li>
                  <li class="page-item"><a class="page-link" href="?trang=page4"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-bar-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.146 3.646a.5.5 0 0 0 0 .708L7.793 8l-3.647 3.646a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708 0zM11.5 1a.5.5 0 0 1 .5.5v13a.5.5 0 0 1-1 0v-13a.5.5 0 0 1 .5-.5z"/>
</svg></a></li>
                </ul>
              </nav>
  </div>

</div>            
                          <div class="modal fade" id="share" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Chia Sẻ Video</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <div class="card">
                                     
                                      <form name="form">
                                        <div class="form-group">
                                          <label style="float: left;" for="inputHT1"><b>Email người nhận:<span style="color: red;">*</span></b></label>
                                          <input ng-model="ht1" type="text" class="form-control" id="inputHT1"  name="ht1" required>
                                    
                                        </div>
                                         <a style="float: right;" href="#" class="nav-link" data-toggle="modal" data-target="#share"> <button class="btn btn-danger" >Gửi</button></a></div> 
                                        </form>
                                    
                                  </div>
                              </div>                  
                  </div>
                </div>
            </article>
            </div>
            </div>
            </div>
 