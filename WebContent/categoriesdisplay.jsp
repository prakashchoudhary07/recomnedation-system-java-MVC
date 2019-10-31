<%@page import="java.io.OutputStreamWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Categories,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>categoriesdisplay</title>
<style>
.button {
    position: relative;
    background-color: #ddd;
    border: none;
    font-size: 28px;
    color: black;
    padding: 20px;
    width: 200px;
    text-align: center;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    cursor: pointer;
}

.button:after {
    content: "";
    background: #f1f1f1;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    margin-left: -20px !important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
}

.button:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
}

.blocktext {
    margin-left: auto;
    margin-right: auto;
    width: 8em
}

</style>
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
<div class = blocktext >	
	<%
		List<Categories> categories = (List<Categories>)request.getAttribute("categories");
		for(Categories cat : categories ){
		
	%>	
	
	
	
	<form method="get" action="CategoriesImagesDisplay">
		<table>
			<tr>
				<td>
					<button class="button" name="categoriesId" value="<%=cat.getcId() %>"><%=cat.getcId() %>. <%=cat.getName() %></button>
				</td>
			</tr>
		</table>
	</form>
	
	
	
	<%		
		}
	%>  
	
	

</div>

<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>