<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
<title>Get Started</title>
</head>

<body style="background-color:powderblue;">
	<div align="center">
	<h1>Home Insurance System</h1>
	<h3><a href="logout">Logout</a><br/><br/></h3>
	<div style="background-color:rgba(255, 255, 255, 0.5);display: inline-block;padding:20px;border-radius: 25px;">
	<h1>Menu</h1>
	<br/>
	
	<table cellpadding="15">
	<tr>
	<td ><a href="getQuote">Get Quote</a></td>
	<td ><a href="retrieveQuote">Retrieve Quote</a></td>
	<td ><a href="buyPolicy">Buy Policy</a></td>
	<td ><c:if test = "${boughtPolicy==true}"><a href="viewPolicy">View Policy</a></c:if></td>
	<td ><c:if test = "${adminId>-1}"><a href="adminHome">Select User Again</a></c:if></td>
	</tr>
	</table>
	</div>
	</div>
</body>
</html>