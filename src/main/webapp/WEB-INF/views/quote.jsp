<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Quote</title>

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

	<h1>Quote Details</h1>
	<table border = "1">
		<tr>
			<th>Quote Id</th>
			<td style="min-width:100px">${validQuote.quoteId}</td>
		</tr>
		<tr>
			<th>Monthly Premium</th>
			<td style="min-width:100px">${validQuote.premium}</td>
		</tr>
		<tr>	
			<th>Dwelling Coverage</th>
			<td style="min-width:100px">${validQuote.dwelling_coverage}</td>
		</tr>
		<tr>
			<th>Detached Structures</th>
			<td style="min-width:100px">${validQuote.detached_structures}</td>
		</tr>
		<tr>
			<th>Personal Property</th>
			<td style="min-width:100px">${validQuote.personal_property}</td>
		</tr>
		<tr>
			<th>Additional Living Expense</th>
			<td style="min-width:100px">${validQuote.living_expense}</td>
		</tr>
		<tr>
			<th>Medical Expense</th>
			<td style="min-width:100px">${validQuote.medical_expense}</td>
		</tr>
		<tr>
			<th>Deductible</th>
			<td style="min-width:100px">${validQuote.deductible}</td>
		</tr>
	</table>
	<span style="color:red">${errorMesssageValid}</span><br/>
	</div>
	</div>
</body>
</html>