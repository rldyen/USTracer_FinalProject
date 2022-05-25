<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USTracer Homepage</title>

<link rel="stylesheet" href = "homepageStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>


<div class="homepageContainer">

	<div class="imageLogo">
		<img src="Images/Logo-wtext.png" alt= "Logo with Text">
	</div>
	
	<div class ="buttonText">
		<table>
			<tr>
			<td class="tableTD">
			<button type ="button" onclick = "location.href='Login.jsp'; " class="btn btn-lg">Sign In</button>
			</td>
			
			<td class ="tableTD"> 
			<button type ="button" onclick = "location.href='Register.jsp'; " class="btn btn-primary btn-lg">Sign Up</button>
			</td>
			</tr>
		</table>
	</div>
	
	<p class="unifyingText">Unifying and helping the community as one.</p>

</div>

<div class ="rightHalf">


</div>

</body>
</html>