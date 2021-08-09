<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>New User Registration</title>

</head>
<body style="background-color:powderblue;">
	<div align="center">
		<h1>Home Insurance System</h1>
		<table>
			<tr>
				<td ><h3><a href="userLogin">Back</a></h3></td>
				<td style="width: 15px;"> </td>
				<td><h3><a href="home">Home</a></h3></td>
			</tr>
		</table>
		<br/>
		<br/>
		<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
		<h2>Register user</h2>
		<sform:form method = "post" action ="registerUser" modelAttribute="userCommand">
			<table>
				<tr>
					<td><sform:label path = "username">User Name</sform:label></td>
					<td><sform:input path = "username"/></td>
					<td><sform:errors path = "username" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "password">Password</sform:label></td>
					<td><sform:input type = "password"  path = "password"/></td>
					<td><sform:errors path = "password" style="color:red"/></td>
				</tr>
				<tr>
					<td></td>
					<td style="text-align:center"><input type="submit" value="Register"/></td>
				</tr>
			</table>
		</sform:form>
		<span style="color:red">${errorMessageRegister}</span><br/>
		<span style="color:green">${successMessageRegister}</span><br/>
		</div>
	</div>
</body>
</html>