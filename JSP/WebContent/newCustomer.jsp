<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: 359px;">
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
</head>
<body>
	<h1>Add new customer</h1>

	<h2>Please fill out the following fields to add a new customer.</h2>

	<form method="get" action="add.jsp? ">

		First Name<input name="firstName"> Last name <input
			name="lastName"> Email <input name="emailAdd"><br>
			<input type="submit" value="Add">
		
	</form>

	

</body>
</html>