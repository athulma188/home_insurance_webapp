<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>User Location Details</title>
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

		<h2>Save User Location Details</h2>
		<sform:form method = "post" action ="addUserLocation" modelAttribute="userLocationCommand">
			<table >
				<tr>
					<td><sform:label path = "residenceType" >Residence Type</sform:label></td>
					<td><sform:select path = "residenceType">
						<option value = "Single_Family_Home">Single-Family Home</option>
						<option value = "Condo">Condo</option>
						<option value = "Townhouse">Townhouse</option>
						<option value = "Row_house">Row house</option>
						<option value = "Duplex">Duplex</option>
						<option value = "Apartment">Apartment</option>
					</sform:select></td>
					<td><sform:errors path = "residenceType" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "address">Address line 1</sform:label></td>
					<td><sform:input path = "address" /></td>
					<td><sform:errors path = "address" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "city">City</sform:label></td>
					<td><sform:input path = "city" /></td>
					<td><sform:errors path = "city" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "state">State</sform:label></td>
					<td><sform:input path = "state" /></td>
					<td><sform:errors path = "state" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "zip">Zip</sform:label></td>
					<td><sform:input path = "zip" /></td>
					<td><sform:errors path = "zip" style="color:red"/></td>
				</tr>
				<tr>
					<td><sform:label path = "residenceUse">Residence Use</sform:label></td>
					<td><sform:select path = "residenceUse">
						<option value = "Primary">Primary</option>
						<option value = "Secondary">Secondary</option>
						<option value = "Rental_Property">Rental Property</option>
					</sform:select></td>
					<td><sform:errors path = "residenceUse" style="color:red"/></td>
				</tr>
				<tr>
				<td></td>
					<td><input type="submit" value="Submit"/></td>
				</tr>
			</table>
			<span style="color:green">${filledStat}</span>
		</sform:form>
	</div>
	</div>
</body>
</html>