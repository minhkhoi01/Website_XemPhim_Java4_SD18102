<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

             
         
          <center>    <h3 style="color:red;">${message}</h3><br></center> 
<nav>
<div class="container">


  <div class="nav nav-tabs" id="nav-tab" role="tablist" >
    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">VIDEO EDITION</a>
    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">VIDEO LIST</a>
  
  </div>
</nav>

<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab"  style="background-image: url('../views/image/topnen.jpg');">
  <br>
  
  <div class="container">
  <div class="row">
<c:url var="url" value="/admin" />
    <form action="" method="POST" enctype="multipart/data">  

 <div class="col-4">

 <img style="width: 100%;" src="../views/image/${empty video.poster? 'anime.jpg' :video.poster  }" class="card-img-top" alt="...">

<div class="input-group mb-3 mt-3">
		<div class="input-group-prepend">
		
		</div>
		<div class="custom-life">
		 <input type="file" class="custom-file-input"  id="cover" name="hinh"/>
	 <label for="cover"><h5>Chọn File</h5></label>
		</div>
</div>
    </div>

  <div class="col-8 ">
  <input class="nhap" name="hinh2" type="hidden" value="${video.poster}">
  
    <label><H5>VIDEO ID?</H5></label><br>
    <input class="nhap" type="text" name="id"  value="${video.id}">
         <br> <br>
         <label><H5>VIDEO TITLE?</H5></label><br>
        <input  class="nhap" type="text" name="title" value="${video.title}" >
         <br>  <br> 
         <label><H5>VIEW COUNT?</H5></label><br>
        <input class="nhap" type="text" name="views"  value="${video.views}" >
        
         <br><br>
          <label><input  type="radio" name="active"  value="true" ${video.active? 'checked':''} >ACTIVE</label>&ensp;&ensp;&ensp;
           <label><input  type="radio" name="active" vaule="false" ${!video.active? 'checked':''} >INACTIVE</label><br />
    </div>
  </div>
 <label><H5>DESCRIPTION?</H5></label><br>
   <textarea  name ="description" class="form-control" id="exampleFormControlTextarea1" rows="3">${video.description}</textarea>
   <br><br><br>
 
 <left>
   <button class="btn btn-success" formaction="${url}/CreateVD" ><h5>Create</h5></button></a>
   <button class="btn btn-success" formaction="${url}/UpdateVD" ><h5>Update</h5></button></a>
   <button class="btn btn-success" formaction="${url}/DeleteVD" ><h5>Delete</h5></button></a>
   <button class="btn btn-success" formaction="${url}/ResetVD" ><h5>Reset</h5></button></a>
</left>
   
     </form>
   <br><br>
</div>
  </div>
  
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" style="background-image: url('../views/image/topnen.jpg');">
 <br> 
 <div class="container">
  <table class="table table-bordered ">
  <thead class="table-dark">
    <tr>
      <th scope="col">Youtube Id</th>
      <th scope="col">Video Title</th>
      <th scope="col">Video Count</th>
      <th scope="col">Status</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody >
  <c:forEach var="vd" items="${videos}">
    <tr style="color: white;">
      <td>${vd.id}</td>
      <td>${vd.title}</td>
      <td>${vd.views}</td>
      <td>${vd.active? 'Active': 'Inactive'}</td>
    <td>  <a href="${url}/EditVD?id=${vd.id}" style="color:blue;" >Edit</a></td>
    </tr>
   </c:forEach>


  </tbody>
</table>


<label><h5>${countVD} Videos </h5></label>
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
      

        
        <div class="row">
          <article ng-controller="sb" class="col-sm-12" style="background-color:orange;">
            <div class="row row-cols-1 row-cols-md-3">
             

              
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