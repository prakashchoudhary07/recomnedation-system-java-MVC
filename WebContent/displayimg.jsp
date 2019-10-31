<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List, model.Image" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.responsive {
    width: 100%;
    max-width: 600px;
    height: auto;
}
.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}

</style>



<style>
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.clearfix:after {
	content: '';
	clear: both;
	display: table;
}

.post {
	margin: 0 0 1.5em;
}

.post-toggle {
	float: center;
	width: 50%;
	height: auto;
	background: #bakl23;
}

.post-content {
	display: none;
	width : 50%;
	height: 8em;
	border: 0.25em solid #bada55;
}
</style>


<script src="LibSrc/jquery-3.3.1.js"
	type="text/javascript"></script>
<script type="text/javascript">
jQuery(function($) {
		
 $('.posts').on('click', '.post-toggle', function() {
     $(this).closest('.post').find('.post-content').toggle();
 });
});

</script>







<title>Images</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td colspan="2" align="center"> 
			Display Images
		</td>
		</tr>
		<tr>
			<td width="200px" align="left"> 
				<%-- <%@include file="menu.jsp" %> --%>
				<jsp:include page="_menu.jsp"></jsp:include>
			</td>
			
			<td align="left"> 	
				<h1>Images List </h1>
				<% 				
						List<Image> images = (List<Image>)request.getAttribute("images");
						for(Image image : images){
				%>
						<%=image.getImgid() %> : <%=image.getImgname() %> : <%=image.getImgUrl() %> <%= image.getImgCat() %> <br/>
						
<img src="<%= image.getImgUrl() %>" alt="<%=image.getImgname() %>" class="center" class="responsive"> 
						<%
						}
						%>
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center"> UI for DBMS Project</td>
		</tr>
	</table>





<%-- 	<ul class="posts">		
		<% 				
						List<Image> images1 = (List<Image>)request.getAttribute("images");
						for(Image image : images1){
				%>
						<%=image.getImgid() %> : <%=image.getImgname() %> : <%=image.getImgUrl() %> <%= image.getImgCat() %> <br/>
						<li class="post clearfix">
			<div class="post-toggle">
<img src="<%= image.getImgUrl() %>" alt="<%=image.getImgname() %>" class="center" class="responsive"> 
			</div>
			<div class="post-content">
			</div>
		</li>
				 	<%
						}
						%>
		</ul>

 --%>





</body>
</html>