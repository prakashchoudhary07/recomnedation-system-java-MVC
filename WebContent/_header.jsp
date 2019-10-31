<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% 	
		try{
			if(session != null){
				if(session.getAttribute("userName") != null){
					String userName = (String)session.getAttribute("userName");
				
					out.println("Welcome "+userName);
				
				}
				else{
					response.sendRedirect("login.jsp");
				}
			}
			else{
				response.sendRedirect("login.jsp");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
 %>



<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

/* Style the header */
.header {
	padding: 40px;
	text-align: center;
	background: #616769;
	color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
	font-size: 30px;
}

#navbar {
	overflow: hidden;
	background-color: #333;
}

#navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

#navbar a:hover {
	background-color: #ddd;
	color: black;
}

#navbar a.active {
	background-color: #4CAF50;
	color: white;
}

#navbar a.right {
	float: right;
}

.content {
	padding: 16px;
}

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
}

.sticky+.content {
	padding-top: 60px;
}
</style>


<!-- Drop down CSS from here -->


<style>
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 17px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: right;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
background-color: #ddd;
	color: black;

}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>

</head>
<body>

	<div class="header">
		<h1>User Behavioral Pattern For WebApplication</h1>
		<p>Project 
		<h1>X</h1>
		</p>
	</div>
	
	
<div id = "navba">
<div class="navbar">
  <a href="userhome.jsp">Home</a>
   <a href="DisplayImages">Feeds</a>
   <a href="DisplayCategories">Categories</a>
    <a href="MyInterestServelet">MyInterests</a>
     <a href="AddsServelet">AddsRecomandation</a> 
  
  <div class="dropdown">
    <button class="dropbtn"><%=(String)session.getAttribute("userName") %>
      
    </button>
    <div class="dropdown-content">
      <a href="changepassword.jsp">Change Password</a>
      <a href="DeleteHistory">Delete Track Activity</a>
      <a href="LogoutServelet" class="right">Logout</a>
    </div>
  </div> 
</div>
</div>



<!-- 	<div id="navbar">
		<a href="userhome.jsp">Home</a> <a href="DisplayImages">Feeds</a> <a
			href="#">Link</a> <a href="LogoutServelet" class="right">Logout</a>
	</div>
 -->


	<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navba");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>