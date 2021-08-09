<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body style="background-color:powderblue;">
	<div align="center">
		<h1>Home Insurance System</h1>
		<h3><a href="home">Back to Home</a><br/><br/></h3>
		<br/>
		<br/>
		<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
		<h2>View User Policies</h2>
		<sform:form method = "post" action ="adminHome" modelAttribute="adminSelectCommand">
			<table >
				<tr>
					<td><h3>Select User</h3></td>
					<td>
					<sform:select path="userId">
					<option value="none" selected disabled hidden>
          			Select a User
      				</option>
    				<sform:options items = "${userListMap}"></sform:options>
 					</sform:select>
 					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value = "View Details"/></td>
				</tr>
			</table>
		</sform:form>
		</div>
	</div>
</body>
</html>