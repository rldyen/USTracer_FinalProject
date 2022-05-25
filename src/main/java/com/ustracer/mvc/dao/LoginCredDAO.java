package com.ustracer.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.LoginCredBean;

public class LoginCredDAO {
	
	public String authenticateUser(LoginCredBean logincredBean) {
		String email = logincredBean.getEmail();
		String password = logincredBean.getPassword();
		
		Connection conn = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		String emailDB = "";
		String passwordDB = "";
		
		try {
			conn = DBConnection.createConnection();
			statement = conn.createStatement();
			resultSet = statement.executeQuery("SELECT Email, password FROM Accountstbl");
			
			while(resultSet.next()) {
				emailDB = resultSet.getString("Email");
				passwordDB = resultSet.getString("password");
				
				if(email.equals(emailDB) && password.equals(passwordDB)) {
					return "SUCCESS";
				}
				
			}
		
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "Invalid User Credentials";
	}
}
