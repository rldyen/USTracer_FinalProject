package com.ustracer.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.RegisterBean;

public class RegisterDAO {
	
	public String registerUser(RegisterBean registerBean) {
		String firstName = registerBean.getFirstName();
		String middleName = registerBean.getMiddleName();
		String lastName = registerBean.getLastName();
		String ID = registerBean.getID();
		String faculty = registerBean.getFaculty();
		String email = registerBean.getEmail();
		String password = registerBean.getPassword();
		
		String status = "not yet updated";
		
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		PreparedStatement preparedStatement1 = null;
		
		try {
			conn = DBConnection.createConnection();
			String query = "INSERT INTO Accountstbl(ID, Fname, Mname, Lname, Faculty, Email, password) VALUES (?,?,?,?,?,?,?)"; //Insert the details of the user into the table Accountstbl
			String query1 ="INSERT INTO HealthStatusTbl(ID, status) VALUES (?,?)";
			
			preparedStatement = conn.prepareStatement(query);	//PreparedStatement for inserting data
			preparedStatement1 = conn.prepareStatement(query1);
			
			preparedStatement.setString(1, ID);
			preparedStatement.setString(2, firstName);
			preparedStatement.setString(3, middleName);
			preparedStatement.setString(4, lastName);
			preparedStatement.setString(5, faculty);
			preparedStatement.setString(6, email);
			preparedStatement.setString(7, password);
			
			preparedStatement1.setString(1, ID);
			preparedStatement1.setString(2, status);
			
			int i = preparedStatement.executeUpdate();
			int j = preparedStatement1.executeUpdate();
			
			if (i!= 0 || j!=0){
				return "SUCCESS";
			}
			
	
		}
		
		catch (SQLException e) {
			e.printStackTrace();
			
			if (e instanceof SQLIntegrityConstraintViolationException) {
				return "ID already exists";
			}
		}
		
		return "Something went wrong :(";
	}
}
