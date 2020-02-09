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
	
	.carousel-item {
  height: 65vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.navbar .dropdown-menu {
  padding: 10px;
  margin-top: 7.2px;
  background-color: #353A40;
}
.navbar .dropdown-menu .dropdown-item {
  position: relative;
  padding: 8px 15px;
  color: #fff;
  font-size: 1.2rem;
  border-bottom: 1px solid rgba(255, 255, 255, .1);
  transition: color 0.2s ease-in;
}
.navbar .dropdown-menu .dropdown-item:last-child {
  border-bottom: none;
}
.navbar .dropdown-menu .dropdown-item:hover {
  background: transparent;
  color: #c0ca33;
}
.navbar .dropdown-menu .dropdown-item::before {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  top: 0;
  width: 5px;
  background-color: #c0ca33;
  opacity: 0;
  transition: opacity 0.2s ease-in;
}
.navbar .dropdown-menu .dropdown-item:hover::before {
  opacity: 1;
}

.page-timeline {
    margin: 15px 20px 0 auto;
    position: absolute;
    max-width: 1000px;
}

.page-timeline:before {
    position: absolute;
    content: '';
    top: 0;
    bottom: 0;
    left: 303px;
    right: auto;
    height: 100%;
    width: 3px;
    background: #3498db;
    z-index: 0;
    
        -webkit-box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
    box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
}

.page-timeline:after {
    position: absolute;
    content: '';
    width: 3px;
    height: 40px;
    background: #3498db;
    background: -webkit-linear-gradient(top, #4782d3, rgba(52, 152, 219, 0));
    background: linear-gradient(to bottom, #4782d3, rgba(52, 152, 219, 0));
    top: 100%;
    left: 303px;
    
        -webkit-box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
    box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
}

.vtimeline-content {
    margin-left: 350px;
    background: #fff;
    border: 1px solid #e6e6e6;
    padding: 35px 20px;
    border-radius: 3px;
    text-align: left;
    
    -webkit-box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
    box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2),0 6px 10px 0 rgba(0,0,0,0.3);
}

.vtimeline-content h3 {
    font-size: 1.5em;
    font-weight: 600;
    display: inline-block;
    margin: 0;
}

.vtimeline-content p {
    font-size: 0.9em;
    margin: 0;
}

.vtimeline-point {
    position: relative;
    display: block;
    vertical-align: top;
    margin-bottom: 30px;
}

.vtimeline-icon {
    position: relative;
    color: #fff;
    width: 50px;
    height: 50px;
    background: #4782d3;
    border-radius: 50%;
    float: left;
    text-align: center;
    line-height: 50px;
    z-index: 99;
    margin-left: 280px;
}

.vtimeline-icon i {
    display: block;
    font-size: 1.5em;
    line-height: 50px;
    
}

.vtimeline-date {
    width: 260px;
    text-align: right;
    position: absolute;
    left: 0;
    top: 10px;
    font-weight: 400;
    color: #374054;
}
.post-meta {
    padding-top: 15px;
    margin-bottom: 20px;
}
.post-meta li:not(:last-child) {
    margin-right: 10px;
}
h3 {
    font-family: "Montserrat", sans-serif;
    color: white;
    font-weight: 700;
    font-variant-ligatures: common-ligatures;
    margin-top: 0;
    letter-spacing: -0.2px;
    line-height: 1.3;
}
h1 {
    font-family: "Montserrat", sans-serif;
    color: black;
    font-weight: 700;
    font-variant-ligatures: common-ligatures;
    margin-top: 0;
    letter-spacing: -0.2px;
    line-height: 1.3;
}
.mb20 {
    margin-bottom: 20px !important;
    }

</style>


</head>

<!-- #E3D883 -->

<body style="background-color: #F2F6B1">

	<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#" style="color:MediumSeaGreen;"> <b><mark>Smart</mark></b> College </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="/SmartCollege/Home">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/News">News</a>
        </li>
        <c:choose>
    	<c:when test="${role == 'STUDENT'}">
        <li class="dropdown">
						<a href="#" class="nav-item nav-link" data-toggle="dropdown">Subjects</a>
						<div class="dropdown-menu">
							<a href="/SmartCollege/FirstYear" class="dropdown-item">First Year</a>
							<a href="/SmartCollege/SecondYear" class="dropdown-item">Second Year</a>
							<a href="/SmartCollege/ThirdYear" class="dropdown-item">Third Year</a>
						</div>
		</li>
		</c:when>
        </c:choose>
        <c:choose>
    	<c:when test="${role == 'PROFESSOR'}">
        <li class="dropdown">
						<a href="#" class="nav-item nav-link" data-toggle="dropdown">My Subjects</a>
						<div class="dropdown-menu">
							<c:forEach var = "subject" items = "${profsubjects}">
						    <input type="hidden" class="form-control" value = "${userId}" name= "idd" id= "idd" required>
							<a href="/SmartCollege/ViewSubject?id=${subject.idSubject}&user=${userId}" class="dropdown-item">${subject.subjectName}</a>
						    </c:forEach>
						</div>
		</li>
		</c:when>
        </c:choose>
        <c:choose>
    	<c:when test="${role == 'ADMIN'}">
        <li class="dropdown">
						<a href="#" class="nav-item nav-link" data-toggle="dropdown">Add</a>
						<div class="dropdown-menu">
						    <a href="/SmartCollege/AddAnnouncement" class="dropdown-item">Announcement</a>
							<a href="/SmartCollege/NewSubject" class="dropdown-item">Subject</a>
							<a href="/SmartCollege/NewContact" class="dropdown-item">Contact</a>
							<a href="/SmartCollege/NewProfessor" class="dropdown-item">Professor</a>	
						</div>
		</li>
		<li class="dropdown">
						<a href="#" class="nav-item nav-link" data-toggle="dropdown">View</a>
						<div class="dropdown-menu">
							<a href="/SmartCollege/NewProfessor" class="dropdown-item">Professors</a>
							<a href="/SmartCollege/Subject" class="dropdown-item">Subjects</a>
							<a href="/SmartCollege/Contact" class="dropdown-item">Contacts</a>
						</div>
		</li>
		<li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Repartition">Repartition</a>
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

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/U0dBV_QeiYk/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Performance</h3>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/Fum7fw90KlQ/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Excellency</h3>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/ggeZ9oyI-PE/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="display-4">Respect</h3>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header>

<!-- Page Content -->
<section class="py-5">
  <div class="container">
    <h1 class="text-center">SMART COLLEGE</h1>
    <p class="text-center">Your Education, Your Life, Your School, Our Time Is Now.</p>
  </div>
</section>

</body>
</html>