<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>

<link rel="stylesheet" href = "registerStyle.css">
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<script>
	
	function validateForm(){
		var ID = document.forms["myForm"]["ID"].value;
		var firstname = document.forms["myForm"]["firstname"].value;
		var lastname = document.forms["myForm"]["lastname"].value;
		var faculty = document.forms["myForm"]["faculty"].value;
		var email = document.forms["myForm"]["email"].value;
		var password = document.forms["myForm"]["password"].value;
		var confirmpassword = document.forms["myForm"]["confirmpassword"].value;
	    
		if (ID == null || ID== ""){
	    	alert("ID cannot be blank");
			return false;
	    }
		
	    if (firstname == null || firstname == ""){
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
		else if (password.length < 8 && password.length != null && password.length > 0){
			alert("Password should be more than 8 characters");
			return false;
		}
	    
		else if (password.length > 16){
			alert("Password should not be more than 16 characters");
			return false;
		}
	    
		else if (password.length == 0 || password == ""){
			alert("Password should not be blank");
			return false;
		}
	    
		else if (password!=confirmpassword){
			alert("Password does not match. Please Re-enter password.");
			return false;
		}
	}

</script>

</head>
<body>

<div class = "containerForm">

<h3>Sign Up</h3>
<h4>Enter your personal information to create your account.</h4>

<br>

	<form name="myForm" action="RegisterServlet" onsubmit="return validateForm()" method="POST">
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
		<td>Password </td>
		<td><input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" /></td>
		</tr>
		
		<tr>
		<td>
		<div class="passwordReq">
  			<p>Password must contain the following:</p>
  			<p>A <b>lowercase</b> letter</p>
  			<p>A <b>capital (uppercase)</b> letter</p>
  			<p>A <b>number</b></p>
  			<p>Minimum <b>8 characters</b>, maximum <b>16 characters</b></p>
		</div>
		</td>
		</tr>
		
		<tr>
		
		<td>Confirm Password</td>
		<td><input type="password" name="confirmpassword" /></td>
		</tr>
		
		
		<tr>
		<td class="errorMSGTD"><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage") %></td>
		</tr>
		
		
		<tr>
		<td></td>
		
		<td>
		
		<br>
		
		<input type="checkbox" name="checkbox" value="Check" required /> I agree to the <a href = "#" data-toggle="modal" data-target="#bannerformmodal">Data Privacy Consent</a>
		
		<br>
		
		<br>
		
		<button type ="button" onclick = "location.href='Homepage.jsp'; " value = "Cancel" class="btn btn-danger">Cancel</button>
		<button type ="reset" value ="Reset" class="btn btn-warning">Reset</button>
		<button type="submit" value ="Register" class="btn btn-success" >Register</button>
	

		</td>
		</tr>
		
		</table>
		
		</form>
		
		<div class="modal fade bannerformmodal" tabindex="-1" role="dialog" aria-labelledby="bannerformmodal" aria-hidden="true" id="bannerformmodal">
		<div class="modal-dialog modal-sm">
        	<div class="modal-content">
          		<div class="modal-content">
                	<div class="modal-header">
                	
                	 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                	 
                	 <h4 class="modal-title" id="myModalLabel">Data Privacy Consent</h4>
	
	</div>
	
	<div class="modal-body">
	
	<h4>Data Privacy Statement</h4>
	
	<p align="justify">The USTracer Team recognize their responsibilities under the Republic Act No. 10173 (Act), also known as the Data Privacy Act of 2012, with respect to the data they collect, record, organize, update, use, consolidate or destruct from people who use the web application. The personal data obtained from this web application is entered and stored within the Team's authorized information and communications system and will only be accessed by the USTracer's authorize personnel. UST Tracer Team ensures the protection of the people's personal data.
	
	<p align="justify"> Furthermore, the information collected and stored in the web application shall be used for the following purposes:

	<p align="justify">a.) Keep track of the health status of the Thomasian community amidst the COVID-19 pandemic.

	<p align="justify">b.) Alert other people regarding the health status of other people within the Thomasian community.

	<p align="justify">c.) Register the information collected to government institutions to be used for the COVID-19 Vaccine Profiles.
	
	<hr size="4" width="100%" color="black">
	
	<h4>User Consent</h4>
	
	<p align="justify">I have read the USTracer's Data Privacy Statement and express my consent for the USTracer Team to collect, record, organize, update, retrieve, consult, use, consolidate, block, erase, or destruct my personal data as part of my information.
	
	<p align="justify">I hereby affirm my right to be informed, object to processing, access and rectify, suspend or withdraw my personal data, and be indemnified in case of damages pursuant to the provisions of the Republic Act No. 10173 of the Philippines, Data Privacy Act of 2012 and its corresponding Implementing Rules and Regulations.
	
		</div>
		
		</div>
		</div>
		</div>
		</div>
		
		
</div>

</body>
</html>

<%-- TAPOS NAAA --%>