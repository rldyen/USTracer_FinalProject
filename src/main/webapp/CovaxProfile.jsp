<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Covid Vaccine Profile</title>

<link rel="stylesheet" href = "CovaxProfile.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>

	function validateForm(){
        var CovaxID = document.forms["myForm"]["CovaxID"].value; //Di pako sure dito pachange nalang,,,, tayo kase dapat magbibigay nung covaxID
		var ID = document.forms["myForm"]["ID"].value;
		var firstnamevax = document.forms["myForm"]["FNameVAX"].value;
		var lastnamevax = document.forms["myForm"]["LNameVAX"].value;
        var dateofbirth = document.forms["myForm"]["date_of_birth"].value;
		var vaxsite = document.forms["myForm"]["vax_site"].value;
		var allergies = document.forms["myForm"]["allergies"].value;
		var vaxbrand = document.forms["myForm"]["vax_brand"].value;
		var emailvax = document.forms["myForm"]["emailvax"].value;
	    
        if (CovaxID == null || CovaxID== ""){
	    	alert("covaxID cannot be blank");
			return false;
	    }
		if (ID == null || ID== ""){
	    	alert("ID cannot be blank");
			return false;
	    }
		
	    if (firstnamevax == null || firstnamevax == ""){
	    	alert("First Name cannot be blank");
			return false;
	    }
		else if (lastnamevax == null || lastnamevax == ""){
			alert("Last Name cannot be blank");
			return false;
		}
		else if (dateofbirth == null || dateofbirth == ""){
			alert("Date of Birth cannot be blank");
			return false;
		}
		else if (vaxsite == null || vaxsite == ""){
			alert("Vaccination site cannot be blank");
			return false;
		}
        else if (allergies == null || allergies == ""){
			alert("Allergies cannot be blank (TYPE NONE IF YOU HAVE NO ALLERGIES)");
			return false;
		}
        else if (vaxbrand == null || vaxbrand == ""){
			alert("Vaccine Brand cannot be blank");
			return false;
		}
	}

</script>

</head>
<body>

<div class = "containerForm">

<h3>Covid Vaccine Profile</h3>
<h4>Enter your personal information to create a Covid-19 Vaccine Profile.</h4>

<br>

	<form name="myForm" action="CovaxProfileServlet" onsubmit="return validateForm()" method="POST">
		<table>
		
		<tr>
		<td>Covid Vaccine ID </td>
		<td><input type="text" name="CovaxID" /></td>
		</tr>
		
		<tr>
		<td>Faculty ID/Student ID </td>
		<td><input type="text" name="ID" /></td>
		</tr>
		
		<tr>
		<td>First Name </td>
		<td><input type="text" name="FNameVAX" /></td>
		</tr>
		
		<tr>
		<td>Middle Name </td>
		<td><input type="text" name="MNameVAX" /></td>
		</tr>
		
		<tr>
		<td>Last Name </td>
		<td><input type="text" name="LNameVAX" /></td>
		</tr>
		
		<tr>
    	<td>Enter your birthday:</td>
    	<td><input type="date" name="date_of_birth" required pattern="\d{4}-\d{2}-\d{2}"></td>
    	</tr>

		<tr> <!--Change type dun sa ano yung pede pumili-->
		<td>Vaccination Site </td>
		<td><select name="vax_site" id="vax_site" required>
            <option value="Albertus Magnus Building">Albertus Magnus Building </option>
            <option value="Alfredo M. Velayo Building">Alfredo M. Velayo Building </option>
            <option value="Beato Angelico Building">Beato Angelico Building </option>
            <option value="Benavides Building">Benavides Building </option>
            <option value="Blessed Pier Giorgio Frassati Building">Blessed Pier Giorgio Frassati Building </option>
            <option value="Buenaventura Garcia Paredes, O.P. Building">Buenaventura Garcia Paredes, O.P. Building </option>
            <option value="Main Building">Main Building </option>
            <option value="Roque Ruaño Building">Roque Ruaño Building </option>
            <option value="St. Martin de Porres Building">St. Martin de Porres Building </option>
            <option value="St. Raymund de Peñafort Building"> St. Raymund de Peñafort Building </option>
            <option value="UST Tan Yan Kee Student Center">UST Tan Yan Kee Student Center </option>
            <option value="Quadricentennial Pavilion"> Quadricentennial Pavilion </option>
            <option value="UST Hospital"> UST Hospital </option>
            <option value="UST Health Service">UST Health Service </option>
        </select>
		</tr>
	
		<tr>
		<td>Allergies: </td>
		<td><input type="text" name="allergies" /></td>
		</tr>
		
        <tr>
		<td>Vaccine Brand </td><!-- Same sa vaccination site-->
		<td><select name="vax_brand" id="vax_brand" required>
			<option value="AstraZeneca">AstraZeneca</option>
			<option value="Moderna">Moderna</option>
			<option value="Pfizer">Pfizer</option>
			<option value="Sinovac">Sinovac</option>
		</select>

        <tr>
		<td>Email </td>
		<td><input type="email" name="emailvax" /></td>
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
		
		<button type ="button" onclick = "history.go(-1)" value = "Cancel" class="btn btn-danger">Cancel</button>
		<button type ="reset" value ="Reset" class="btn btn-warning">Reset</button>
		<button type="submit" onclick = "history.go(-1)" value ="Register" class="btn btn-success">Register</button>
	

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
