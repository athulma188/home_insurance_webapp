<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body style="background-color:powderblue;">
	<div align="center">
		<h1>Home Insurance System</h1>
		<h3><a href="home">Back to Home</a><br/><br/></h3>
		<br/>
		<br/>
		<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
		<h2>Admin Login</h2>
		<sform:form method = "post" action ="NewAdminLogin" modelAttribute="adminCredCommand">
			<table>
				<tr>
					<td><sform:label path = "adminname">Admin Name</sform:label></td>
					<td><sform:input path = "adminname"/></td>
					<td><sform:errors path = "adminname" style="color:red"/></td>
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
		<span style="color:red">${errorMessageAdmin}</span><br/><br/>
		</div>
		
	</div>
	
</body>
</html>