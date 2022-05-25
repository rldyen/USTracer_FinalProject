<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Information</title>

<link rel="stylesheet" href = "UpdateInfo.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>

	function validateForm(){
		var firstname = document.forms["myForm"]["firstname"].value;
		var lastname = document.forms["myForm"]["lastname"].value;
		var faculty = document.forms["myForm"]["faculty"].value;
		var email = document.forms["myForm"]["email"].value;
		var ID= document.forms["myForm"]["ID"].value;
		
		if (ID == null || ID == ""){
	    	alert("ID cannot be blank");
			return false;
	    }
		
		else if (firstname == null || firstname == ""){
	    	alert("First Name cannot be blank");
			return false;
	    }
		else if (lastname == null || lastname == ""){
			alert("Last Name cannot be blank");
			return false;
		}
		else if (faculty == null || faculty == ""){
			alert("College/Faculty/Department cannot be blank");
			return false;
		}
		else if (email == null || email == ""){
			alert("Email cannot be blank");
			return false;
		}
	    
	}

</script>

</head>
<body>

<div class = "containerForm">

<h3>Update Personal Information</h3>
<h4>Enter your new personal Information</h4>

<br>

	<form name="myForm" action="UpdateInfoServlet" onsubmit="return validateForm()" method="POST">
		<table>
		
		<tr>
		<td>Faculty ID/Student ID </td>
		<td><input type="text" name="ID" /></td>
		</tr>
		
		<tr>
		<td>First Name </td>
		<td><input type="text" name="firstname" /></td>
		</tr>
		
		<tr>
		<td>Middle Name </td>
		<td><input type="text" name="middlename" /></td>
		</tr>
		
		<tr>
		<td>Last Name </td>
		<td><input type="text" name="lastname" /></td>
		</tr>
		
		<tr>
		<td>College/Faculty/Department </td>
		<td><input type="text" name="faculty" /></td>
		</tr>
	
		<tr>
		<td>Email </td>
		<td><input type="email" name="email" /></td>
		</tr>
		
		<tr>
		<td class="errorMSGTD"><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage") %></td>
		</tr>
		
		
		<tr>
		<td></td>
		
		<td>
		
		
		<br>
		
		<button type ="button" onclick = "history.go(-1)" value = "Cancel" class="btn btn-danger">Cancel</button>
		<button type ="reset" value ="Reset" class="btn btn-warning">Reset</button>
		<button type="submit" onclick = "location.href='UserInfoServlet'"  value ="Update" class="btn btn-primary" >Update</button>
	

		</td>
		</tr>
		
		</table>
		
		</form>
		
		
		
</div>

</body>
</html>

<%-- TAPOS NAAA --%>