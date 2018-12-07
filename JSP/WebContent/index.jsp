<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Welcome page</h1>

<h3>Please add a number to each field below and then click the button.</h3>
<form action="" method="post">
		<input type="number" name="left">
		<input type="number" name="right">
		<input type="submit" value="value">
		<%
			if(request.getParameter("left") != null && request.getParameter("left") != "") {
				Integer intleft = Integer.valueOf(request.getParameter("left"));
				if (request.getParameter("right") != null && request.getParameter("right") != ""){
					Integer intright = Integer.valueOf(request.getParameter("right"));
					out.println("<br/>");
					out.println(intright * intleft);
				}
			}
		%>
	</form>

</body>
</html>