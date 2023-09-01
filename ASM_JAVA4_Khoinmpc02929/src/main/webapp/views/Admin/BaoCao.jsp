<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">FAVORITES</a>
    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">FAVORITES USERS</a>
    <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">SHARED FRIENDS</a>
  </div>
</nav>
<div class="container">


<div class="tab-content" id="nav-tabContent">
   <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
  <br>
 <table class="table table-bordered ">
  <thead class="table-dark">
    <tr>
      <th scope="col">VIDEO TITLE</th>
      <th scope="col">FAVORITES COUNT</th>
        <th scope="col">LATEST DATE</th>
      <th scope="col">OLDEST DATE</th>

    </tr>
  </thead>
  <tbody>
    <c:forEach var="rp" items="${favorites}">
    <tr>
      <td>${rp.videoTitle}</td>
      <td>${rp.count}</td>
      <td>${rp.news}</td>
      <td>${rp.oldes}</</td>

    </tr>

</c:forEach>
  </tbody>
</table>
   </div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
  <br>
    <form action="" method="get" >  
  <div class="form-group">
 <CENTER><label><h5 style="color:black;">VIDEO TITLE</h5>
 <select name="videoTitle" id="videoTitle"
 class="form-control ml-3">
 <c:forEach var="rp" items="${videoList}">
 <option value="${rp.id}"
 ${rp.id == videoTitle?'selected':'' }>${rp.title }</option>
 </c:forEach>
 </select>
 </label> &emsp;
    <button class="btn btn-success"><h5>Search</h5></button>
 </div>
	
</CENTER>
</form>
  <table class="table table-bordered ">
  <thead class="table-dark">
  
    <tr>
       <th scope="col">Username</th>
      <th scope="col">Fullname</th>
      <th scope="col">Email</th>
      <th scope="col">Favorite Date</th>

    </tr>
  </thead>
  <tbody>
   <c:forEach var="rp" items="${favoritesUser}">
    <tr>
    <td>${rp.id}</td>
      <td>${rp.fullname}</td>
      <td>${rp.email}</td>
      <td>${rp.likeDate}</td>

    </tr>
    </c:forEach>

  </tbody>
</table>
</div>
 
  
  <br><br>

 <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
 
    <form action="" method="get" >  
  <div class="form-group">
 <CENTER><label><h5 style="color:black;">VIDEO TITLE</h5>
 <select name="videoTitle2" id="videoTitle2"
 class="form-control ml-3">
 <c:forEach var="rp" items="${videoList2}">
 <option value="${rp.id}"
 ${rp.id == videoTitle2?'selected':'' }>${rp.title }</option>
 </c:forEach>
 </select>
 </label> &emsp;
    <button class="btn btn-primary"><h5>Search</h5></button>
 </div>
	
</CENTER>
</form>
  <table class="table table-bordered ">
  <thead class="table-dark">
    <tr>
       <th scope="col">SENDER NAME</th>
      <th scope="col">SENDER EMAIL</th>
      <th scope="col">RECEIVER EMAIL</th>
      <th scope="col">SENT DATE</th>

    </tr>
  </thead>
  <tbody>
   <c:forEach var="rp" items="${shareRP}">
    <tr>
    <td>${rp.fullname}</td>
      <td>${rp.from}</td>
      <td>${rp.to}</td>
      <td>${rp.shareDate}</td>
</tr>
 </c:forEach>

  </tbody>
</table></div>
<br><br>
</div>

</div>
      