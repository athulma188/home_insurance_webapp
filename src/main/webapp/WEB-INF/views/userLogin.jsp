<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>	
        <%@ page isELIgnored = "false" %>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body style="background-color:powderblue;">
	<div align="center">
		<h1>Home Insurance System</h1>
		<h3><a href="home">Back to Home</a><br/><br/></h3>
		<br/>
		<br/>
		<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
		<h2>User Login</h2>
		<sform:form method = "post" action ="NewUserLogin" modelAttribute="userCredCommand">
			<table>
				<tr>
					<td><sform:label path = "username">User Name</sform:label></td>
					<td><sform:input path = "username"/></td>
					<td><sform:errors path = "username" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "password">Password</sform:label></td>
					<td><sform:input type = "password" path = "password"/></td>
					<td><sform:errors path = "password" style="color:red"/></td>
				</tr>
				<tr>
					<td></td>
					<td style="text-align:center"><input type="submit" value = "Login"/></td>
				</tr>
			</table>
		</sform:form>
		<span style="color:red">${errorMessage}</span><br/><br/>
		<h3><a href="userRegistration">New User Registration</a><br/><br/></h3>
		</div>
		
	</div>
</body>
</html>