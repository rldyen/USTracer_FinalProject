<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thomasian Tracker</title>

<link rel="stylesheet" href ="ThomasianTracker.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>

<%
	try {
		String url = "jdbc:mysql://localhost:3306/USTracer";
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, "root", "112100");
		
		statement = conn.createStatement();
		
		String query = "SELECT Accountstbl.Fname, Accountstbl.Mname, Accountstbl.Lname, HealthStatusTbl.status, Accountstbl.Faculty FROM Accountstbl INNER JOIN HealthStatustbl ON Accountstbl.ID = HealthStatusTbl.ID";
		
		rs = statement.executeQuery(query);
		
		%>

<div class = "container">
		<table class ="table">
		<thead>
			<tr>
			<th scope ="col">Name</th>
			<th scope ="col">Health Status</th>
			<th scope ="col">Faculty</th>
			</tr>
		</thead>
		
		<%
		while (rs.next()){
		%>
		
		<tbody>
		
			<tr>
				<td> <%= rs.getString(1) %> <%= rs.getString(2) %> <%= rs.getString(3) %></td>
				<td> <%= rs.getString(4) %>
				<td> <%= rs.getString(5) %>
			</tr>
			
		</tbody>
		
		<% } %>
		<%
		
		rs.close();
		statement.close();
		conn.close();
		
		
	} catch (Exception e){
		e.printStackTrace();
	}

%>

	</table>

	<p><button onclick="history.go(-1)" >Go Back</button>
	
	</div>

</body>
</html>