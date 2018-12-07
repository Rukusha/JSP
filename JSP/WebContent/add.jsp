<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<%@ page import= "java.util.Date" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

			String connectionURL = "jdbc:mysql://icemain.hopto.org:9306/training?";
			Connection connection = null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "sakilauser", "icetraining");
			
			out.println("Connected to database.");
			
			Statement state = connection.createStatement();

				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String emailAdd = request.getParameter("emailAdd");
				Timestamp time = new Timestamp(System.currentTimeMillis());
				
				String select = "SELECT customer_id from michael_customer ORDER BY customer_id desc limit 1";
			    ResultSet entry = state.executeQuery(select);
				entry.next();
			    int id = entry.getInt("customer_id") +1;
						
				String InsertQuery = "INSERT INTO michael_customer " +
						"(customer_id, first_name, last_name, email, timestamp) " + 
						"VALUES ('" + id + "','" + firstName + "','" + lastName + "','" + emailAdd + "','" + time + "') ";
				
				state.executeUpdate(InsertQuery);
				
				out.println("Record Inserted into database successfully.");
				

			

	%>
</body>
</html>