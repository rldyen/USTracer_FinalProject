package com.ustracer.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection createConnection() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/USTracer";		//MySQL database
		String username = "root";	//MySQL username
		String password = "112100";		//MySQL password
		
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");		//Preparation of MySQL Driver
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			conn = DriverManager.getConnection(url,username,password);	//Attempt to establish connection
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
}
