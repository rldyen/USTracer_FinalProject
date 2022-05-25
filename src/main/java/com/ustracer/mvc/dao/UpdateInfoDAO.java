package com.ustracer.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.UpdateInfoBean;

public class UpdateInfoDAO {
	
	public String updateUser(UpdateInfoBean updateBean) {
		String firstName = updateBean.getFirstName();
		String middleName = updateBean.getMiddleName();
		String lastName = updateBean.getLastName();
		String faculty = updateBean.getFaculty();
		String email = updateBean.getEmail();
		String ID = updateBean.getID();
		
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		
		try {
			conn = DBConnection.createConnection();
			//NOTE:
            // Nilagyan ko ng ID para icompare kung alin yung iuupdate sa database, pag di gumana mali ata code ko dito
			String query = "UPDATE Accountstbl SET ID = ?, Fname = ?, Mname = ?, Lname= ?, Faculty= ?, Email = ? WHERE ID = '" + ID + "'"; //update the details of the user from Accountstbl
			
			preparedStatement = conn.prepareStatement(query);	//PreparedStatement for inserting data
			preparedStatement.setString(1, ID);
            preparedStatement.setString(2, firstName);
			preparedStatement.setString(3, middleName);
			preparedStatement.setString(4, lastName);
			preparedStatement.setString(5, faculty);
			preparedStatement.setString(6, email);
			
			int i = preparedStatement.executeUpdate();
			
			if (i!= 0){
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
