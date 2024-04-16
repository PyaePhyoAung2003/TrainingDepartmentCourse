<jsp:useBean id="register_course" class="model.Course" scope="request"/>
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
<meta charset="ISO-8859-1">
<title>ThankYou</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
           	<a class="nav-link" href="training"><span class="mylink">Register courses</span></a>
        </li>
  	</ul>         
  </div>
        <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
    </form>
 </nav> <br>
  <div class="container">
 	<h2 style="text-align: center"> Thank you for registering session.</h2><br>
	<div style="text-align: center">
		<h4>We will send details information about the selected course to your registered email. 
		<br>Have a nice day.</h4>
	 </div><br>
	 <div class="container" style="margin-left:35%">
	<h3>Session register Information</h3>

	<table border="1" width="50%">
		<tr>
			<td>Register Name</td>
			<td><jsp:getProperty name="register_course" property="userName"/></td>
		</tr>
		<tr>
			<td>Register Course</td>
			<td><jsp:getProperty name="register_course" property="course"/></td>
		</tr>
				<tr>
			<td>Register Email</td>
			<td><jsp:getProperty name="register_course" property="email"/></td>
		</tr>
		
	</table>
	</br>
	<input type="button" value="back" style="background: blue;color: white;"onclick="javascript:history.back()" >
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