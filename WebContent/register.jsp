<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
footer {
  text-align: center;
  padding: 3px;
  color: black;
  margin-top:5%;
}
.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Register course</title>
</head>
<body>
<!-- navigation -->
<nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background:#DAD3DD;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
  </button> 
  <!-- Links -->  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
  	<ul class="navbar-nav mr-auto mt-2 mt-sm-0">
  		<li class="nav-item">
        	<a class="nav-link" href="index.html"><span class="mylink" >Home</span></a>
        </li>         
        <li class="nav-item">
           	<a class="nav-link active" href="training"><span class="mylink">Register course</span></a>
        </li>
  	</ul>         
  </div>
        <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
    </form>
 </nav> <br>
  
 <div class="container" style="margin-left:40%">
	<h1>Register courses</h1>
 	<form action="registerSession" method="post" >
  		<table>
  			<tr>
				<td><label for="name">Name</label></td>
				<td><input type="text" name="name" placeholder="Enter your name" required /></td>
			</tr> 
    		<tr>      
   				<td><label for="email">E-mail</label></td>
    			<td><input type="email" name="email" placeholder="Enter your email" required /></td>
   			</tr>
   			<tr>
    			<td>Course</td>
    			<td><select name="course">
    			<%
    			if (request.getAttribute("mycourses") != null) 
    			{
    				List<String> courses = (List<String>) request.getAttribute("mycourses");
    				for (int i = 0; i < courses.size(); i++) {
    			%>
       					<option><%=courses.get(i)%></option>
    			<%  
    				}
    			}
    			%>
				</select></td>
	 		</tr> <br/>
	 		<tr><td colspan="2"><input type="submit" value="Submit" style="background:blue;"/></td></tr>
  	  	</table>
  	</form>  	
  </div>
 <footer>
  <p>Like & Follow Registration on <a href="https://www.facebook.com/home.php">Facebook</a><br>
  Follow Registration on <a href="https://www.instagram.com/paing_takhon_official/">Instagram</a><br>
  Follow Registration on <a href="https://twitter.com/i/flow/login">Twitter</a><br>
  Subscribe Registration on <a href="https://youtube.com/">YouTube</a><br>
  CONTACTS<br>
  Lithan (Singapore) LIMITED<br>
  (A LITHAN UNDER MINISTRY OF EDUCATION, GOVT OF Singapore)
  <br>
  +91120-6565065
  <br>
  <a href="http://lithan.com/">help.Lithan@gov.in</a></p>
</footer>
</body>
</html>