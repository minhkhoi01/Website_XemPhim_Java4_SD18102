<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${page.title}</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link href="../views/file.css" rel="stylesheet">
<style type="text/css">
 body {
        background-image: url('../views/image/topnen.jpg');
     
        .container {
            margin-top: 50px;
        }
       .container h5{
        color: white;
        }
        .nhap {
            width: 100%;
            height: 30px;
            outline: none;
            padding: 5px;
        }
  
    }
    
</style>
</head>
<body>
<div class="admin">
                <nav class="Row">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark col">
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" ><H4 style="color:pink;">ANIME GALAXY -ADMIN</H4><span class="sr-only">(current)</span></a>
                      </li>
                  
                  </ul>
                         <ul  class="navbar-nav ml-auto">
                   <li class="nav-item">
                        <a class="nav-link" href="Trang-Chu-Admin"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                            <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                          </svg>Home<span class="sr-only">(current)</span></a>
                      </li>
                        <li class="nav-item">

                         <a  href="#">
     <a class="nav-link" href="QL-Video"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
</svg>Video<span class="sr-only">(current)</span></a>
                         </a>
 
                      </li>
                           <li class="nav-item">

                         <a  href="#">
     <a class="nav-link" href="QL-Users"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                          </svg>User<span class="sr-only">(current)</span></a>
                         </a>
 
                      </li>
                           <li class="nav-item">

                         <a  href="#">
     <a class="nav-link" href="Reports">      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16">
  <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
</svg>
       Report<span class="sr-only">(current)</span></a>
                         </a>
 
                      </li>
                         <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                          </svg>
                 My Account
                      </a>
             <c:choose>
<c:when test="${empty sessionScope.user}">
    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a  class="dropdown-item" href="../account/Dang-nhap">Login</a>
                        <a class="dropdown-item" href="../account/Doi-mat-khau">Change-password</a>
                        <a class="dropdown-item" href="../account/Dang-ky">Registrarion</a>
                        <a    class="dropdown-item" href="../account/Cap-nhat-tai-khoan">Edit-profile</a>
                 
                      </div>
</c:when>
<c:otherwise>
       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      
                        <a class="dropdown-item" href="../account/Doi-mat-khau">Change-password</a>
                    
                        <a    class="dropdown-item" href="../account/Cap-nhat-tai-khoan">Edit-profile</a>
                     
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../account/Dang-nhap">Log-off</a>
</c:otherwise>
</c:choose>
                
                    </li>
                                <li class="nav-item">

                         <a  href="#">
     <a class="nav-link" href="#">      
       <span class="sr-only">(current)</span></a>
                         </a>
                      </li>
  
                  </ul>
                </div>
              </nav>
               
        </nav>
     
     </div>        
        
<jsp:include page="${page.content}"/>
           
</body>
</html>