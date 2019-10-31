<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.util.List, model.Image" %>
 
 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title> MyInterest </title>

<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}

@keyframes zoom {
    from {transform: scale(0.1)} 
    to {transform: scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}

.responsive {
    width: 100%;
    max-width: 400px;
    height: auto;
}
.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 40%;
}

</style>

<style>
body {margin:25px;}

div.polaroid {
	display: block;
    margin-left: auto;
    margin-right: auto;
  width: 35%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
}

div.container {
  text-align: center;
  padding: 10px 20px;
}
</style>


</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>


	<%	
		String userName = (String)session.getAttribute("userName");
		List<Image> images = (List<Image>) request.getAttribute("images");
		for (Image image : images) {
	%>
	


<div class="polaroid">
<img id="<%=image.getImgid()%>" src="<%=image.getImgUrl()%>" alt="<%=image.getImgname()%>" class="center" style="width:100%">
<div class="container">
    <p><%=image.getImgname()%></p>
  </div>
   </div>
	
	<%
		}
	%>





<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>