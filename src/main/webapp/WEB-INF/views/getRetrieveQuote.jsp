<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Quote</title>
<style>
	table
	{
		width:50%;
	}
	td
	{
		height:40px;
		text-align:center;
  		vertical-align:middle;
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
	
	<h1>Retrieve Quote Details</h1>
	<table border = "1">
		<tr>
			<td><b>Quote Id</b></td>
			<td>${validQuote.quoteId}</td>
		</tr>
		<tr>
			<td><b>Residence Type</b></td>
			<td>${userLoc.residenceType}</td>
		</tr>
		<tr>
			<td><b>Address line 1</b></td>
			<td>${userLoc.address}</td>
		</tr>
		<tr>
			<td><b>City</b></td>
			<td>${userLoc.city}</td>
		</tr>
		<tr>
			<td><b>State</b></td>
			<td>${userLoc.state}</td>
		</tr>
		<tr>
			<td><b>Zip</b></td>
			<td>${userLoc.zip}</td>
		</tr>
		<tr>
			<td><b>Residence User</b></td>
			<td>${userLoc.residenceUse}</td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>