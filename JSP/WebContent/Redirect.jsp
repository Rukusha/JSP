<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redirect page</title>
</head>
<body>
<h1>Do you want to see all customers?</h1>
	<form style="width: 215px; "method="post" action="customerTable.jsp">
	<input type="submit" style="color: Green; width: 50px"; name=" Yes="" value="Yes">
	</form>
	
	<form style="width: 216px; " method="post" action="index.jsp">
	<input type="submit" style="color: Red; width: 50px" name=" No=" value="No">
	</form>


</body>
</html>