<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
       <%--  ${message}
         --%>
         
          <div class="container">
          <div class="row">
         
          
          
          
            <div class="row p-12">
            <c:forEach var="vdf" items="${Videofavorite}">
             
                   
                   <div class="s1" ng-repeat="s in listSuject|limitTo:6:begin">
            <figure class="snip1205">
              <img src="../views/image/${ empty vdf.poster? '../views/image/anime.jpg': vdf.poster}" alt="sample42"  />
              <i class="ion-ios-play-outline"></i>
              <a href="WathVideo?action=watch&id=${vdf.id}"></a>
            </figure>

            <div class="card-title" style="bottom: 5px;">${vdf.title}</div>
            <p>trọn bộ full HD 24/24 tập <i class="share-social-outline"></i></ion-icon> </p>
            <i><a href="ShareVideo?id=${vdf.id}" type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
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
                          <form action="">
                              <label for="">Your Friend's Email?</label> <br>
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
            <i><a href="Unlike?id=${favorite.id}"><button class="btn" style="background-color:aqua;">UnLike</button></a></i>
  
          </div>
                </c:forEach>
                
      <center>
      </div>
           <div class="row">  
                 <nav aria-label="Page navigation example">
                      <ul class="pagination justify-content-center">
                  
                  <li class="page-item"><a ng-click="first()" class="page-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-bar-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.854 3.646a.5.5 0 0 1 0 .708L8.207 8l3.647 3.646a.5.5 0 0 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 0 1 .708 0zM4.5 1a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 1 0v-13a.5.5 0 0 0-.5-.5z"/>
</svg></a></li>
                  <li class="page-item"><a ng-click="prev()"class="page-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
</svg></a></li>
                  <li class="page-item"><a ng-click="next()"class="page-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
  <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
</svg></a></li>
                  <li class="page-item"><a ng-click="last()"class="page-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-bar-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.146 3.646a.5.5 0 0 0 0 .708L7.793 8l-3.647 3.646a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708 0zM11.5 1a.5.5 0 0 1 .5.5v13a.5.5 0 0 1-1 0v-13a.5.5 0 0 1 .5-.5z"/>
</svg></a></li>
                </ul>
              </nav>
       
            </div>
            </center>
            
</div>
</div>  