<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Smart College</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content { height:450px;
    			    padding-top:10px;
    			  }
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top:30px;
      background-color: #f1f1f1;
      height:100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 40px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style="color:MediumSeaGreen;"> <b><mark>Smart</mark></b> College </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/SmartCollege/Home">Home</a></li>
        <li><a href="#">Professors</a></li>
        <li><a href="/SmartCollege/Subject">Subjects</a></li>
        <li><a href="/SmartCollege/Contact">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="/SmartCollege/NewContact"><button type="button" class="btn btn-success">New Contact</button></a></p>
      <p><a href="/SmartCollege/NewSubject"><button type="button" class="btn btn-success">New Subject</button></a></p>
      <p><a href="#"><button type="button" class="btn btn-success">New Student</button></a></p>
    </div>
    <div class="col-sm-8 text-left">
	<c:choose>
 		<c:when test="${mode == 'CONTACTS_VIEW'}">
 			<div class="table-responsive">          
				  <table class="table table-hover">
				    <thead>
				      <tr class="active">
				        <th>Name</th>
				        <th>Email</th>
				        <th>Subjects</th>
				        <th>Office</th>
				        <th>Status</th>
				        <th>Edit</th>
				        <th>Delete</th>
				      </tr>
				    </thead>
				    <tbody>
					      <c:forEach var = "contact" items = "${contacts}">
					      		<tr>
					      			<td>${contact.profesorName}</td>
					      			<td>${contact.profesorEmail}</td>
					      			<td>${contact.profesorSubjects}</td>
					      			<td>${contact.profesorOffice}</td>
					      			<td>${contact.profesorStatus}</td>
					      			<td><a href="/SmartCollege/updateContact?id=${contact.id }"><span class="glyphicon glyphicon-pencil"></span></a></td>
					      			<td><a href="/SmartCollege/Contact/delete?id=${contact.id }"><span class="glyphicon glyphicon-remove"></span></a></td>
					      		</tr>
					      </c:forEach>
    				</tbody>
  					</table>
  			</div> 
 		</c:when>
 		
 		<c:when test="${mode == 'CONTACT_VIEW'}">
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
				

				  <button type="submit" class="btn btn-default">Submit</button>
			</form>
 		</c:when>
 		
 		<c:when test="${mode == 'NEWCONTACT_VIEW'}">
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
				

				  <button type="submit" class="btn btn-default">Submit</button>
			</form>
 		</c:when>
	</c:choose>
                                                                              
</div>
    
  </div>
</div>

<!-- Footer -->
<footer class="page-footer font-small special-color-dark pt-4">

  <!-- Footer Elements -->
  <div class="container">

    <!-- Social buttons -->
    <ul class="list-unstyled list-inline text-center">
      <li class="list-inline-item">
        <a class="btn-floating btn-fb mx-1">
          <button type="button" class="btn btn-fb"><i class="fab fa-facebook-f pr-1"></i> Facebook</button>
        </a>
      </li>
     <li class="list-inline-item">
        <a class="btn-floating btn-fb mx-1">
          <button type="button" class="btn btn-yt"><i class="fab fa-youtube pr-1"></i> Youtube</button>
        </a>
      </li>
     
    </ul>
    <!-- Social buttons -->

  </div>
  <!-- Footer Elements -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3"><span class="glyphicon glyphicon-earphone">  0731 955 240 </span>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
</html>