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
* TABLES */
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
        <c:choose>
    	<c:when test="${role == 'ADMIN'}">
        <li class="dropdown">
						<a href="#" class="nav-item nav-link active" data-toggle="dropdown">Add</a>
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

<!-- Page Content -->
<div class="container" >
<c:choose>
 <c:when test="${mode == 'NEWSUBJECT_VIEW'}">
<div class="col-sm-12 col-lg-8 mr-auto ml-auto border p-4" style="background-color:white;">
  <form method="post" enctype="multipart/form-data" action="saveSubjectUpdate">
    <div class="form-group">
      <label><strong>Add subject</strong></label>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter name" value="${subject.subjectName}" name ="subjectName" id="subjectName" required autofocus>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter Description" value="${subject.subjectDescription}" name ="subjectDescription" id="subjectDescription" required autofocus>
      </div>
      <div class="form-group">
					    <label for="subjectYear">Year</label>
					    <select class="form-control" name ="subjectYear" id="subjectYear">
					      <option>1</option>
					      <option>2</option>
					      <option>3</option>
					    </select>
  				  </div>
      <div class="form-group">
					    <label for="subjectSemester">Semester</label>
					    <select class="form-control" name ="subjectSemester" id="subjectSemester">
					      <option>1</option>
					      <option>2</option>
					    </select>
  				  </div>
    </div>
    <div class="form-group">
      <button type="submit" name="submit" class="btn btn-block btn-dark">Submit</button>
    </div>
  </form>
</div>
</c:when>
</c:choose>

<c:choose>
 <c:when test="${mode == 'SUBJECT_VIEW'}">
<div class="col-sm-12 col-lg-8 mr-auto ml-auto border p-4" style="background-color:white;">
  <form method="post" enctype="multipart/form-data" action="saveSubjectUpdate">
  <input type="hidden" class="form-control" value = "${subject.idSubject}" name= "idSubject" id= "idSubject">
    <div class="form-group">
      <label><strong>Update subject</strong></label>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter name" value="${subject.subjectName}" name ="subjectName" id="subjectName" required autofocus>
      </div>
      <div class="form-group">
      	<input type="text" class="form-control" placeholder="Enter Description" value="${subject.subjectDescription}" name ="subjectDescription" id="subjectDescription" required autofocus>
      </div>
      <div class="form-group">
					    <label for="subjectYear">Year</label>
					    <select class="form-control" name ="subjectYear" id="subjectYear">
					      <option>1</option>
					      <option>2</option>
					      <option>3</option>
					    </select>
  				  </div>
      <div class="form-group">
					    <label for="subjectSemester">Semester</label>
					    <select class="form-control" name ="subjectSemester" id="subjectSemester">
					      <option>1</option>
					      <option>2</option>
					    </select>
  				  </div>
  	  <div class="form-group">
					    <label for="subjectSemester">Add Professor</label>
					    <select class="form-control" id="lala" name="lala">
					    <c:forEach var = "professor" items = "${professors}">
					      <option value="${professor.name}" >${professor.name}</option>
					      </c:forEach>
					      <option value="" selected></option>
					    </select>
  				  </div>								
  	   <div class="form-group">
					    <label for="professors">Professors</label>
					     <table class="table table-hover">
					    	<thead>
							      <tr class="active">
							        <th>Name</th>
							        <th>Remove</th>
							      </tr>
				   			</thead>
					    		<tbody>
					    			<c:forEach var = "professor" items = "${subject.professors}">
					    			   <tr>
							      			<td>${professor.name}</td>
							      			<td>
												<a href="/SmartCollege/RemoveProfessor?id=${subject.idSubject}&name=${professor.name}" class="table-link danger">
												<span class="fa-stack">
												<i class="fa fa-square fa-stack-2x"></i>
												<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
												</span>
												</a>
												</td>
							      		</tr>
							      	</c:forEach>
							      </tbody>
							      </table>
  				  </div>
    </div>
    <div class="form-group">
      <button type="submit" name="submit" class="btn btn-block btn-dark">Submit</button>
    </div>
  </form>
</div>
</c:when>
</c:choose>


<c:choose>
 <c:when test="${mode == 'SUBJECTS_VIEW'}">
 <div class="card border-0 shadow my-5">
 <div class="main-box clearfix">
			<div class="table-responsive">
<table class="table user-list">
					<thead>
						<tr>
							<th><span>Name</span></th>
							<th><span>Description</span></th>
							<th class="text-center"><span>Year</span></th>
							<th><span>Semester</span></th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach var = "subject" items = "${subjects}">
						<tr>
							<td>
								<a class="user-link">${subject.subjectName}</a>
							</td>
							<td>
								${subject.subjectDescription}
							</td>
							<td class="text-center">
								<span class="label label-default">${subject.subjectYear}</span>
							</td>
							<td>
								<a>${subject.subjectSemester}</a>
							</td>
							<td style="width: 20%;">
								<a href="/SmartCollege/updateSubject?id=${subject.idSubject }" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								<a href="/SmartCollege/Subject/delete?id=${subject.idSubject }" class="table-link danger">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
									</span>
								</a>
							</td>
						</tr>
						</c:forEach>
						</tbody>
				</table>
				</div>
				</div>
				</div>
</c:when>
</c:choose>

</div>
</body>
</html>