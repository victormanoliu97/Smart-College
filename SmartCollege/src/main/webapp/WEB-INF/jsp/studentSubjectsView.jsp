<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Smart College</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="https://png.pngtree.com/svg/20161123/97bea0669c.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
/*
Timeline
*/
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
body{
    background-color: #E3D883;
}
.card::after {
    display: block;
    position: absolute;
    bottom: -10px;
    left: 20px;
    width: calc(100% - 40px);
    height: 35px;
    background-color: #fff;
    -webkit-box-shadow: 0 19px 28px 5px rgba(64,64,64,0.09);
    box-shadow: 0 19px 28px 5px rgba(64,64,64,0.09);
    content: '';
    z-index: -1;
}
a.card {
    text-decoration: none;
}

.card {
    position: relative;
    border: 0;
    border-radius: 0;
    background-color: #fff;
    -webkit-box-shadow: 0 12px 20px 1px rgba(64,64,64,0.09);
    box-shadow: 0 12px 20px 1px rgba(64,64,64,0.09);
}
.card {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,0.125);
    border-radius: .25rem;
}

.box-shadow {
    -webkit-box-shadow: 0 12px 20px 1px rgba(64,64,64,0.09) !important;
    box-shadow: 0 12px 20px 1px rgba(64,64,64,0.09) !important;
}

.ml-auto, .mx-auto {
    margin-left: auto !important;
}
.mr-auto, .mx-auto {
    margin-right: auto !important;
}
.rounded-circle {
    border-radius: 50% !important;
}
.bg-white {
    background-color: #fff !important;
}

.ml-auto, .mx-auto {
    margin-left: auto !important;
}

.mr-auto, .mx-auto {
    margin-right: auto !important;
}
.d-block {
    display: block !important;
}
img, figure {
    max-width: 100%;
    height: auto;
    vertical-align: middle;
}

.card-text {
    padding-top: 12px;
    color: #8c8c8c;
}

.text-sm {
    font-size: 12px !important;
}
p, .p {
    margin: 0 0 16px;
}

.card-title {
    margin: 0;
    font-family: "Montserrat",sans-serif;
    font-size: 18px;
    font-weight: 900;
}

.pt-1, .py-1 {
    padding-top: .25rem !important;
}

.head-icon{
    margin-top:18px;
    color:#FF4500
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
           <li class="dropdown">
						<a href="#" class="nav-item active nav-link" data-toggle="dropdown">Subjects</a>
						<div class="dropdown-menu">
							<a href="/SmartCollege/FirstYear" class="dropdown-item">First Year</a>
							<a href="/SmartCollege/SecondYear" class="dropdown-item">Second Year</a>
							<a href="/SmartCollege/ThirdYear" class="dropdown-item">Third Year</a>
						</div>
		</li>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Contact">Contact</a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="/SmartCollege/AboutUs">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/SmartCollege/Logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Page Content -->
<section class="container pt-3 mb-3">
    <div class="row pt-5 mt-30">
    	<c:choose>
     		<c:when test="${role == 'STUDENT' && viewVar =='VIEWSUBJ' }">
      			<c:forEach var = "subject" items = "${subjectsFirst}">
        <div class="col-lg-4 col-sm-6 mb-30 pb-5">
            <a class="card" href="/SmartCollege/${subject.subjectName}?id=${subject.idSubject}">
                <div class="box-shadow bg-white rounded-circle mx-auto text-center" style="width: 90px; height: 90px; margin-top: -45px;"><i class="fa fa-book fa-3x head-icon"></i></div>
                <div class="card-body text-center">
                    <h3 class="card-title pt-1">${subject.subjectName}</h3>
                    <p class="card-text text-sm">${subject.subjectDescription}</p>
                </div>
            </a>
        </div>
        </c:forEach>
        </c:when>
        
	<c:when test="${role == 'STUDENT' && viewVar =='VIEWPROF' }">
      <c:forEach var = "professor" items = "${profsForSubject}">
      <div class="col-lg-4 col-sm-6 mb-30 pb-5">
            <a class="card" href="/SmartCollege/ViewSubject?id=${idSbj}&user=${professor.id}">
                <div class="box-shadow bg-white rounded-circle mx-auto text-center" style="width: 90px; height: 90px; margin-top: -45px;"><i class="fa fa-user fa-3x head-icon"></i></div>
                <div class="card-body text-center">
                    <h3 class="card-title pt-1">${professor.name}</h3>
                </div>
            </a>
        </div>
        </c:forEach>
        </c:when>
        </c:choose>
    </div>
</section>

</body>
</html>
