<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Policy Terms</title>

</head>
<body style="background-color:powderblue;">
	<div align="center">
		<h1>Home Insurance System</h1>
		<table>
		<tr>
		<td><h3><a href="viewPolicy">Back</a></h3></td>
		<td><h3><a href="logout">Logout</a></h3></td>
		</tr>
		</table>
	
		<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
		
		<h2>New Policy Terms</h2>
		<form action ="editTerms" method= "post">
			<input type="text" name = "newterms" size="50"/>
			<input type="submit" value="OK"/>
		</form>
		<br/>
		<br/>
	</div>
	</div>
</body>
</html>