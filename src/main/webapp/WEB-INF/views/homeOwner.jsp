<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Home Owner Details</title>
<style type="text/css">
.error{
color:red;
}
input {
        width: 500px;
        margin: 10px;
        
    }
select {
        width: 500px;
        margin: 10px;
        
    }
</style>
</head>
<body style="background-color:powderblue;">
	<div align="center">
	<h1>Home Insurance System</h1>
	<table>
	<tr>
	<td><h3><a href="getQuote">Back</a></h3></td>
	<td><h3><a href="logout">Logout</a></h3></td>
	</tr>
	</table>
	
	<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">

		<h2>Save Home-owner Information Details</h2>
		<sform:form method = "post" action ="addHomeOwner" modelAttribute="homeOwnerCommand">
			<table>
				<tr>
					<td><sform:label path = "firstNmae"> First Name </sform:label></td>
					<td><sform:input path = "firstNmae"/></td>
					<td><sform:errors path = "firstNmae" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "lastName">Last Name</sform:label></td>
					<td><sform:input path = "lastName"/></td>
					<td><sform:errors path = "lastName" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "dob">Date of Birth (dd/mm/yyyy)</sform:label></td>
					<td><sform:input path = "dob"/></td>
					<td><sform:errors path = "dob" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "retired">Are you retired?</sform:label></td>
					<td><sform:select path = "retired">
						<option value = "No">No</option>
						<option value = "Yes">Yes</option>
					</sform:select></td>
					<td><sform:errors path = "retired" style="color:red"/></td>
					
				</tr>
				<tr>
					<td><sform:label path = "ssNumber">Social Security Number</sform:label></td>
					<td><sform:input path = "ssNumber"/></td>
					<td><sform:errors path = "ssNumber" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "email">Email Address</sform:label></td>
					<td><sform:input path = "email"/></td>
					<td><sform:errors path = "email" style="color:red"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit"/></td>
				</tr>
			</table>
			<span style="color:green">${filledStatHome}</span>
		</sform:form>
	</div>
	</div>
</body>
</html>