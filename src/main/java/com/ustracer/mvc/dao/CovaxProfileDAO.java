package com.ustracer.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.CovaxProfileBean;

public class CovaxProfileDAO {

    public String CovaxProf (CovaxProfileBean covaxprofilebean) {
        String CovaxID = covaxprofilebean.getcovaxID();
        String ID = covaxprofilebean.getID();
        String FNameVAX = covaxprofilebean.getFirstNameVax();
        String MNameVAX= covaxprofilebean.getMiddleNameVax();
        String LNameVAX = covaxprofilebean.getLastNameVax();
        String date_of_birth = covaxprofilebean.getdateofbirth();
        String vax_site = covaxprofilebean.getvaxSite();
        String allergies = covaxprofilebean.getallergies();
        String vax_brand = covaxprofilebean.getvaxBrand();
        String EmailVAX = covaxprofilebean.getEmailVax();
         
        Connection conn = null;
		PreparedStatement preparedStatement = null;

       try {
			conn = DBConnection.createConnection();
			String query = "INSERT INTO CovaxProfTbl (CovaxID, ID, FnameVAX, MnameVAX, LnameVAX, date_of_birth, vax_site, allergies, vax_brand, EmailVAX ) VALUES (?,?,?,?,?,?,?,?,?,?)"; //Insert the details of the user into the table Accountstbl
			
			preparedStatement = conn.prepareStatement(query);	//PreparedStatement for inserting data

			preparedStatement.setString(1, CovaxID);
            preparedStatement.setString(2, ID);
			preparedStatement.setString(3, FNameVAX);
			preparedStatement.setString(4, MNameVAX);
			preparedStatement.setString(5, LNameVAX);
			preparedStatement.setString(6, date_of_birth);
			preparedStatement.setString(7, vax_site);
			preparedStatement.setString(8, allergies);
            preparedStatement.setString(9, vax_brand);
            preparedStatement.setString(10, EmailVAX);
			
			int i = preparedStatement.executeUpdate();
			
			if (i!= 0){
				return "SUCCESS";
			}
		}
		
		catch (SQLException e) {
			e.printStackTrace();
			
			if (e instanceof SQLIntegrityConstraintViolationException) {
				return "Error!";
			}
		} 

    return "Something is wrong huhuhuhu";   
    }

}