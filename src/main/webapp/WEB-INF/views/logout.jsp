<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You</title>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
<%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%>
</head>
<body style="background-color:powderblue;" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<div align="center">
		<h1>Home Insurance System</h1>
		<h2>You have been logged out</h2>
		<br/>
		<br/>
		<h3><a href="home">Go Home</a></h3>
	</div>
	
</body>
</html>