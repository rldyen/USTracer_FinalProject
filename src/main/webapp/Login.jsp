<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>

<link rel="stylesheet" href = "loginStyle.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>

	function validateForm(){
		var email = document.forms["myForm"]["email"].value;
		var password = document.forms["myForm"]["password"].value;
	    
		if (email == null || email == ""){
			alert("Email cannot be blank");
			return false;
		}
		
		else if (password.length == null || password == ""){
			alert("Password should not be blank");
			return false;
		}
	   
	}

</script>

</head>
<body>

<div class="imageLogo">
	<img src="Images/Logo-wtext.png" alt= "Logo with Text">
</div>
	
<div class = "containerForm">


<h3>Sign In</h3>

<br>

	<form name="myForm" action="LoginCredServlet" onsubmit="return validateForm()" method="POST">
		<table>
	
		<tr>
		<td>Email </td>
		<td><input type="email" name="email" /></td>
		</tr>
		
		<tr>
		<td>Password </td>
		<td><input type="password" name="password" /></td>
		</tr>
		
		<tr>
		<td class="errorMSGTD"><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage") %></td>
		</tr>
		
		<tr>
		<td></td>
		
		<td>
		
		<br>
		<br>
		
		<button type ="button" onclick = "location.href='Homepage.jsp'; " value = "Cancel" class="btn btn-danger">Cancel</button>
		<button type ="reset" value ="Reset" class="btn btn-warning">Reset</button>
		<button type="submit" value ="Login" class="btn btn-success" >Login</button>
	

		</td>
		</tr>
		
		</table>
		
		</form>
		
</div>

</body>
</html>
