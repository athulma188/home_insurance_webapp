<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Buy Policy</title>

</head>
<body style="background-color:powderblue;">
	<div align="center">
	<h1>Home Insurance System</h1>
	<table>
	<tr>
	<td><h3><a href="getStarted">Back</a></h3></td>
	<td><h3><a href="logout">Logout</a></h3></td>
	</tr>
	</table>
	
	<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
	
		<h2>Buy Policy Details</h2>
		<sform:form method = "post" action ="addPolicy" modelAttribute="userPolicyCommand">
			<table>
				<tr>
					<td><sform:label path = "effectiveDate">Policy Effective Date(in dd/mm/yyyy)</sform:label></td>
					<td><sform:input path = "effectiveDate"/></td>
					<td><sform:errors path = "effectiveDate" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "endDate">Policy End Date(in dd/mm/yyyy)</sform:label></td>
					<td><sform:input path = "endDate"/></td>
					<td><sform:errors path = "endDate" style="color:red"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit"/></td>
				</tr>
			</table>
			<span style="color:red">${errorFilledStatPolicy}</span>
			<span style="color:green">${filledStatPolicy}</span>
		</sform:form>
	</div>
	</div>
</body>
</html>