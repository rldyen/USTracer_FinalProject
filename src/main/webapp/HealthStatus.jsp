<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<title>Health Status</title>

<link rel="stylesheet" href = "HealthStatusStyle.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<script>

	function validateForm(){
		var ID = document.forms["myForm"]["ID"].value;
	    
		if (ID == null || ID== ""){
	    	alert("ID cannot be blank");
			return false;
	    }
		
</script>

<meta charset="ISO-8859-1">
<title>Health Status</title>


</head>
<body>
    
    <div class="containerform">
    
    	<div class ="date">
    		<%= (new java.util.Date())%>
    	</div>
   
        <br>
        
        <div class ="form-check form-switch">
        
   			<form name="myForm" action="HealthStatusServlet" onsubmit="return validateForm()" method="POST">
            
            <table>
				<tr>
				<td>Faculty ID/Student ID </td>
				<td><input type="text" name="ID" required /></td>
				</tr>
			</table>
			
			<br>
			
            <h1>Health Status</h1>
            <h2>Are you Experiencing any of the following?</h2>  
            
            <br>
            <input class="form-check-input" type="checkbox" name="fever" value="fever">
            <label class="checkbox" for="fever" > Fever </label><br>
            
            <input class="form-check-input" type="checkbox" name="drycough" value="drycough">
            <label class="form-check-label" for="drycough"> Dry Cough </label><br>
            
            <input class="form-check-input" type="checkbox" name="sorethroat" value="sorethroat">
            <label class="form-check-label" for="sorethroat"> Sore Throat </label><br>
            
            <input class="form-check-input" type="checkbox" name="shortness" value="shortness">
            <label class="form-check-label" for="shortness"> Shortness of Breath </label><br>
            
            <input class="form-check-input" type="checkbox" name="loss" value="loss">
            <label class="form-check-label" for="loss"> Loss of Smell and Taste </label><br>
            
            <input class="form-check-input" type="checkbox" name="none" value="none">
            <label class="form-check-label" for="none"> None of the above </label><br>

            <p>If no symptoms persist choose 'Healthy'</p>
            <p>If 1 to 2 symptoms persist choose 'Mild Symptoms'</p>
            <p>If 3 or more symptoms persist choose 'Severe Symptoms'</p>
                        
            <select name="status" id="status" required>
                <option value="Healthy">Healthy</option>
                <option value="Mild Symptoms">Mild Symptoms</option>
                <option value="Severe Symptoms">Severe Symptoms</option>
                <option value="Hidden">Hidden</option>
            </select>

			<table class ="buttonTables">
			
				<tr>
				<td>
	            	<button onclick="history.go(-1)" class="btn btn-danger">Cancel</button>
	            </td>
	            
					<td>
		            	<button type="submit" value="update" class="btn btn-success">Update</button>
		            </td>
	            </tr>
	            
            </table>
            
            </form>
            
            </div>

    </div>
</body>
</html>