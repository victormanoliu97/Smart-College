<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Smart College</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="shortcut icon" href="https://png.pngtree.com/svg/20161123/97bea0669c.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
	

	
.container bootstrap snippet
{
	background-color: #E3D883; 
}					                
body{background-color: #E3D883;}	
.form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin .checkbox
{
    margin-bottom: 10px;
}
.form-signin .checkbox
{
    font-weight: normal;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 20px;
    padding: 40px 0px 20px 0px;
    background-color: #f7f7f7;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.login-title
{
    color: #555;
    font-size: 18px;
    font-weight: 400;
    display: block;
}
.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}

label {
    display: block;
    font: 1rem 'Fira Sans', sans-serif;
}

input,
label {
    margin: .4rem 0;
}


	
</style>


</head>

<body>
	
	<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark static-top mb-5 shadow">
  <div class="container">
    <a class="navbar-brand" href="#" style="color:MediumSeaGreen;"> <b><mark>Smart</mark></b> College </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/News">News</a>
        </li>
        <c:choose>
    	<c:when test="${role == 'PROFESSOR'}">
        <li class="dropdown">
						<a href="#" class="nav-item nav-link active" data-toggle="dropdown">My Subjects</a>
						<div class="dropdown-menu">
							<c:forEach var = "subject" items = "${profsubjects}">
						    <input type="hidden" class="form-control" value = "${userId}" name= "idd" id= "idd" required>
							<a href="/SmartCollege/ViewSubject?id=${subject.idSubject}&user=${userId}" class="dropdown-item">${subject.subjectName}</a>
						    </c:forEach>
						</div>
		</li>
		</c:when>
        </c:choose>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Contact">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/AboutUs">About Us</a>
        </li>
         <c:choose>
      	<c:when test="${username != null}">
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Logout">Logout</a>
        </li>
        </c:when>
        <c:when test="${username == null}">
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Login">Login</a>
        </li>
        </c:when>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>

<!-- Page Content -->


<div class="col-sm-12 col-lg-8 mr-auto ml-auto border p-4" style="background-color:white;">
  <form action= "uploadAnnouncement" method = "post">
    <div class="form-group">
      <label><strong>Add announcement</strong></label>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter Title" value="${announcement.announcementTitle }" name="announcementTitle" id="announcementTitle" required autofocus>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter Subtitle" value="${announcement.announcementSubtitle }" name="announcementSubtitle" id="announcementSubtitle" required autofocus>
      </div>
      <div class="input-group">
       <div class="input-group-prepend">
          <span class="input-group-text">Enter Text</span>
       </div>
         <textarea class="form-control" value="${announcement.announcementText }" name="announcementText" id="announcementText"></textarea>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" value="${announcement.photoLink }" placeholder="Enter Photo Link" name="photoLink" id="photoLink" required autofocus>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" value="${announcement.tag }" placeholder="Enter Tag" name="tag" id="tag" required autofocus>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" value="${announcement.available }" placeholder="Enter avb" name="available" id="available" required autofocus>
      </div>
      <label for="start">Start date:</label>

	  <input type="date" value="${announcemet.date }" id="date" name="date"
       value="${announcement.date }"
       min="2020-01-01" max="2030-12-31">
    </div>
    <div class="form-group">
      <button type="submit" name="submit" class="btn btn-block btn-dark">Upload</button>
    </div>
  </form>
</div>

<script>
$(document).ready(function() {
	  $('input[type="file"]').on("change", function() {
	    let filenames = [];
	    let files = document.getElementById("customFile").files;
	    if (files.length > 1) {
	      filenames.push("Total Files (" + files.length + ")");
	    } else {
	      for (let i in files) {
	        if (files.hasOwnProperty(i)) {
	          filenames.push(files[i].name);
	        }
	      }
	    }
	    $(this)
	      .next(".custom-file-label")
	      .html(filenames.join(","));
	  });
	});
</script>

</body>
</html>