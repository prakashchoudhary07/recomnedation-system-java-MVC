<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>

<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>

<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>

</head>
<body>

<jsp:include page="_header.jsp"></jsp:include>

<h2>Change User Password</h2>


<form method="post" action="ChangePassword">
  <fieldset>
    <legend>Change Password:</legend>
    Enter Old Password:<br>
    <input type="password" name="OldPassword" required="required">
    <br>
    Enter New Password:<br>
    <input type="password" name="NewPassword1" required="required">
    <br>
    Enter New Password Again:<br>
    <input type="password" name="NewPassword2" required="required">
    <br>
    <br><br>
    <input type="submit" value="Submit">
  </fieldset>
</form>

<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>
