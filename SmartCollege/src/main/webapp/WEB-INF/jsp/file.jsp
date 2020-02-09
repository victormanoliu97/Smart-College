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
	
	body {
  background-color: #F2F6B1;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}	

.navbar{ 
    background-color: #E1A7A7;
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
    color: #252525;
    font-weight: 700;
    font-variant-ligatures: common-ligatures;
    margin-top: 0;
    letter-spacing: -0.2px;
    line-height: 1.3;
}
.mb20 {
    margin-bottom: 20px !important;
    }
 p, span, a, ul, li, button {
    font-family: inherit;
    font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
}

strong {
	font-weight: 600;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Open Sans', "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serify;
	line-height: 0.8em;
	font-weight: 300;	
}

strong {
  font-weight: 400;
}

.tile {  
    width: 318%;
    border-radius: 24px;
    display: inline-block;
	box-sizing: border-box;
	background-color:powderblue;		
	padding: 7px;	
	margin-bottom: 30px;
} 

.table {
    margin-bottom:30px;

}
 .title {
    	margin-top: 15px;
    	float: left;
  }
 .btn {
      float: right;
 }
.purple, .blue, .red, .orange, .green {
    color: #fff;
  }
  
.purple {
    background: #5133AB;
}

 .purple:hover {
    background: darken(#5133AB, 10%);
 }	
 
.red { background: #AC193D;}

.red:hover {
    background: darken(#AC193D, 10%);
}		


.green {background: #00A600;}

 .green:hover {
	background: darken(#00A600, 10%);
}		


.blue {   background: #14ACCE;}

.blue:hover {
	background: darken(#2672EC, 10%);
}	


.orange {  background: #DC572E;}

.orange:hover {
	background: darken(#DC572E, 10%);
}

.project-list > tbody > tr > td {
  padding: 12px 8px;
}

.project-list > tbody > tr > td .avatar {
  width: 22px;
  border: 1px solid #CCC;
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
<div class= "container">
	<div class="container bootstrap snippet">
	<div class="col-sm-4">
      <div class="tile blue">
        <h5 class="title">Courses</h5>
        <c:choose>
    	<c:when test="${role == 'PROFESSOR'}">
          <a href="/SmartCollege/AddCourse?id=${idSubject}"><button type="button" class="btn btn-success btn-lg btn3d"><span class="glyphicon glyphicon-ok"></span> <h3><b>+</b></h3> </button></a>
 		</c:when>
 		</c:choose>     
      </div>
	</div>
	</div>
	
	<div class="container bootstrap snippet">
    <div class="table-responsive">
    	<!-- PROJECT TABLE -->
    	<table class="table colored-header datatable project-list">
    		<thead>
    			<tr>
    				<th>Title</th>
    				<th>Description</th>
    				<th>View</th>
    				<th>Download</th>
    				<c:choose>
							<c:when test="${role == 'PROFESSOR' }">
    				<th></th>
    				<th></th>
    					</c:when>
					</c:choose>
    			</tr>
    		</thead>
    		<tbody>
    		<c:forEach var = "item" items = "${content}">
    			<c:choose>
      				<c:when test="${item.category == 'Course' && role == 'STUDENT' || item.category == 'Course' && role == 'PROFESSOR'}">
    			<tr>
    				<td>${item.title }</td>
    				<td>${item.subtitle }</td>
    				<td style="width: 20%;">
    				<a href="/SmartCollege/ViewFile/${item.name}" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-eye fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								</td>
								<td>
									<a href="/SmartCollege/DownloadFile/${item.name}" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-download fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								</td>
    				<c:choose>
							<c:when test="${role == 'PROFESSOR' }">
							<td style="width: 20%;">
								<a href="/SmartCollege/updateItem?id=${item.id }" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								<a href="/SmartCollege/DeleteFile?id=${item.id }" class="table-link danger">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
									</span>
								</a>
							</td>
							</c:when>
					</c:choose>
    			</tr>
    		</c:when>
    		</c:choose>
    		</c:forEach>
    		</tbody>
    	</table>
    	<!-- END PROJECT TABLE -->
    </div>
    </div>
    
    <div class="container bootstrap snippet">
	<div class="col-sm-4">
      <div class="tile blue">
        <h5 class="title">Info</h5>
        <c:choose>
    	<c:when test="${role == 'PROFESSOR'}">
        <a href="/SmartCollege/AddInfo?id=${idSubject}"><button type="button" class="btn btn-success btn-lg btn3d"><span class="glyphicon glyphicon-ok"></span> <h3><b style="color: white;">+</b></h3> </button></a>
        </c:when>
        </c:choose>
      </div>
	</div>
	</div>
    
    <c:forEach var = "item" items = "${content}">
    			<c:choose>
      				<c:when test="${item.category == 'Info' && role == 'STUDENT' || item.category == 'Info' && role == 'PROFESSOR'}">
    <div class="row margin-b-30" style="margin-left: 12px;">
                                <div class="col-sm-12 event-detail">
                                    <h3><b>${item.title }</b></h3>
                                    <p>
                                        ${item.subtitle}
                                    </p>
                                </div>
                            </div>
	</c:when>
	</c:choose>
	</c:forEach>
	
	<div class="container bootstrap snippet">
	<div class="col-sm-4">
      <div class="tile blue">
        <h5 class="title">Extra Materials</h5>
        <c:choose>
    	<c:when test="${role == 'PROFESSOR'}">
        <a href="/SmartCollege/AddInfo?id=${idSubject}"><button type="button" class="btn btn-success btn-lg btn3d"><span class="glyphicon glyphicon-ok"></span> <h3><b>+</b></h3> </button></a>
        </c:when>
        </c:choose>
      </div>
	</div>
	</div>
    
    <c:if test="${empty content}">
     <div class="row margin-b-30" style="margin-left: 12px;">
                                <div class="col-sm-12 event-detail">
                                    <h3><b>Nothing was posted here!</b></h3>
                                </div>
                            </div>
     </c:if>
     <c:if test="${not empty content}">
    <c:forEach var = "item" items = "${content}">
    			<c:choose>
      				<c:when test="${item.category == 'ExtraM' && role == 'STUDENT' || item.category == 'ExtraM' && role == 'PROFESSOR'}">
    <div class="row margin-b-30" style="margin-left: 12px;">
                                <div class="col-sm-12 event-detail">
                                    <h3><b>${item.title }</b></h3>
                                    <p>
                                        ${item.subtitle}
                                    </p>
                                </div>
                            </div>
	</c:when>
	</c:choose>
	</c:forEach>
	</c:if>
</div>


</body>
</html>