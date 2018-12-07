<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Table</title>
</head>
<body>
	<form method="post" action="newCustomer.jsp">
		<input type="submit" value="New Customer">
	</form>
	<table style="border: solid 1px grey;">
		<tr>
			<th>ID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Time Stamp</th>
		</tr>
<%

	    String connectionURL = "jdbc:mysql://icemain.hopto.org:9306/training?";
	    Connection connection = null; 
	    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	    connection = DriverManager.getConnection(connectionURL, "sakilauser", "icetraining");
	    
		Statement state = connection.createStatement();

	    ResultSet entry = state.executeQuery("SELECT customer_id, first_name, last_name, email, timestamp FROM michael_customer");
		while (entry.next()) {%>
     	<tr>
	        <td><%=entry.getString("customer_id")%></td>
	        <td><%=entry.getString("first_name")%></td>
	        <td><%=entry.getString("last_name")%></td>
	        <td><%=entry.getString("email")%></td>
	        <td><%=entry.getString("timestamp")%></td>
	    </tr>
<%}
%>

	</table>
</body>
</html>