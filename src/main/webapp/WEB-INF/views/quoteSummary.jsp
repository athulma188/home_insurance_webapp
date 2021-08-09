<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Quote Summary</title>
<style>
.thick {
  font-weight: bold;
}
</style>
</head>
<body style="background-color:powderblue;">
	<div align="center">
	<h1>Home Insurance System</h1>
	<table>
	<tr>
	<td><h3><a href="retrieveQuote">Back</a></h3></td>
	<td><h3><a href="logout">Logout</a></h3></td>
	</tr>
	</table>
	
	<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
	
	<h1>Quote Summary</h1>
	<br/>
	<br/>
	<h2>Location Details</h2>
	<table border = "1">
		<tr>
			<td class="thick">Residence Type</td>
			<td>${userLoc.residenceType}</td>
		</tr>
		<tr>
			<td class="thick">Address line 1</td>
			<td>${userLoc.address}</td>
		</tr>
		<tr>
			<td class="thick">City</td>
			<td>${userLoc.city}</td>
		</tr>
		<tr>
			<td class="thick">State</td>
			<td>${userLoc.state}</td>
		</tr>
		<tr>
			<td class="thick">Zip</td>
			<td>${userLoc.zip}</td>
		</tr>
		<tr>
			<td class="thick">Residence User</td>
			<td>${userLoc.residenceUse}</td>
		</tr>
	</table>
	<br/>
	<br/>
	<h2>Home Owner Details</h2>
	<table border = "1">
		<tr>
			<td class="thick">First Name</td>
			<td>${homeOwner.firstNmae}</td>
		</tr>
		<tr>
			<td class="thick">Last Name</td>
			<td>${homeOwner.lastName}</td>
		</tr>
		<tr>
			<td class="thick">Date of Birth</td>
			<td>${homeOwner.dob}</td>
		</tr>
		<tr>
			<td class="thick">Are you retired?</td>
			<td>${homeOwner.retired}</td>
		</tr>
		<tr>
			<td class="thick">Social Security Number</td>
			<td>${homeOwner.ssNumber}</td>
		</tr>
		<tr>
			<td class="thick">Email Address</td>
			<td>${homeOwner.email}</td>
		</tr>
	</table>
	<br/>
	<br/>
	<h2>Property Details</h2>
	<table border = "1">
		<tr>
			<td class="thick">What is the market value of your home?(in $)</td>
			<td>${userProp.marketValue}</td>
		</tr>
		<tr>
			<td class="thick">What year was your home originally built?</td>
			<td>${userProp.builtYear}</td>
		</tr>
		<tr>
			<td class="thick">Square footage(in sq. foot)</td>
			<td>${userProp.sqFoot}</td>
		</tr>
		<tr>
			<td class="thick">Dwelling style</td>
			<td>${userProp.dwellingStyle}</td>
		</tr>
		<tr>
			<td class="thick">Roof material</td>
			<td>${userProp.roofMaterial}</td>
		</tr>
		<tr>
			<td class="thick">Type of Garage</td>
			<td>${userProp.garageType}</td>
		</tr>
		<tr>
			<td class="thick">Number of full baths</td>
			<td>${userProp.fullBath}</td>
		</tr>
		<tr>
			<td class="thick">Number half baths</td>
			<td>${userProp.halfBath}</td>
		</tr>
		<tr>
			<td class="thick">Does your home have a swimming pool?</td>
			<td>${userProp.swimmingPool}</td>
		</tr>
	</table>
	<br/>
	<br/>
	<h2>Coverage Details</h2>
	<table border = "1">
		<tr>
			<td class="thick">Quote Id</td>
			<td>${validQuote.quoteId}</td>
		</tr>
		<tr>
			<td class="thick">Monthly Premium</td>
			<td>${validQuote.premium}</td>
		</tr>
		<tr>
			<td class="thick">Dwelling Coverage</td>
			<td>${validQuote.dwelling_coverage}</td>
		</tr>
		<tr>
			<td class="thick">Detached Structures</td>
			<td>${validQuote.detached_structures}</td>
		</tr>
		<tr>
			<td class="thick">Personal Property</td>
			<td>${validQuote.personal_property}</td>
		</tr>
		<tr>
			<td class="thick">Additional Living Expense</td>
			<td>${validQuote.living_expense}</td>
		</tr>
		<tr>
			<td class="thick">Medical Expense</td>
			<td>${validQuote.medical_expense}</td>
		</tr>
		<tr>
			<td class="thick">Deductible</td>
			<td>${validQuote.deductible}</td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>