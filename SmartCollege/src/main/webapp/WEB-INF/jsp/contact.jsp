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
	
	body {
  background-color: #E3D883;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
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


/* USER LIST TABLE */
.user-list tbody td > img {
    position: relative;
	max-width: 50px;
	float: left;
	margin-right: 15px;
}
.user-list tbody td .user-link {
	display: block;
	font-size: 1.25em;
	padding-top: 3px;
	margin-left: 60px;
}
.user-list tbody td .user-subhead {
	font-size: 0.875em;
	font-style: italic;
}

/* TABLES */
.table {
    border-collapse: separate;
}
.table-hover > tbody > tr:hover > td,
.table-hover > tbody > tr:hover > th {
	background-color: #eee;
}
.table thead > tr > th {
	border-bottom: 1px solid #C2C2C2;
	padding-bottom: 0;
}
.table tbody > tr > td {
	font-size: 0.875em;
	background: #f5f5f5;
	border-top: 10px solid #fff;
	vertical-align: middle;
	padding: 12px 8px;
}
.table tbody > tr > td:first-child,
.table thead > tr > th:first-child {
	padding-left: 20px;
}
.table thead > tr > th span {
	border-bottom: 2px solid #C2C2C2;
	display: inline-block;
	padding: 0 5px;
	padding-bottom: 5px;
	font-weight: normal;
}
.table thead > tr > th > a span {
	color: #344644;
}
.table thead > tr > th > a span:after {
	content: "\f0dc";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-left: 5px;
	font-size: 0.75em;
}
.table thead > tr > th > a.asc span:after {
	content: "\f0dd";
}
.table thead > tr > th > a.desc span:after {
	content: "\f0de";
}
.table thead > tr > th > a:hover span {
	text-decoration: none;
	color: #2bb6a3;
	border-color: #2bb6a3;
}
.table.table-hover tbody > tr > td {
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
}
.table tbody tr td .call-type {
	display: block;
	font-size: 0.75em;
	text-align: center;
}
.table tbody tr td .first-line {
	line-height: 1.5;
	font-weight: 400;
	font-size: 1.125em;
}
.table tbody tr td .first-line span {
	font-size: 0.875em;
	color: #969696;
	font-weight: 300;
}
.table tbody tr td .second-line {
	font-size: 0.875em;
	line-height: 1.2;
}
.table a.table-link {
	margin: 0 5px;
	font-size: 1.125em;
}
.table a.table-link:hover {
	text-decoration: none;
	color: #2aa493;
}
.table a.table-link.danger {
	color: #fe635f;
}
.table a.table-link.danger:hover {
	color: #dd504c;
}

.table-products tbody > tr > td {
	background: none;
	border: none;
	border-bottom: 1px solid #ebebeb;
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
	position: relative;
}
.table-products tbody > tr:hover > td {
	text-decoration: none;
	background-color: #f6f6f6;
}
.table-products .name {
	display: block;
	font-weight: 600;
	padding-bottom: 7px;
}
.table-products .price {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}
.table-products .price > i {
	color: #8dc859;
}
.table-products .warranty {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}
.table-products .warranty > i {
	color: #f1c40f;
}
.table tbody > tr.table-line-fb > td {
	background-color: #9daccb;
	color: #262525;
}
.table tbody > tr.table-line-twitter > td {
	background-color: #9fccff;
	color: #262525;
}
.table tbody > tr.table-line-plus > td {
	background-color: #eea59c;
	color: #262525;
}
.table-stats .status-social-icon {
	font-size: 1.9em;
	vertical-align: bottom;
}
.table-stats .table-line-fb .status-social-icon {
	color: #556484;
}
.table-stats .table-line-twitter .status-social-icon {
	color: #5885b8;
}
.table-stats .table-line-plus .status-social-icon {
	color: #a75d54;
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
        <li class="nav-item active">
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
<div class="container" >
	<c:choose>
	<c:when test="${mode == 'CONTACTS_VIEW'}">
	<div class="card border-0 shadow my-5">
	</c:when>
	</c:choose>
  	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
<div class="row">
	<div class="col-lg-12">
		<div class="main-box clearfix">
			<div class="table-responsive">
				<c:choose>
 					<c:when test="${mode == 'CONTACTS_VIEW'}">
				<table class="table user-list">
					<thead>
						<tr>
							<th><span>User</span></th>
							<th><span>Office</span></th>
							<th class="text-center"><span>Subjects</span></th>
							<th><span>Email</span></th>
							<c:choose>
							<c:when test="${role == 'ADMIN' }">
							<th>&nbsp;</th>
							</c:when>
					      	</c:choose>
						</tr>
					</thead>
					<tbody>
					  <c:forEach var = "contact" items = "${contacts}">
						<tr>
							<td>
								<img src="https://img.favpng.com/4/3/18/teacher-professor-computer-icons-education-tutor-png-favpng-grVY11ri446G9q2PYWxs465zK.jpg" alt="">
								<a class="user-link">${contact.profesorName}</a>
								<span class="user-subhead">${contact.profesorStatus}</span>
							</td>
							<td>
								${contact.profesorOffice}
							</td>
							<td class="text-center">
								<span class="label label-default">${contact.profesorSubjects}</span>
							</td>
							<td>
								<a>${contact.profesorEmail}</a>
							</td>
							<c:choose>
							<c:when test="${role == 'ADMIN' }">
							<td style="width: 20%;">
								<a href="/SmartCollege/updateContact?id=${contact.id }" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								<a href="/SmartCollege/Contact/delete?id=${contact.id }" class="table-link danger">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
									</span>
								</a>
							</td>
							</c:when>
					      	</c:choose>
						</tr>
						</c:forEach>
						</tbody>
				</table>
				</div>
			<ul class="pagination pull-right">
				<li><a href="#">Go top</a></li>
			</ul>
		</div>
			</c:when>
			
			<c:when test="${mode == 'CONTACT_VIEW'}">
			<div class="col-sm-12 col-lg-8 mr-auto ml-auto border p-4" style="background-color:white;">
 			 <form action= "saveUpdate" method = "post">
 			 <input type="hidden" class="form-control" value = "${contact.id}" name= "id" id= "id">
				  <div class="form-group">
				    <label for="Name">Name:</label>
				    <input type="text" class="form-control" value= "${contact.profesorName}" name ="profesorName" id="profesorName">
				  </div>
				  <div class="form-group">
				    <label for="Email">Email:</label>
				    <input type="text" class="form-control" value= "${contact.profesorEmail}" name ="profesorEmail" id="profesorEmail">
				  </div>
				  <div class="form-group">
				    <label for="Subjects">Subjects:</label>
				    <input type="text" class="form-control" value= "${contact.profesorSubjects}" name ="profesorSubjects" id="profesorSubjects">
				  </div>
				  <div class="form-group">
				    <label for="Office">Office:</label>
				    <input type="text" class="form-control" value= "${contact.profesorOffice}" name ="profesorOffice" id="profesorOffice">
				  </div>
				  <div class="form-group">
				    <label for="Status">Status:</label>
				    <input type="text" class="form-control" value= "${contact.profesorStatus}" name ="profesorStatus" id="profesorStatus">
				  </div>
				
				  <div class="form-group">
      					<button type="submit" name="submit" class="btn btn-block btn-dark">Upload</button>
    			</div>
			</form>
			</div>
 		</c:when>
 		<c:when test="${mode == 'NEWCONTACT_VIEW'}">
 		<div class="col-sm-12 col-lg-8 mr-auto ml-auto border p-4" style="background-color:white;">
 			 <form action= "saveUpdate" method = "post">
				  <div class="form-group">
				    <label for="Name">Name:</label>
				    <input type="text" class="form-control" value= "${contact.profesorName}" name ="profesorName" id="profesorName">
				  </div>
				  <div class="form-group">
				    <label for="Email">Email:</label>
				    <input type="text" class="form-control" value= "${contact.profesorEmail}" name ="profesorEmail" id="profesorEmail">
				  </div>
				  <div class="form-group">
				    <label for="Subjects">Subjects:</label>
				    <input type="text" class="form-control" value= "${contact.profesorSubjects}" name ="profesorSubjects" id="profesorSubjects">
				  </div>
				  <div class="form-group">
				    <label for="Office">Office:</label>
				    <input type="text" class="form-control" value= "${contact.profesorOffice}" name ="profesorOffice" id="profesorOffice">
				  </div>
				  <div class="form-group">
				    <label for="Status">Status:</label>
				    <input type="text" class="form-control" value= "${contact.profesorStatus}" name ="profesorStatus" id="profesorStatus">
				  </div>
				
				  <div class="form-group">
      				<button type="submit" name="submit" class="btn btn-block btn-dark">Upload</button>
    			  </div>
			</form>
			</div>
 		</c:when>
			
			</c:choose>
	</div>
</div>
</div>
</div>


</body>
</html>