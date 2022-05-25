<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Homepage</title>

<link rel="stylesheet" href ="userHomePageStyle.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>

<div class="imageLogo">
	<img src="Images/Logo-wtext.png" alt= "Logo with Text">
</div>

<%
	try {
		String url = "jdbc:mysql://localhost:3306/USTracer";
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, "root", "112100");
		
		statement = conn.createStatement();
		
		String query = "SELECT Fname, Mname, Lname, ID FROM Accountstbl WHERE Email = '" + request.getAttribute("email") + "'";
		
		rs = statement.executeQuery(query);
		while (rs.next()){
		%>
		
		<div class ="userCred">
			<p class ="fullName"><%= rs.getString(1) %> <%= rs.getString(2) %> <%= rs.getString(3) %>
			<p class ="ID"><%= rs.getString(4) %>
		</div>
		
		<% } %>
		<%
		
		rs.close();
		statement.close();
		conn.close();
		
		String st = request.getParameter(rs.getString(1));
		getServletContext().getRequestDispatcher("/ThomasianTracker.jsp").forward(request, response);
		
	} catch (Exception e){
		e.printStackTrace();
	}

%>

<div class ="optionContainer">

	<br>

	<div class = buttons>
			<button type ="button" onclick = "location.href='ThomasianTracker.jsp'; " value = "thomTracker" class="btn btn-warning btn-lg">Thomasian Tracker</button>
			<br>
			<br>
			
			<button type ="button" onclick = "location.href='HealthStatus.jsp'; " value = "upHealth" class="btn btn-warning btn-lg">Update Health Status</button>
			<br>
			<br>
			
			<button type ="button" onclick = "location.href='CovaxProfile.jsp'; " value = "covaxProfile" class="btn btn-danger btn-lg">CoVax Registration</button>
			
			<br>
		
	</div>
	
	<br>
	<br>
	
	<p><a href = "UpdateInfo.jsp" id ="updateInfo" >Update User Information</a>
	<p><a href = "LogoutServlet" id ="logout" >Logout</a>
	
</div>


</body>
</html>