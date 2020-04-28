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
  

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style>
	
body{
    background-color: #E3D883;
}
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


/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
  margin: auto;
  width: 79%;
}

/* Fake image */
.fakeimg {
  width: 100%;
  margin-top:10px;
  margin-bottom:10px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 10px;
  margin-top: 20px;
  margin-bottom:20px;
}

.post-meta {
    padding-top: 15px;
    margin-bottom: 20px;
}
.post-meta li:not(:last-child) {
    margin-right: 10px;
}

h1 { color: #7c795d; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }


h2 { color: #7c795d; font-family: 'Source Sans Pro', sans-serif; font-size: 28px; font-weight: 400; line-height: 32px; margin: 0 0 24px; }


.subheader { font-size: 26px; font-weight: 300; color: #ffcc66; margin: 0 0 24px; }

p { color: #4c4a37; font-family: 'Source Sans Pro', sans-serif; font-size: 18px; line-height: 32px;}

</style>


</head>

<body style="background-color: #F2F6B1">
	
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
          <a class="nav-link" href="/SmartCollege/Home">Home
              </a>
        </li>
        <li class="nav-item active">
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
							<a href="/SmartCollege/NewProfessor" class="dropdown-item">Professor</a>
							<a href="/SmartCollege/NewSubject" class="dropdown-item">Subject</a>
							<a href="/SmartCollege/NewContact" class="dropdown-item">Contact</a>
							<a href="/SmartCollege/AddAnnouncement" class="dropdown-item"></a>
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

  <div class="leftcolumn">
     <c:choose>
    <c:when test="${role == null  || role == 'STUDENT'}">
	 <c:forEach var = "announcement" items = "${announcements}">
	 					 <c:if test = "${announcement.available == 'Students'}">
    <div class="card">
      <h1>${announcement.announcementTitle }</h1>
      <ul class="post-meta list-inline">
                        <li class="list-inline-item">
                            <i class="fa fa-calendar"></i> <a href="#">${announcement.date }</a>
                        </li>
                        <li class="list-inline-item">
                            <i class="fa fa-tag"></i> <a href="#">${announcement.tag }</a>
                        </li>
                    </ul>
      <img src="${announcement.photoLink}" class="fakeimg" style="height:430px;">
      <p>${announcement.announcementSubtitle }</p>
      <a href="/SmartCollege/ViewAnnouncement?id=${announcement.id}" class="btn btn-outline-secondary btn-sm" style="width:9%;">Read More</a>
    </div>
    </c:if>
    </c:forEach>
    </c:when>
    </c:choose>
    
        <c:choose>
    <c:when test="${role == 'ADMIN'  || role == 'PROFESSOR'}">
	 <c:forEach var = "announcement" items = "${announcements}">
    <div class="card">
      <h1>${announcement.announcementTitle }</h1>
      <img src="${announcement.photoLink}" class="fakeimg" style="height:430px;">
      <p>${announcement.announcementSubtitle }</p>
       <ul class="post-meta list-inline">
                        <li class="list-inline-item">
                            <i class="fa fa-calendar"></i> <a href="#">${announcement.date }</a>
                        </li>
                        <li class="list-inline-item">
                            <i class="fa fa-tag"></i> <a href="#">${announcement.tag }</a>
                        </li>
                    </ul>
      <a href="#" class="btn btn-outline-secondary btn-sm" style="width:9%;">Read More</a>
    </div>
    </c:forEach>
    </c:when>
    </c:choose>
    
    
    
    </div>	


</body>
</html>