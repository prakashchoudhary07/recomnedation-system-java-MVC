<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebApplicaion Project</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	
	<h3>Home Page</h3>

	This is demo Simple web application using jsp,servlet and Jdbc.
	<br>
	<br>
	<b>It includes the following functions:</b>
	<jsp:include page="_menu.jsp"></jsp:include>
		
	
	
	
	<form method="get" action="DisplayImages">
		<table>
			<tr>
				<td>Display Image <input type="submit" value="DisplayImages">
				</td>
			</tr>
		</table>
	</form>

	
	
	<form method="get" action="DeleteHistory">
		<table>
			<tr>
				<td>Delete History <input type="submit"	value="DeleteHistory">
				</td>
			</tr>
		</table>
	</form>





	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>